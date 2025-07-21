local util = require("..lib.util")
local packager = peripheral.wrap("Create_Packager_0")
local barrel = peripheral.wrap("minecraft:barrel_0")
local signPackager = peripheral.wrap("Create_Packager_1")
local encodedPackager = peripheral.wrap("Create_Packager_4")
local states = {
	packagers = {
		first = {
			pre = {

				getPackage = {},
				getAddress = {
					result = "",
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
						{
							name = "minecraft:apple",
							count = 64,
						},
						{
							name = "minecraft:apple",
							count = 64,
						},
						{
							name = "minecraft:apple",
							count = 64,
						},
						{
							name = "minecraft:apple",
							count = 64,
						},
						{
							name = "minecraft:apple",
							count = 64,
						},
						{
							name = "minecraft:apple",
							count = 64,
						},
						{
							name = "minecraft:apple",
							count = 32,
						},
						{
							name = "minecraft:stick",
							count = 32,
						},
					},
				},
			},
			step1 = {
				list = {
					result = {},
				},
				getAddress = {
					result = "pcAssignedAddress",
				},
				["getItemDetail\\withArgs"] = {
					_args = {
						1,
					},
				},
				["getPackage\\recursive"] = {
					result = {
						isValid = {
							result = true,
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
								{
									name = "minecraft:apple",
									count = 64,
								},
								{
									name = "minecraft:apple",
									count = 64,
								},
								{
									name = "minecraft:apple",
									count = 64,
								},
								{
									name = "minecraft:apple",
									count = 64,
								},
								{
									name = "minecraft:apple",
									count = 64,
								},
								{
									name = "minecraft:apple",
									count = 64,
								},
								{
									name = "minecraft:apple",
									count = 32,
								},
								{
									name = "minecraft:stick",
									count = 32,
								},
							},
						},
						getOrderData = {},
						getAddress = {
							result = "pcAssignedAddress",
						},
					},
				},
			}
		},
		sign = {
			pre = {
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
						count = 1,
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
							count = 1,
						},
					},
				},
			},
			step1 = {
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
								count = 1,
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
									count = 1,
								},
							},
						},
						isEditable = {
							result = true,
						},
						getAddress = {
							result = "signAddress",
						},
						getOrderData = {},
					},
				},
			},
		},
		encoded = {
			pre = {
				list = {
					_type = "error",
				},
				getAddress = {
					result = "signAddress",
				},
				["getItemDetail\\withArgs"] = {
					_type = "error",
					_args = {
						1,
					},
				},
				["getPackage\\recursive"] = {
					result = {
						["getItemDetail\\withArgs"] = {
							result = {
								name = "minecraft:oak_planks",
								itemGroups = {
									{
										id = "minecraft:building_blocks",
										displayName = "Building Blocks",
									},
								},
								tags = {
									["minecraft:planks"] = true,
								},
								count = 1,
								maxCount = 64,
								displayName = "Oak Planks",
							},
							_args = {
								1,
							},
						},
						list = {
							result = {
								{
									name = "minecraft:oak_planks",
									count = 1,
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
										name = "minecraft:oak_planks",
										itemGroups = {
											{
												id = "minecraft:building_blocks",
												displayName = "Building Blocks",
											},
										},
										tags = {
											["minecraft:planks"] = true,
										},
										count = 1,
										maxCount = 64,
										displayName = "Oak Planks",
									},
									_args = {
										1,
									},
								},
								list = {
									result = {
										{
											name = "minecraft:oak_planks",
											count = 1,
										},
									},
								},
								getCrafts = {
									result = {
										{
											count = 1,
											recipe = {
												[5] = "minecraft:oak_planks",
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
				},
			},
		}
	},
	barrel = {
		pre = {
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
					{
						name = "minecraft:apple",
						count = 64,
					},
					{
						name = "minecraft:apple",
						count = 64,
					},
					{
						name = "minecraft:apple",
						count = 64,
					},
					{
						name = "minecraft:apple",
						count = 64,
					},
					{
						name = "minecraft:apple",
						count = 64,
					},
					{
						name = "minecraft:apple",
						count = 64,
					},
					{
						name = "minecraft:apple",
						count = 32,
					},
					{
						name = "minecraft:stick",
						count = 32,
					},
				},
			},
		},
	},
}

-- assertions
util.validateObject(barrel, states.barrel.pre, "barrel")
util.validateObject(packager, states.packagers.first.pre, "packager")
util.validateObject(signPackager, states.packagers.sign.pre, "signPackager")
util.validateObject(encodedPackager, states.packagers.encoded.pre, "encodedPackager")

-- mutable checks
local setAddressResult = packager.setAddress("pcAssignedAddress")
if setAddressResult ~= nil then
	error("setAddress should return nil, returned .. " .. setAddressResult " instead")
end
if not packager.makePackage() then
	error ".makePacakge returned false, and probably didn't make a package when it should have"
end
if packager.makePackage() then
	error ".makePacakge returned true when there was a package in the way"
end






local targetAddress = "pcModifiedPackageAddress"

local package = packager.getPackage()
package.setAddress(targetAddress)
util.sass(package, "getAddress", targetAddress)


-- sign address checks

signPackager.makePackage()

util.validateObject(signPackager, states.packagers.sign.step1)

util.callForReload()

targetAddress = "newPcAddress"
signPackager.setAddress(targetAddress)
signPackager.makePackage()
package = signPackager.getPackage()
package.setAddress(targetAddress)
util.sass(package, "getAddress", targetAddress)

return true
