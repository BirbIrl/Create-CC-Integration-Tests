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
					maxCount = 1,
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
						itemGroups = {
							{
								id = "minecraft:food_and_drinks",
								displayName = "Food & Drinks",
							},
						},
						tags = {
							["c:foods/fruit"] = true,
							["c:animal_foods"] = true,
							["c:foods"] = true,
							["minecraft:horse_food"] = true,
						},
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
					itemGroups = {
						{
							id = "minecraft:food_and_drinks",
							displayName = "Food & Drinks",
						},
					},
					tags = {
						["c:foods/fruit"] = true,
						["c:animal_foods"] = true,
						["c:foods"] = true,
						["minecraft:horse_food"] = true,
					},
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
						count = 1,
						itemGroups = {
							{
								id = "minecraft:food_and_drinks",
								displayName = "Food & Drinks",
							},
						},
						tags = {
							["c:foods/fruit"] = true,
							["c:animal_foods"] = true,
							["c:foods"] = true,
							["minecraft:horse_food"] = true,
						},
						name = "minecraft:apple",
						maxCount = 64,
						displayName = "Apple",
					},
					{
						count = 2,
						itemGroups = {
							{
								id = "minecraft:ingredients",
								displayName = "Ingredients",
							},
						},
						tags = {
							["c:rods/wooden"] = true,
							["c:rods"] = true,
						},
						name = "minecraft:stick",
						maxCount = 64,
						displayName = "Stick",
					},
					{
						damage = 0,
						itemGroups = {
							{
								id = "minecraft:tools_and_utilities",
								displayName = "Tools & Utilities",
							},
						},
						name = "minecraft:diamond_pickaxe",
						tags = {
							["c:tools"] = true,
							["minecraft:enchantable/durability"] = true,
							["minecraft:enchantable/vanishing"] = true,
							["minecraft:pickaxes"] = true,
							["minecraft:enchantable/mining_loot"] = true,
							["minecraft:cluster_max_harvestables"] = true,
							["minecraft:enchantable/mining"] = true,
							["minecraft:trimmable_armor"] = true,
							["minecraft:breaks_decorated_pots"] = true,
							["c:tools/mining_tool"] = true,
							["c:enchantables"] = true,
						},
						maxDamage = 1561,
						count = 1,
						maxCount = 1,
						displayName = "Diamond Pickaxe",
					},
					{
						count = 1,
						itemGroups = {
							{
								id = "minecraft:ingredients",
								displayName = "Ingredients",
							},
						},
						tags = {
							["c:gems/diamond"] = true,
							["c:gems"] = true,
							["minecraft:trim_materials"] = true,
							["minecraft:beacon_payment_items"] = true,
						},
						name = "minecraft:diamond",
						maxCount = 64,
						displayName = "Diamond",
					},
					{
						count = 256,
						itemGroups = {
							{
								id = "minecraft:redstone_blocks",
								displayName = "Redstone Blocks",
							},
							{
								id = "minecraft:ingredients",
								displayName = "Ingredients",
							},
						},
						tags = {
							["c:dusts"] = true,
							["minecraft:trim_materials"] = true,
							["c:dusts/redstone"] = true,
						},
						name = "minecraft:redstone",
						maxCount = 64,
						displayName = "Redstone Dust",
					},
					{
						count = 1,
						itemGroups = {
							{
								id = "minecraft:food_and_drinks",
								displayName = "Food & Drinks",
							},
						},
						tags = {
							["c:foods/fruit"] = true,
							["c:animal_foods"] = true,
							["c:foods"] = true,
							["minecraft:horse_food"] = true,
						},
						name = "minecraft:apple",
						maxCount = 64,
						displayName = "Apple",
					},
					{
						count = 1,
						itemGroups = {
							{
								id = "minecraft:food_and_drinks",
								displayName = "Food & Drinks",
							},
						},
						tags = {
							["c:foods/fruit"] = true,
							["c:animal_foods"] = true,
							["c:foods"] = true,
							["minecraft:horse_food"] = true,
						},
						name = "minecraft:apple",
						maxCount = 64,
						displayName = "Apple",
					},
					{
						count = 1,
						itemGroups = {
							{
								id = "minecraft:food_and_drinks",
								displayName = "Food & Drinks",
							},
						},
						tags = {
							["c:foods/fruit"] = true,
							["c:animal_foods"] = true,
							["c:foods"] = true,
							["minecraft:horse_food"] = true,
						},
						name = "minecraft:apple",
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
		}, {
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
