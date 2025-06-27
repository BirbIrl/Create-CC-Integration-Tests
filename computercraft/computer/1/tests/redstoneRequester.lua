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
				result = 64,
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
				result = 64,
				_args = {
					1,
				},
			},
			["getItemDetail\\withArgs"] = {
				result = {
					name = "minecraft:apple",
					itemGroups = {},
					tags = {},
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
				result = 64,
				_args = {
					1,
				},
			},
			["getItemDetail\\withArgs"] = {
				result = {
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
				result = 64,
				_args = {
					1,
				},
			},
			["getItemDetail\\withArgs"] = {
				result = {
					name = "minecraft:redstone",
					itemGroups = {},
					tags = {
						["forge:dusts"] = true,
						["minecraft:trim_materials"] = true,
						["forge:dusts/redstone"] = true,
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
				result = 64,
				_args = {
					1,
				},
			},
			["getItemDetail\\withArgs"] = {
				result = {
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
				_args = {
					1,
				},
			},
			list = {
				result = {
					{
						name = "minecraft:diamond_pickaxe",
						count = 1,
						nbt = "552887824c43124013fd24f6edcde0fb",
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
					itemGroups = {},
					tags = {},
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
					itemGroups = {},
					tags = {
						["forge:dusts"] = true,
						["minecraft:trim_materials"] = true,
						["forge:dusts/redstone"] = true,
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
					isEditable = {
						result = true,
					},
					["getItemDetail\\withArgs"] = {
						result = {
							name = "minecraft:redstone",
							itemGroups = {},
							tags = {
								["forge:dusts"] = true,
								["minecraft:trim_materials"] = true,
								["forge:dusts/redstone"] = true,
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
					isEditable = {
						result = true,
					},
					["getItemDetail\\withArgs"] = {
						result = {
							name = "minecraft:apple",
							itemGroups = {},
							tags = {},
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
									name = "minecraft:apple",
									itemGroups = {},
									tags = {},
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
