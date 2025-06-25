local pretty = require("cc.pretty")
local pprint = pretty.pretty_print
local util = {}

---@param o1 any|table First object to compare
---@param o2 any|table Second object to compare
function util.tableEquals(o1, o2, culprits)
	culprits = culprits or ""
	if o1 == o2 then return true end
	local o1Type = type(o1)
	local o2Type = type(o2)
	if o1Type ~= o2Type then return false, "var 1 and var 2 aren't the same type" end
	if o2Type ~= "table" then
		return false,
			culprits:sub(1, -2) .. " = " .. o1 .. " and " .. culprits:sub(1, -2) .. " = " .. o2 .. " aren't equal"
	end

	local keySet = {}

	for key1, value1 in pairs(o1) do
		local value2 = o2[key1]
		if value2 == nil then
			return false, "missing key: " .. culprits .. key1 .. " in first table "
		end
		local result, finalCulprits = util.tableEquals(value1, value2, culprits .. key1 .. ".")
		if result == false then
			return false, finalCulprits
		end
		keySet[key1] = true
	end

	for key2, _ in pairs(o2) do
		if not keySet[key2] then return false, "missing key: " .. culprits .. key2 .. " in first table " end
	end
	return true
end

---@param data string|table if table then gets serialised to string
function util.logToFile(data, compact)
	local file = fs.open("logs/" .. os.date("%Y-%m-%d-%T") .. ".txt", "w")
	if not file then
		error("couldnt make log file")
	end
	if type(data) == "table" then
		data = textutils.serialise(data, { compact = compact }) .. ","
	end
	file.write(data)
	file.close()
end

function util.callForReload()
	redstone.setOutput("bottom", true)
	sleep(0.5)
	redstone.setOutput("bottom", false)
end

---{1,2,3} -> "1, 2, 3"
---@param args table
---@return string
function util.unpackArgsToString(args)
	local str = ""
	for _, arg in ipairs(args) do
		str = str .. arg .. ", "
	end
	return str:sub(1, str:len() - 2)
end

---Compares values against one another, or deep compares tables if both are tables
---@param a table|any
---@param b table|any
---@return boolean
function util.compareValueOrDeepTable(a, b)
	if type(a) == "table" and type(b) == "table" then
		local equals, culprit = util.tableEquals(a, b)
		return equals, culprit
	end
	return a == b
end

function util.deepCopy(orig)
	local orig_type = type(orig)
	local copy
	if orig_type == 'table' then
		copy = {}
		for orig_key, orig_value in next, orig, nil do
			copy[util.deepCopy(orig_key)] = util.deepCopy(orig_value)
		end
		setmetatable(copy, util.deepCopy(getmetatable(orig)))
	else -- number, string, boolean, etc
		copy = orig
	end
	return copy
end

