local util = require("..lib.util")
local frogports = { peripheral.wrap("Create_Frogport_8"), peripheral.wrap("Create_Frogport_9") }
local states = {
	frogports = {
		{
			getConfiguration = {
				result = "send_recieve",
			},
			getAddress = {
				result = "frogport_0",
			},
			["getItemDetail\\withArgs"] = {
				result = {
					["package\\recursive"] = {
						isEditable = {
							result = false,
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
							result = "frogport_0",
						},
					},
					itemGroups = {},
					name = "create:cardboard_package_12x10",
					tags = {
						["create:packages"] = true,
					},
					nbt = "ceed8ad969b49055bc14042fc07b6892",
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
						nbt = "ceed8ad969b49055bc14042fc07b6892",
					},
				},
			},
		},
		{
			getConfiguration = {
				result = "send_recieve",
			},
			getAddress = {
				result = "frogport_1",
			},
			["getItemDetail\\withArgs"] = {
				_args = {
					1,
				},
			},
			list = {
				result = {}
			},
		},
	}
}


util.validateObject(frogports[1], states.frogports[1], "first frogport")
util.validateObject(frogports[2], states.frogports[2], "second frogport")

util.sass(frogports[1], "setConfiguration", true, "send")
util.sass(frogports[1], "setAddress", nil, "locked")
sleep(0.75)
util.validateObject(frogports[2], states.frogports[2], "second frogport")
frogports[2].setAddress("frogport_0")
sleep(0.75)
util.validateObject(frogports[2], states.frogports[1], "second frogport")
frogports[1].setAddress("")
frogports[1].setConfiguration("send_recieve")
frogports[2].setAddress("locked")
sleep(0.75)
frogports[1].setAddress("frogport_0")
frogports[2].setAddress("frogport_1")
sleep(0.75)
util.validateObject(frogports[1], states.frogports[1], "first frogport")
util.validateObject(frogports[2], states.frogports[2], "second frogport")
