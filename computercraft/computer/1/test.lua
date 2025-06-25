local util = require "lib.util"

util.callForReload()
local tests = {
 "packager",
 "repackager",
	"frogport",
	"redstoneRequester",
	"tableCloth",
	"stockTicker",
}
for i, testName in ipairs(tests) do
	local testPath = "tests/" .. testName
	if not (fs.exists(testPath) or fs.exists(testPath .. ".lua")) then
		error("test \"" .. testName .. "\" not found in \"tests/\"")
	end

	term.setTextColour(colors.white)
	print("\n---Test #" .. string.format("%0.2i", i) .. "---")
	term.setTextColour(colors.white)
	print("Name: " .. testName)
	term.write("Result: ")
	term.setTextColour(colors.lightGray)
	print("In Progres...")

	local result, err = xpcall(function() require(testPath) end, debug.traceback)

	local cursorX, cursorY = term.getCursorPos()
	term.setCursorPos(cursorX, cursorY - 4)

	if result == true then
		term.setTextColor(colors.green)
	else
		term.setTextColour(colors.red)
	end
	print("\n---Test #" .. string.format("%0.2i", i) .. "---")
	term.setTextColour(colors.white)
	print("Name: " .. testName)
	term.write("Result:              ")
	cursorX, cursorY = term.getCursorPos()
	term.setCursorPos(cursorX - 13, cursorY)
	if result == true then
		term.setTextColor(colors.green)
		print("Success!")
		sleep(0.25)
	elseif err then
		term.setTextColour(colors.red)
		-- woe curse be upon ye, removing unneccessary parts of the stacktrace
		print(err:gsub("\n[^\n]*\n[^\n]*\n[^\n]*\n[^\n]*\n[^\n]*\n$", ""))
		--util.LogToFile(err)
		sleep(2)
	else
		error "idk how you did it, but the xpcall returned an error, without an error message."
	end
end
