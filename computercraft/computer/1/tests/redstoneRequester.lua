local util = require("..lib.util")
local barrels = { peripheral.wrap("minecraft:barrel_6"), peripheral.wrap("minecraft:barrel_7"), peripheral.wrap(
	"minecraft:barrel_8"), peripheral.wrap("minecraft:barrel_9") }
local packagers = { peripheral.wrap("Create_Packager_5"), peripheral.wrap("Create_Packager_6"),
	peripheral.wrap("Create_Packager_10") }
local requester = peripheral.wrap("Create_RedstoneRequester_1")
local states = {
	barrels = {
		{
			size = {
				result = 27,
			},
			["getItemLimit\\withArgs"] = {
				result = 99,
				_args = {
					1,
				},
			},
			["getItemDetail\\withArgs"] = {
				_args = {
					1,
				},
			},
			list = {
				result = {},
			},
		},
		{
			size = {
				result = 27,
			},
			["getItemLimit\\withArgs"] = {
				result = 99,
				_args = {
					1,
				},
			},
			["getItemDetail\\withArgs"] = {
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
					count = 64,
					maxCount = 64,
					displayName = "Apple",
				},
				_args = {
					1,
				},
			},
			list = {
				result = {
					{
						name = "minecraft:apple",
						count = 64,
					},
				},
			},
		},
		{
			size = {
				result = 27,
			},
			["getItemLimit\\withArgs"] = {
				result = 99,
				_args = {
					1,
				},
			},
			["getItemDetail\\withArgs"] = {
				result = {
					name = "minecraft:stick",
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
					count = 2,
					maxCount = 64,
					displayName = "Stick",
				},
				_args = {
					1,
				},
			},
			list = {
				result = {
					{
						name = "minecraft:stick",
						count = 2,
					},
					{
						name = "minecraft:diamond",
						count = 3,
					},
				},
			},
		},
		{
			size = {
				result = 27,
			},
			["getItemLimit\\withArgs"] = {
				result = 99,
				_args = {
					1,
				},
			},
			["getItemDetail\\withArgs"] = {
				result = {
					name = "minecraft:redstone",
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
					count = 64,
					maxCount = 64,
					displayName = "Redstone Dust",
				},
				_args = {
					1,
				},
			},
			list = {
				result = {
					{
						name = "minecraft:redstone",
						count = 64,
					},
				},
			},
		},
		{
			size = {
				result = 27,
			},
			["getItemLimit\\withArgs"] = {
				result = 99,
				_args = {
					1,
				},
			},
			["getItemDetail\\withArgs"] = {
				result = {
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
				_args = {
					1,
				},
			},
			list = {
				result = {
					{
						name = "minecraft:diamond_pickaxe",
						count = 1,
					},
				},
			},
		},

	},
	packagers = {
		{
			getPackage = {},
			getAddress = {
				result = "signAddress",
			},
			["getItemDetail\\withArgs"] = {
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
					count = 64,
					maxCount = 64,
					displayName = "Apple",
				},
				_args = {
					1,
				},
			},
			list = {
				result = {
					{
						name = "minecraft:apple",
						count = 64,
					},
				},
			},
		},
		{
			getPackage = {},
			getAddress = {
				result = "signAddress",
			},
			["getItemDetail\\withArgs"] = {
				result = {
					name = "minecraft:redstone",
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
					count = 64,
					maxCount = 64,
					displayName = "Redstone Dust",
				},
				_args = {
					1,
				},
			},
			list = {
				result = {
					{
						name = "minecraft:redstone",
						count = 64,
					},
				},
			},
		},

		{
			getPackage = {},
			getAddress = {
				result = "",
			},
			["getItemDetail\\withArgs"] = {
				_args = {
					1,
				},
			},
			list = {
				result = {},
			},
		},
		{
			list = {
				result = {},
			},
			getAddress = {
				result = "signAddress",
			},
			["getItemDetail\\withArgs"] = {
				_args = {
					1,
				},
			},
			["getPackage\\recursive"] = {
				result = {
					["getItemDetail\\withArgs"] = {
						result = {
							name = "minecraft:redstone",
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
							count = 64,
							maxCount = 64,
							displayName = "Redstone Dust",
						},
						_args = {
							1,
						},
					},
					list = {
						result = {
							{
								name = "minecraft:redstone",
								count = 64,
							},
						},
					},
					isEditable = {
						result = true,
					},
					getAddress = {
						result = "originalAddress",
					},
					["getOrderData\\recursive"] = {
						result = {
							getLinkIndex = {
								result = 1,
							},
							["getItemDetail\\withArgs"] = {
								result = {
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
								_args = {
									1,
								},
							},
							list = {
								result = {
									{
										name = "minecraft:redstone",
										count = 256,
									},
								},
							},
							getCrafts = {
								result = {},
							},
							isFinalLink = {
								result = false,
							},
							isFinal = {
								result = true,
							},
							getIndex = {
								result = 1,
							},
						},
					},
				},
			},
		},
		{
			list = {
				result = {},
			},
			getAddress = {
				result = "signAddress",
			},
			["getItemDetail\\withArgs"] = {
				_args = {
					1,
				},
			},
			["getPackage\\recursive"] = {
				result = {
					["getItemDetail\\withArgs"] = {
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
							count = 64,
							maxCount = 64,
							displayName = "Apple",
						},
						_args = {
							1,
						},
					},
					list = {
						result = {
							{
								name = "minecraft:apple",
								count = 64,
							},
						},
					},
					isEditable = {
						result = true,
					},
					getAddress = {
						result = "",
					},
					["getOrderData\\recursive"] = {
						result = {
							getLinkIndex = {
								result = 1,
							},
							["getItemDetail\\withArgs"] = {
								result = {
									count = 64,
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
								_args = {
									1,
								},
							},
							list = {
								result = {
									{
										name = "minecraft:apple",
										count = 64,
									},
									{
										name = "minecraft:air",
										count = 1,
									},
									{
										name = "minecraft:air",
										count = 1,
									},
									{
										name = "minecraft:air",
										count = 1,
									},
									{
										name = "minecraft:air",
										count = 1,
									},
									{
										name = "minecraft:air",
										count = 1,
									},
									{
										name = "minecraft:air",
										count = 1,
									},
									{
										name = "minecraft:air",
										count = 1,
									},
									{
										name = "minecraft:air",
										count = 1,
									},
								},
							},
							getCrafts = {
								result = {},
							},
							isFinalLink = {
								result = true,
							},
							isFinal = {
								result = true,
							},
							getIndex = {
								result = 1,
							},
						},
					},
				},
			},
		},
	},
	requester = {
		{
			request = {},
			getAddress = {
				result = "originalAddress",
			},
			getConfiguration = {
				result = "strict",
			},
			getRequest = {
				result = {
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
				},
			},
		},
	},
}


for num, barrel in ipairs(barrels) do
	util.validateObject(barrel, states.barrels[num], "barrel[" .. num .. "]")
end
for num, packager in ipairs(packagers) do
	util.validateObject(packager, states.packagers[num], "packager[" .. num .. "]")
end
util.validateObject(requester, states.requester[1], "requester")

requester.request()

-- making sure no package was made
for num, packager in ipairs(packagers) do
	util.validateObject(packager, states.packagers[num], "packager[" .. num .. "]")
end

requester.setConfiguration("allow_partial")
requester.request()
sleep(0.5)
util.validateObject(packagers[2], states.packagers[4], "top packager")

requester.setConfiguration("strict")
requester.setAddress("")
requester.setRequest({ name = "apple", count = 64 })
requester.request()
sleep(0.5)
util.validateObject(packagers[1], states.packagers[5], "bottom packager")

requester.setCraftingRequest(1, "diamond", "diamond", "diamond", nil, "stick", nil, "nil", "stick")
requester.request()
sleep(3)

util.validateObject(barrels[1], states.barrels[5], "output barrel")
