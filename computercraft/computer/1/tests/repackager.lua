--[[
getAddress
getPackage
makePackage
setAddress
--]]
local util = require("..lib.util")
local pretty = require("cc.pretty")
local pprint = pretty.pretty_print
local repackagers = { peripheral.wrap("Create_Repackager_3"), peripheral.wrap("Create_Repackager_4"),
	peripheral.wrap("Create_Repackager_8"), peripheral.wrap("Create_Repackager_6") }
local barrels = { peripheral.wrap("minecraft:barrel_2"), peripheral.wrap("minecraft:barrel_3"),
	peripheral.wrap("minecraft:barrel_4"), peripheral.wrap("minecraft:barrel_5") }
local redstoneRelays = { peripheral.wrap("redstone_relay_0"), peripheral.wrap("redstone_relay_1"), peripheral.wrap(
	"redstone_relay_2") }
local states = {
	barrels =
	{
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
					["package\\recursive"] = {
						isValid = {
							result = true,
						},
						["getItemDetail\\withArgs"] = {
							result = {
								name = "minecraft:diamond",
								itemGroups = {},
								tags = {
									["forge:gems/diamond"] = true,
									["minecraft:trim_materials"] = true,
									["forge:gems"] = true,
									["minecraft:beacon_payment_items"] = true,
								},
								count = 4,
								maxCount = 64,
								displayName = "Diamond",
							},
							_args = {
								1,
							},
						},
						list = {
							result = {
								{
									name = "minecraft:diamond",
									count = 4,
								},
							},
						},
						getAddress = {
							result = "originalAddress",
						},
						["getOrderData\\recursive"] = {
							result = {
								getLinkIndex = {
									result = 2,
								},
								["getItemDetail\\withArgs"] = {
									_args = {
										1,
									},
								},
								list = {},
								getCrafts = {},
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
					itemGroups = {},
					name = "create:cardboard_package_12x10",
					tags = {
						["create:packages"] = true,
					},
					nbt = "fb8f5b337b68e7e16da274ce177b4cfe",
					count = 1,
					maxCount = 1,
					displayName = "Cardboard Package",
				},
				_args = {
					1,
				},
			},
			list = {
				result = {
					{
						name = "create:cardboard_package_12x10",
						count = 1,
						nbt = "fb8f5b337b68e7e16da274ce177b4cfe",
					},
					{
						name = "create:cardboard_package_12x12",
						count = 1,
						nbt = "20da0cc6744c32a37deb63c2215196bc",
					},
					{
						name = "create:cardboard_package_12x12",
						count = 1,
						nbt = "3b4c9133962640feca4df20b20302471",
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
					["package\\recursive"] = {
						isValid = {
							result = true,
						},
						["getItemDetail\\withArgs"] = {
							result = {
								name = "minecraft:stick",
								itemGroups = {},
								tags = {
									["forge:rods/wooden"] = true,
									["forge:rods"] = true,
								},
								count = 1,
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
									count = 1,
								},
							},
						},
						getOrderData = {},
						getAddress = {
							result = "",
						},
					},
					itemGroups = {},
					name = "create:cardboard_package_12x10",
					tags = {
						["create:packages"] = true,
					},
					nbt = "a0c95ad7b74cb3804b945fb2f69724b2",
					count = 1,
					maxCount = 1,
					displayName = "Cardboard Package",
				},
				_args = {
					1,
				},
			},
			list = {
				result = {
					{
						name = "create:cardboard_package_12x10",
						count = 1,
						nbt = "a0c95ad7b74cb3804b945fb2f69724b2",
					},
					{
						name = "create:cardboard_package_12x10",
						count = 1,
						nbt = "a0c95ad7b74cb3804b945fb2f69724b2",
					},
					{
						name = "create:cardboard_package_12x10",
						count = 1,
						nbt = "a0c95ad7b74cb3804b945fb2f69724b2",
					},
					{
						name = "create:cardboard_package_12x10",
						count = 1,
						nbt = "a0c95ad7b74cb3804b945fb2f69724b2",
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
					["package\\recursive"] = {
						isValid = {
							result = true,
						},
						["getItemDetail\\withArgs"] = {
							result = {
								name = "minecraft:stick",
								itemGroups = {},
								tags = {
									["forge:rods/wooden"] = true,
									["forge:rods"] = true,
								},
								count = 1,
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
									count = 1,
								},
							},
						},
						getOrderData = {},
						getAddress = {
							result = "",
						},
					},
					itemGroups = {},
					name = "create:cardboard_package_12x10",
					tags = {
						["create:packages"] = true,
					},
					nbt = "a0c95ad7b74cb3804b945fb2f69724b2",
					count = 1,
					maxCount = 1,
					displayName = "Cardboard Package",
				},
				_args = {
					1,
				},
			},
			list = {
				result = {
					{
						name = "create:cardboard_package_12x10",
						count = 1,
						nbt = "a0c95ad7b74cb3804b945fb2f69724b2",
					},
					{
						name = "create:cardboard_package_12x10",
						count = 1,
						nbt = "a0c95ad7b74cb3804b945fb2f69724b2",
					},
					{
						name = "create:cardboard_package_12x10",
						count = 1,
						nbt = "a0c95ad7b74cb3804b945fb2f69724b2",
					},
					{
						name = "create:cardboard_package_12x10",
						count = 1,
						nbt = "a0c95ad7b74cb3804b945fb2f69724b2",
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
					["package\\recursive"] = {
						isValid = {
							result = true,
						},
						["getItemDetail\\withArgs"] = {
							result = {
								name = "minecraft:stick",
								itemGroups = {},
								tags = {
									["forge:rods/wooden"] = true,
									["forge:rods"] = true,
								},
								count = 1,
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
									count = 1,
								},
							},
						},
						getAddress = {
							result = "originalAddress",
						},
						["getOrderData\\recursive"] = {
							result = {
								getLinkIndex = {
									result = 2,
								},
								["getItemDetail\\withArgs"] = {
									_args = {
										1,
									},
								},
								list = {},
								getCrafts = {},
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
					itemGroups = {},
					name = "create:cardboard_package_10x12",
					tags = {
						["create:packages"] = true,
					},
					nbt = "d737660ea29804f4772ee62c6e6613ea",
					count = 1,
					maxCount = 1,
					displayName = "Cardboard Package",
				},
				_args = {
					1,
				},
			},
			list = {
				result = {
					{
						name = "create:cardboard_package_10x12",
						count = 1,
						nbt = "d737660ea29804f4772ee62c6e6613ea",
					},
				},
			},
		},
	},
	repackagers =
	{
		{
			getPackage = {},
			getAddress = {
				result = "signAddress",
			},
			["getItemDetail\\withArgs"] = {
				result = {
					["package\\recursive"] = {
						isValid = {
							result = true,
						},
						["getItemDetail\\withArgs"] = {
							result = {
								name = "minecraft:diamond",
								itemGroups = {},
								tags = {
									["forge:gems/diamond"] = true,
									["minecraft:trim_materials"] = true,
									["forge:gems"] = true,
									["minecraft:beacon_payment_items"] = true,
								},
								count = 4,
								maxCount = 64,
								displayName = "Diamond",
							},
							_args = {
								1,
							},
						},
						list = {
							result = {
								{
									name = "minecraft:diamond",
									count = 4,
								},
							},
						},
						getAddress = {
							result = "originalAddress",
						},
						["getOrderData\\recursive"] = {
							result = {
								getLinkIndex = {
									result = 2,
								},
								["getItemDetail\\withArgs"] = {
									_args = {
										1,
									},
								},
								list = {},
								getCrafts = {},
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
					itemGroups = {},
					name = "create:cardboard_package_12x10",
					tags = {
						["create:packages"] = true,
					},
					nbt = "fb8f5b337b68e7e16da274ce177b4cfe",
					count = 1,
					maxCount = 1,
					displayName = "Cardboard Package",
				},
				_args = {
					1,
				},
			},
			list = {
				result = {
					{
						name = "create:cardboard_package_12x10",
						count = 1,
						nbt = "fb8f5b337b68e7e16da274ce177b4cfe",
					},
					{
						name = "create:cardboard_package_12x12",
						count = 1,
						nbt = "20da0cc6744c32a37deb63c2215196bc",
					},
					{
						name = "create:cardboard_package_12x12",
						count = 1,
						nbt = "3b4c9133962640feca4df20b20302471",
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
				result = {
					["package\\recursive"] = {
						isValid = {
							result = true,
						},
						["getItemDetail\\withArgs"] = {
							result = {
								name = "minecraft:stick",
								itemGroups = {},
								tags = {
									["forge:rods/wooden"] = true,
									["forge:rods"] = true,
								},
								count = 1,
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
									count = 1,
								},
							},
						},
						getOrderData = {},
						getAddress = {
							result = "",
						},
					},
					itemGroups = {},
					name = "create:cardboard_package_12x10",
					tags = {
						["create:packages"] = true,
					},
					nbt = "a0c95ad7b74cb3804b945fb2f69724b2",
					count = 1,
					maxCount = 1,
					displayName = "Cardboard Package",
				},
				_args = {
					1,
				},
			},
			list = {
				result = {
					{
						name = "create:cardboard_package_12x10",
						count = 1,
						nbt = "a0c95ad7b74cb3804b945fb2f69724b2",
					},
					{
						name = "create:cardboard_package_12x10",
						count = 1,
						nbt = "a0c95ad7b74cb3804b945fb2f69724b2",
					},
					{
						name = "create:cardboard_package_12x10",
						count = 1,
						nbt = "a0c95ad7b74cb3804b945fb2f69724b2",
					},
					{
						name = "create:cardboard_package_12x10",
						count = 1,
						nbt = "a0c95ad7b74cb3804b945fb2f69724b2",
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
					["package\\recursive"] = {
						isValid = {
							result = true,
						},
						["getItemDetail\\withArgs"] = {
							result = {
								name = "minecraft:stick",
								itemGroups = {},
								tags = {
									["forge:rods/wooden"] = true,
									["forge:rods"] = true,
								},
								count = 1,
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
									count = 1,
								},
							},
						},
						getOrderData = {},
						getAddress = {
							result = "",
						},
					},
					itemGroups = {},
					name = "create:cardboard_package_12x10",
					tags = {
						["create:packages"] = true,
					},
					nbt = "a0c95ad7b74cb3804b945fb2f69724b2",
					count = 1,
					maxCount = 1,
					displayName = "Cardboard Package",
				},
				_args = {
					1,
				},
			},
			list = {
				result = {
					{
						name = "create:cardboard_package_12x10",
						count = 1,
						nbt = "a0c95ad7b74cb3804b945fb2f69724b2",
					},
					{
						name = "create:cardboard_package_12x10",
						count = 1,
						nbt = "a0c95ad7b74cb3804b945fb2f69724b2",
					},
					{
						name = "create:cardboard_package_12x10",
						count = 1,
						nbt = "a0c95ad7b74cb3804b945fb2f69724b2",
					},
					{
						name = "create:cardboard_package_12x10",
						count = 1,
						nbt = "a0c95ad7b74cb3804b945fb2f69724b2",
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
				result = {
					["package\\recursive"] = {
						isValid = {
							result = true,
						},
						["getItemDetail\\withArgs"] = {
							result = {
								name = "minecraft:stick",
								itemGroups = {},
								tags = {
									["forge:rods/wooden"] = true,
									["forge:rods"] = true,
								},
								count = 1,
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
									count = 1,
								},
							},
						},
						getAddress = {
							result = "originalAddress",
						},
						["getOrderData\\recursive"] = {
							result = {
								getLinkIndex = {
									result = 2,
								},
								["getItemDetail\\withArgs"] = {
									_args = {
										1,
									},
								},
								list = {},
								getCrafts = {},
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
					itemGroups = {},
					name = "create:cardboard_package_10x12",
					tags = {
						["create:packages"] = true,
					},
					nbt = "d737660ea29804f4772ee62c6e6613ea",
					count = 1,
					maxCount = 1,
					displayName = "Cardboard Package",
				},
				_args = {
					1,
				},
			},
			list = {
				result = {
					{
						name = "create:cardboard_package_10x12",
						count = 1,
						nbt = "d737660ea29804f4772ee62c6e6613ea",
					},
				},
			},
		},
	},
	packages = {
		{
			isValid = {
				result = true,
			},
			["getItemDetail\\withArgs"] = {
				result = {
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
				_args = {
					1,
				},
			},
			list = {
				result = {
					{
						name = "minecraft:diamond",
						count = 1,
					},
					{
						name = "minecraft:diamond",
						count = 1,
					},
					{
						name = "minecraft:diamond",
						count = 1,
					},
					[5] = {
						name = "minecraft:stick",
						count = 1,
					},
					[8] = {
						name = "minecraft:stick",
						count = 1,
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
						_args = {
							1,
						},
					},
					list = {
						result = {},
					},
					getCrafts = {
						result = {
							{
								count = 1,
								recipe = {
									"minecraft:diamond",
									"minecraft:diamond",
									"minecraft:diamond",
									[5] = "minecraft:stick",
									[8] = "minecraft:stick",
								},
							},
						},
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
		{
			isValid = {
				result = true,
			},
			["getItemDetail\\withArgs"] = {
				result = {
					name = "minecraft:stick",
					itemGroups = {},
					tags = {
						["forge:rods/wooden"] = true,
						["forge:rods"] = true,
					},
					count = 1,
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
						count = 1,
					},
				},
			},
			getOrderData = {},
			getAddress = {
				result = "",
			},
		},
		{
			isValid = {
				result = true,
			},
			["getItemDetail\\withArgs"] = {
				result = {
					name = "minecraft:stick",
					itemGroups = {},
					tags = {
						["forge:rods/wooden"] = true,
						["forge:rods"] = true,
					},
					count = 1,
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
						count = 1,
					},
				},
			},
			getOrderData = {},
			getAddress = {
				result = "computerAssignedAddress",
			},
		},
		{
			isValid = {
				result = true,
			},
			["getItemDetail\\withArgs"] = {
				result = {
					name = "minecraft:stick",
					itemGroups = {},
					tags = {
						["forge:rods/wooden"] = true,
						["forge:rods"] = true,
					},
					count = 1,
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
						count = 1,
					},
				},
			},
			getOrderData = {},
			getAddress = {
				result = "signAddress",
			},
		},
	},
}


-- assertions
for num, barrel in ipairs(barrels) do
	util.validateObject(barrel, states.barrels[num], "barrel[" .. num .. "]")
end
for num, repackager in ipairs(repackagers) do
	util.validateObject(repackager, states.repackagers[num], "repackager[" .. num .. "]")
end


if pcall(function() barrels[1].getItemDetail(1).package.setAddress("this shouldn't work") end) then
	error("editing a package's address with .setAddress while it's inside a barrel didn't return an error")
end


-- Repackager 1: Combining three packages into 2 pickaxe crafting packages
redstoneRelays[1].setOutput("right", true)
repackagers[1].makePackage()
util.validateObject(repackagers[1].getPackage(), states.packages[1],
	"First Repackager's First Package")

repackagers[1].setAddress("ignoreThisAddress")
redstoneRelays[1].setOutput("right", false)
sleep(1)
redstoneRelays[1].setOutput("right", true)


util.validateObject(repackagers[1].getPackage(), states.packages[1], "First Repackager's Second Package")

-- Repackager 2: Assigning addresses to not encoded packages.


redstoneRelays[2].setOutput("right", true)
repackagers[2].makePackage()
util.validateObject(repackagers[2].getPackage(), states.packages[2],
	"Second Repackager's First Package")

repackagers[2].setAddress("")
redstoneRelays[2].setOutput("right", false)
sleep(1)
redstoneRelays[2].setOutput("right", true)
sleep(0.75)
repackagers[2].makePackage()

util.validateObject(repackagers[2].getPackage(), states.packages[2], "Second Repackager's Second Package")

repackagers[2].setAddress("computerAssignedAddress")
redstoneRelays[2].setOutput("right", false)
sleep(1)
redstoneRelays[2].setOutput("right", true)
sleep(0.75)
repackagers[2].makePackage()

util.validateObject(repackagers[2].getPackage(), states.packages[3], "Second Repackager's Third Package")


repackagers[2].setAddress(nil)
redstoneRelays[2].setOutput("right", false)
sleep(1)
redstoneRelays[2].setOutput("right", true)
sleep(0.75)
repackagers[2].makePackage()

util.validateObject(repackagers[2].getPackage(), states.packages[2], "Second Repackager's Fourth Package")

-- Repackager 3: Same test as packager 2, but with a sign attached.


redstoneRelays[3].setOutput("right", true)
repackagers[3].makePackage()
util.validateObject(repackagers[3].getPackage(), states.packages[4],
	"Second Repackager's First Package")

repackagers[3].setAddress("")
redstoneRelays[3].setOutput("right", false)
sleep(1)
redstoneRelays[3].setOutput("right", true)
sleep(0.75)
repackagers[3].makePackage()

util.validateObject(repackagers[3].getPackage(), states.packages[2], "Second Repackager's Second Package")

repackagers[3].setAddress("computerAssignedAddress")
redstoneRelays[3].setOutput("right", false)
sleep(1)
redstoneRelays[3].setOutput("right", true)
sleep(0.75)
repackagers[3].makePackage()

util.validateObject(repackagers[3].getPackage(), states.packages[3], "Second Repackager's Third Package")


repackagers[3].setAddress(nil)
redstoneRelays[3].setOutput("right", false)
sleep(1)
redstoneRelays[3].setOutput("right", true)
sleep(0.75)
repackagers[3].makePackage()

util.validateObject(repackagers[3].getPackage(), states.packages[4], "Second Repackager's Fourth Package")


-- Packager 4: making sure incomplete encoded packages don't get made.

util.sass(repackagers[4], "makePackage", false)
