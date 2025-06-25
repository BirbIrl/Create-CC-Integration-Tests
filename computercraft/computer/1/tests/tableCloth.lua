local util = require("..lib.util")
local cloths = { peripheral.wrap("Create_TableClothShop_4"), peripheral.wrap("Create_TableClothShop_5") }
local states = {
	cloths = {
		{
			getPriceTagItem = {
				result = {
					name = "minecraft:air",
					itemGroups = {},
					tags = {},
					count = 0,
					maxCount = 64,
					displayName = "Air",
				},
			},
			isShop = {
				result = true,
			},
			getWares = {
				result = {
					{
						name = "minecraft:apple",
						itemGroups = {},
						tags = {},
						count = 1,
						maxCount = 64,
						displayName = "Apple",
					},
				},
			},
			getPriceTagCount = {
				result = 1,
			},
			getAddress = {
				result = "originalAddress",
			},
		},
		{
			getPriceTagItem = {
				_type = "error",
			},
			isShop = {
				result = false,
			},
			getWares = {
				_type = "error",
			},
			getPriceTagCount = {
				_type = "error",
			},
			getAddress = {
				_type = "error",
			},
		},
		{
			getPriceTagItem = {
				result = {
					name = "minecraft:apple",
					itemGroups = {},
					tags = {},
					count = 1,
					maxCount = 64,
					displayName = "Apple",
				},
			},
			isShop = {
				result = true,
			},
			getWares = {
				result = {
					{
						name = "minecraft:apple",
						itemGroups = {},
						tags = {},
						count = 1,
						maxCount = 64,
						displayName = "Apple",
					},
					{
						name = "minecraft:stick",
						itemGroups = {},
						tags = {
							["forge:rods/wooden"] = true,
							["forge:rods"] = true,
						},
						count = 2,
						maxCount = 64,
						displayName = "Stick",
					},
					{
						tags = {
							["minecraft:pickaxes"] = true,
							["minecraft:breaks_decorated_pots"] = true,
							["forge:tools"] = true,
							["minecraft:cluster_max_harvestables"] = true,
							["minecraft:tools"] = true,
						},
						nbt = "552887824c43124013fd24f6edcde0fb",
						displayName = "Diamond Pickaxe",
						name = "minecraft:diamond_pickaxe",
						itemGroups = {},
						maxDamage = 1561,
						count = 1,
						maxCount = 1,
						damage = 0,
					},
					{
						name = "minecraft:diamond",
						itemGroups = {},
						tags = {
							["forge:gems/diamond"] = true,
							["minecraft:trim_materials"] = true,
							["forge:gems"] = true,
							["minecraft:beacon_payment_items"] = true,
						},
						count = 1,
						maxCount = 64,
						displayName = "Diamond",
					},
					{
						name = "minecraft:redstone",
						itemGroups = {},
						tags = {
							["forge:dusts"] = true,
							["minecraft:trim_materials"] = true,
							["forge:dusts/redstone"] = true,
						},
						count = 256,
						maxCount = 64,
						displayName = "Redstone Dust",
					},
					{
						name = "minecraft:apple",
						itemGroups = {},
						tags = {},
						count = 1,
						maxCount = 64,
						displayName = "Apple",
					},
					{
						name = "minecraft:apple",
						itemGroups = {},
						tags = {},
						count = 1,
						maxCount = 64,
						displayName = "Apple",
					},
					{
						name = "minecraft:apple",
						itemGroups = {},
						tags = {},
						count = 1,
						maxCount = 64,
						displayName = "Apple",
					},
				},
			},
			getPriceTagCount = {
				result = 5,
			},
			getAddress = {
				result = "thing",
			},
		},
		{
			getPriceTagItem = {
				_type = "error",
			},
			isShop = {
				result = false,
			},
			getWares = {
				_type = "error",
			},
			getPriceTagCount = {
				_type = "error",
			},
			getAddress = {
				_type = "error",
			},
		},
	},
}

util.validateObject(cloths[1], states.cloths[1], "second table cloth")
util.validateObject(cloths[2], states.cloths[2], "third table cloth")

if pcall(function() cloths[2].setAddress("test") end) then
	error(".setAddress didn't error on a non shop tablecloth, when it should!")
end
if pcall(function() cloths[2].setPricetagItem("diamond") end) then
	error(".setPricetagItem didn't error on a non shop tablecloth, when it should!")
end
if pcall(function() cloths[2].setPricetagCount(2) end) then
	error(".setPricetagCount didn't error on a non shop tablecloth, when it should!")
end
if pcall(function() cloths[2].setWares({ item = "diamond", count = 2 }) end) then
	error(".setWares didn't error on a non shop tablecloth, when it should!")
end

util.sass(cloths[1], "setAddress", nil, "thing")
util.sass(cloths[1], "setPriceTagItem", nil, "apple")
util.sass(cloths[1], "setPriceTagCount", nil, 5)

if pcall(function() cloths[1].setWares({ name = "redstone", count = 609 }) end) then
	error(".setWares didn't error when assigning an item with a count higher than 256!")
end
if pcall(function() cloths[1].setWares({ name = "air" }) end) then
	error(".setWares didn't error when assigning an \"air\" item !")
end
util.sass(cloths[1], "setWares", nil, { name = "apple", count = 1 }, { name = "stick", count = 2 },
	{ name = "diamond_pickaxe" }, { name = "diamond" }, { name = "redstone", count = 256 },
	nil, { name = "apple", count = 1 }, { name = "apple", count = 1 },
	{ name = "apple", count = 1 }, { name = "apple", count = 1 }, { name = "apple", count = 1 })
util.validateObject(cloths[1], states.cloths[3], "second table cloth")
cloths[1].setWares()
util.validateObject(cloths[1], states.cloths[4], "second table cloth")
cloths[1].setWares({ name = "apple" })