--[[
---takes an `object` table and runs it's functions, then compares their results as assigned by the `targetObjectdata` data structure made of function names (keys) and return values (values). {test = 1} would run `object.test()`, and awaits the `1` return value. You can put `recursive` after a `\\` escape character to have it re-run the script inside a nested table, and run it's functions on the return value, or, you can instead use `withArgs` with `key\\withArgs = {args: {1,2}, result = true}`` to do `object.key(args[1], args[2]) == result`. When comparing tables, tables are instead deep-compared, instead of checking addresses
---@param object table
---@param targetObjectData {functionName: any, ["[functionName\\withArgs]"]: {_args: any[], result: any}, ["[functionName\\recursive]"]: `targetObjectData`}
---@param objectName string?
function util.validateObject(object, targetObjectData, objectName)
	objectName = objectName or "object"
	for functionName, targetData in pairs(targetObjectData) do
		local args = {}
		-- if there's something after an escape character, do special logic
		local mode, modesFound = functionName:gsub("^(.-)\\", "")
		functionName = functionName:match("^(.-)\\") or functionName
		if type(object[functionName]) == "function" then
			local returnData = {}
			if modesFound > 0 then
				if mode == "recursive" then
					util.validateObject(object[functionName](), targetObjectData[functionName .. "\\" .. mode],
						objectName .. "'s ." .. functionName .. "()")
					return true
				elseif mode == "withArgs" then
					args = targetData._args
					returnData._args = args
				end
			end
			if type(args) == "nil" then
				pprint(targetObjectData)
				pprint(mode)
				print(functionName)
				sleep(5)
				error("tldr all hell broke loose again.")
			end
			local status, returnVal = pcall(object[functionName], table.unpack(args))
			returnData.result = returnVal
			if not status then
				returnData._type = "error"
			end
			if type(returnData.result) == "table" and returnData.result.package then
				returnData.result["package\\recursive"] = util.makeTargetFromObject(returnData.result.package)
				returnData.result.package = nil
			end
			--local returnVal = object[functionName](table.unpack(args))
			if not util.compareValueOrDeepTable(returnData, targetData) then
				error(objectName ..
					"'s ." ..
					functionName ..
					" result \"" .. tostring(returnVal) .. "\" didn't match asserted \"" .. tostring(targetData) .. "\"")
			end
		elseif type(object) == "table" then
			util.validateObject(object[functionName], targetData)
		end
	end
end
--]]

function util.validateObject(object, targetObject, objectName)
	objectName = objectName or "object"
	local objectData = util.makeTargetFromObject(object)
	local result, culprit = util.compareValueOrDeepTable(objectData, targetObject)
	if not result then
		sleep(1)
		util.logToFile({ culprit = culprit, object = objectData, targetObject = targetObject })
		sleep(1)
		error(objectName .. "'s data didn't match assertion. check log for both objects")
	end
end

--- simple assert, ... is args for key
function util.sass(object, key, target, ...)
	local value = object[key]
	local brackets = ""
	if type(object[key]) == "function" then
		value = object[key](...)
		brackets = "()"
	end
	if type(object[key]) == "table" then
		error("Simple Assert doesn't work with tables")
	end
	if value == target then
		return true
	end
	local status, result = pcall(peripheral.getName, object)
	local objectName = "object's "
	if status then
		objectName = result .. "'s "
	end
	error(objectName .. "." .. key .. brackets .. " returned " .. tostring(value) .. " instead of " .. tostring(target))
end

--error "make utilmakeTargetFromObject"
function util.makeTargetFromObject(object, includeSetters)
	local objectData = {}
	for methodName, method in pairs(object) do
		if type(method) == "table" then
			for _, value in pairs(method) do
				if type(value) == "function" then
					methodName = methodName .. "\\recursive"
					break
				end
			end
			objectData[methodName] = util.makeTargetFromObject(method)
		elseif type(method) == "function" then
			if includeSetters or (type(methodName) ~= "string" or (
					methodName:sub(1, 1) ~= "_" and
					methodName:sub(1, 3) and methodName:sub(1, 3) ~= "set" and
					methodName:sub(1, 4) and methodName:sub(1, 4) ~= "make" and
					methodName:sub(1, 4) ~= "push" and
					methodName:sub(1, 4) ~= "pull" and
					methodName:sub(1, 5) and methodName:sub(1, 5) ~= "order" and
					methodName:sub(1, 10) and methodName:sub(1, 10) ~= "getOrderID"
				))
			then
				local args = {}
				if methodName == "getItemDetail" or methodName == "getItemLimit" then
					args = { 1 }
					methodName = methodName .. "\\withArgs"
				end
				local status, returnVal = pcall(method, table.unpack(args))
				if not status then
					objectData[methodName] = { _type = "error" }
				elseif type(returnVal) == "table" then
					for _, value in pairs(returnVal) do
						if type(value) == "function" then
							methodName = methodName .. "\\recursive"
							break
						end
					end
					objectData[methodName] = {
						result = util.makeTargetFromObject(returnVal)
					}
				else
					objectData[methodName] = {
						result = returnVal
					}
				end
				if args[1] then
					objectData[methodName]._args = args
				end
			end
		else
			objectData[methodName] = method
		end
	end
	return objectData
end

return util
