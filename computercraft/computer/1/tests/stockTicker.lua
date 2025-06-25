local util = require("..lib.util")
local tickers = { peripheral.wrap("Create_StockTicker_2"), peripheral.wrap("Create_StockTicker_3"),
	peripheral.wrap("Create_StockTicker_4"), peripheral.wrap("Create_StockTicker_5"),
	peripheral.wrap("Create_StockTicker_6"), peripheral.wrap("Create_StockTicker_7") }
local packagers = { peripheral.wrap("Create_Packager_11"), peripheral.wrap("Create_Packager_12"),
	peripheral.wrap("Create_Packager_13"), peripheral.wrap("Create_Packager_14"),
	peripheral.wrap("Create_Packager_15"), peripheral.wrap("Create_Packager_16"), }
local states = {
	packagers = {
		pre = {
			getPackage = {},
			getAddress = {
				result = "",
			},
			["getItemDetail\\withArgs"] = {
				result = {
					enchantments = {
						{
							level = 1,
							name = "minecraft:unbreaking",
							displayName = "Unbreaking I",
						},
					},
					itemGroups = {},
					name = "minecraft:enchanted_book",
					tags = {
						["minecraft:bookshelf_books"] = true,
					},
					nbt = "ce5c752cf2df5cf4ffb17d7b7bfacad7",
					count = 1,
					maxCount = 1,
					displayName = "Enchanted Book",
				},
				_args = {
					1,
				},
			},
			list = {
				result = {
					{
						name = "minecraft:enchanted_book",
						count = 1,
						nbt = "ce5c752cf2df5cf4ffb17d7b7bfacad7",
					},
					{
						name = "minecraft:enchanted_book",
						count = 1,
						nbt = "7bcff03383475bd90a29eb7568166ac9",
					},
					{
						name = "minecraft:enchanted_book",
						count = 1,
						nbt = "c752841147c814133f9ba7bca4ebe2de",
					},
					{
						name = "minecraft:enchanted_book",
						count = 1,
						nbt = "ce5c752cf2df5cf4ffb17d7b7bfacad7",
					},
					{
						name = "minecraft:enchanted_book",
						count = 1,
						nbt = "7bcff03383475bd90a29eb7568166ac9",
					},
					{
						name = "minecraft:enchanted_book",
						count = 1,
						nbt = "c752841147c814133f9ba7bca4ebe2de",
					},
					{
						name = "minecraft:diamond_helmet",
						count = 1,
						nbt = "f522a52b53f293ba7be8a34c7e38587b",
					},
					{
						name = "minecraft:diamond_helmet",
						count = 1,
						nbt = "3ebd8cc4352cab6b75465e1c82cbadd2",
					},
					{
						name = "minecraft:diamond_helmet",
						count = 1,
						nbt = "e76380dc6d3603de360d78b68410e380",
					},
					{
						name = "minecraft:diamond_pickaxe",
						count = 1,
						nbt = "f522a52b53f293ba7be8a34c7e38587b",
					},
					{
						name = "minecraft:diamond_pickaxe",
						count = 1,
						nbt = "3ebd8cc4352cab6b75465e1c82cbadd2",
					},
					{
						name = "minecraft:diamond_pickaxe",
						count = 1,
						nbt = "e76380dc6d3603de360d78b68410e380",
					},
					{
						name = "minecraft:diamond_pickaxe",
						count = 1,
						nbt = "c5da935a986a44a5e4979b181ec0840f",
					},
					{
						name = "minecraft:diamond_pickaxe",
						count = 1,
						nbt = "3e7dca4b751bb394a0ee693b76bc1a90",
					},
					{
						name = "minecraft:diamond_pickaxe",
						count = 1,
						nbt = "e76380dc6d3603de360d78b68410e380",
					},
				},
			},
		},
		postList = {
			{
				[7] = {
					name = "minecraft:diamond_helmet",
					count = 1,
					nbt = "f522a52b53f293ba7be8a34c7e38587b",
				},
				[8] = {
					name = "minecraft:diamond_helmet",
					count = 1,
					nbt = "3ebd8cc4352cab6b75465e1c82cbadd2",
				},
				[9] = {
					name = "minecraft:diamond_helmet",
					count = 1,
					nbt = "e76380dc6d3603de360d78b68410e380",
				},
				[3] = {
					name = "minecraft:enchanted_book",
					count = 1,
					nbt = "c752841147c814133f9ba7bca4ebe2de",
				},
				[6] = {
					name = "minecraft:enchanted_book",
					count = 1,
					nbt = "c752841147c814133f9ba7bca4ebe2de",
				},
			},
			{
				[7] = {
					name = "minecraft:diamond_helmet",
					count = 1,
					nbt = "f522a52b53f293ba7be8a34c7e38587b",
				},
				[8] = {
					name = "minecraft:diamond_helmet",
					count = 1,
					nbt = "3ebd8cc4352cab6b75465e1c82cbadd2",
				},
				[9] = {
					name = "minecraft:diamond_helmet",
					count = 1,
					nbt = "e76380dc6d3603de360d78b68410e380",
				},
				[10] = {
					name = "minecraft:diamond_pickaxe",
					count = 1,
					nbt = "f522a52b53f293ba7be8a34c7e38587b",
				},
				[11] = {
					name = "minecraft:diamond_pickaxe",
					count = 1,
					nbt = "3ebd8cc4352cab6b75465e1c82cbadd2",
				},
				[12] = {
					name = "minecraft:diamond_pickaxe",
					count = 1,
					nbt = "e76380dc6d3603de360d78b68410e380",
				},
				[13] = {
					name = "minecraft:diamond_pickaxe",
					count = 1,
					nbt = "c5da935a986a44a5e4979b181ec0840f",
				},
				[14] = {
					name = "minecraft:diamond_pickaxe",
					count = 1,
					nbt = "3e7dca4b751bb394a0ee693b76bc1a90",
				},
				[15] = {
					name = "minecraft:diamond_pickaxe",
					count = 1,
					nbt = "e76380dc6d3603de360d78b68410e380",
				},
			},
			{
				[15] = {
					name = "minecraft:diamond_pickaxe",
					count = 1,
					nbt = "e76380dc6d3603de360d78b68410e380",
				},
				[2] = {
					name = "minecraft:enchanted_book",
					count = 1,
					nbt = "7bcff03383475bd90a29eb7568166ac9",
				},
				[3] = {
					name = "minecraft:enchanted_book",
					count = 1,
					nbt = "c752841147c814133f9ba7bca4ebe2de",
				},
				[5] = {
					name = "minecraft:enchanted_book",
					count = 1,
					nbt = "7bcff03383475bd90a29eb7568166ac9",
				},
				[6] = {
					name = "minecraft:enchanted_book",
					count = 1,
					nbt = "c752841147c814133f9ba7bca4ebe2de",
				},
				[12] = {
					name = "minecraft:diamond_pickaxe",
					count = 1,
					nbt = "e76380dc6d3603de360d78b68410e380",
				},
			},
			{
				{
					name = "minecraft:enchanted_book",
					count = 1,
					nbt = "ce5c752cf2df5cf4ffb17d7b7bfacad7",
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
					nbt = "7bcff03383475bd90a29eb7568166ac9",
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
					nbt = "c752841147c814133f9ba7bca4ebe2de",
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
					nbt = "ce5c752cf2df5cf4ffb17d7b7bfacad7",
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
					nbt = "7bcff03383475bd90a29eb7568166ac9",
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
					nbt = "c752841147c814133f9ba7bca4ebe2de",
				},
				{
					name = "minecraft:diamond_helmet",
					count = 1,
					nbt = "f522a52b53f293ba7be8a34c7e38587b",
				},
				{
					name = "minecraft:diamond_helmet",
					count = 1,
					nbt = "3ebd8cc4352cab6b75465e1c82cbadd2",
				},
				{
					name = "minecraft:diamond_helmet",
					count = 1,
					nbt = "e76380dc6d3603de360d78b68410e380",
				},
				{
					name = "minecraft:diamond_pickaxe",
					count = 1,
					nbt = "f522a52b53f293ba7be8a34c7e38587b",
				},
				{
					name = "minecraft:diamond_pickaxe",
					count = 1,
					nbt = "3ebd8cc4352cab6b75465e1c82cbadd2",
				},
				{
					name = "minecraft:diamond_pickaxe",
					count = 1,
					nbt = "e76380dc6d3603de360d78b68410e380",
				},
				[15] = {
					name = "minecraft:diamond_pickaxe",
					count = 1,
					nbt = "e76380dc6d3603de360d78b68410e380",
				},
			},
			{
				{
					name = "minecraft:enchanted_book",
					count = 1,
					nbt = "ce5c752cf2df5cf4ffb17d7b7bfacad7",
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
					nbt = "7bcff03383475bd90a29eb7568166ac9",
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
					nbt = "c752841147c814133f9ba7bca4ebe2de",
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
					nbt = "ce5c752cf2df5cf4ffb17d7b7bfacad7",
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
					nbt = "7bcff03383475bd90a29eb7568166ac9",
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
					nbt = "c752841147c814133f9ba7bca4ebe2de",
				},
			},
			{
				{
					name = "minecraft:enchanted_book",
					count = 1,
					nbt = "ce5c752cf2df5cf4ffb17d7b7bfacad7",
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
					nbt = "7bcff03383475bd90a29eb7568166ac9",
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
					nbt = "c752841147c814133f9ba7bca4ebe2de",
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
					nbt = "ce5c752cf2df5cf4ffb17d7b7bfacad7",
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
					nbt = "7bcff03383475bd90a29eb7568166ac9",
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
					nbt = "c752841147c814133f9ba7bca4ebe2de",
				},
				{
					name = "minecraft:diamond_helmet",
					count = 1,
					nbt = "f522a52b53f293ba7be8a34c7e38587b",
				},
				{
					name = "minecraft:diamond_helmet",
					count = 1,
					nbt = "3ebd8cc4352cab6b75465e1c82cbadd2",
				},
				{
					name = "minecraft:diamond_helmet",
					count = 1,
					nbt = "e76380dc6d3603de360d78b68410e380",
				},
				{
					name = "minecraft:diamond_pickaxe",
					count = 1,
					nbt = "f522a52b53f293ba7be8a34c7e38587b",
				},
				{
					name = "minecraft:diamond_pickaxe",
					count = 1,
					nbt = "3ebd8cc4352cab6b75465e1c82cbadd2",
				},
				{
					name = "minecraft:diamond_pickaxe",
					count = 1,
					nbt = "e76380dc6d3603de360d78b68410e380",
				},
				[15] = {
					name = "minecraft:diamond_pickaxe",
					count = 1,
					nbt = "e76380dc6d3603de360d78b68410e380",
				},
			},
		},
	},
	tickers = {
		pre = {
			["getItemDetail\\withArgs"] = {
				_args = {
					1,
				},
			},
			getStockItemDetail = {
				_type = "error",
			},
			requestFiltered = {
				result = 0,
			},
			list = {
				result = {},
			},
			stock = {
				result = {
					{
						name = "minecraft:diamond_pickaxe",
						count = 1,
						nbt = "f522a52b53f293ba7be8a34c7e38587b",
					},
					{
						name = "minecraft:diamond_pickaxe",
						count = 1,
						nbt = "3ebd8cc4352cab6b75465e1c82cbadd2",
					},
					{
						name = "minecraft:diamond_pickaxe",
						count = 2,
						nbt = "e76380dc6d3603de360d78b68410e380",
					},
					{
						name = "minecraft:diamond_pickaxe",
						count = 1,
						nbt = "c5da935a986a44a5e4979b181ec0840f",
					},
					{
						name = "minecraft:diamond_pickaxe",
						count = 1,
						nbt = "3e7dca4b751bb394a0ee693b76bc1a90",
					},
					{
						name = "minecraft:enchanted_book",
						count = 2,
						nbt = "ce5c752cf2df5cf4ffb17d7b7bfacad7",
					},
					{
						name = "minecraft:enchanted_book",
						count = 2,
						nbt = "7bcff03383475bd90a29eb7568166ac9",
					},
					{
						name = "minecraft:enchanted_book",
						count = 2,
						nbt = "c752841147c814133f9ba7bca4ebe2de",
					},
					{
						name = "minecraft:diamond_helmet",
						count = 1,
						nbt = "f522a52b53f293ba7be8a34c7e38587b",
					},
					{
						name = "minecraft:diamond_helmet",
						count = 1,
						nbt = "3ebd8cc4352cab6b75465e1c82cbadd2",
					},
					{
						name = "minecraft:diamond_helmet",
						count = 1,
						nbt = "e76380dc6d3603de360d78b68410e380",
					},
				},
			},
		},
	}
}

for num, packager in ipairs(packagers) do
	util.validateObject(packager, states.packagers.pre, "packager[" .. num .. "]")
end
-- stock order is non deterministic so we're doing it this way
states.tickers.pre.stock.result = tickers[1].stock()
states.tickers.detailedStock = tickers[1].stock(true)
for num, ticker in ipairs(tickers) do
	util.validateObject(ticker, states.tickers.pre, "ticker[" .. num .. "]")
	-- stock(true) isn't checked by validateObject so i'm doing it separately
	if not util.compareValueOrDeepTable(
			ticker.stock(true),
			states.tickers.detailedStock
		)
	then
		error("ticker " .. num .. "'s initial .stock(true) didn't match assertion")
	end
end

local filters = {
	{ { _requestCount = 10 } },
	{
		{
			enchantments = {
			},
			tags = {
				["minecraft:bookshelf_books"] = true,
			},
			name = "minecraft:enchanted_book",
			itemGroups = {},
			maxCount = 1,
			count = {
				_op = "all",
				value = {
					{
						_op = ">",
						value = 1
					},
					{
						_op = "<",
						value = 3,
					}
				}
			},
			nbt = {
				_op = "regex",
				value = ".*"
			},
			displayName = "Enchanted Book",
			_mode = "exact"
		}

	},
	{
		{
			count = {
				_op = "<",
				value = 2,
			}
		},
		{
			enchantments = {
				{
					level = 1,
					name = "minecraft:unbreaking",
					displayName = "Unbreaking I",
				},
			},
			tags = {
				["minecraft:bookshelf_books"] = true,
			},
			name = "minecraft:enchanted_book",
			itemGroups = {},
			maxCount = 1,
			count = {
				_op = "any",
				value = {
					2, 3
				}
			},
			nbt = {
				_op = "glob",
				value = "*"
			},
			displayName = "Enchanted Book",
			this = "should still let me find a chestplate",
			_mode = "contained",
		},
	},
	{
		{
			enchantments = {
				{
					name = "minecraft:efficiency",
				},
				{
					name = "minecraft:unbreaking",
				},
			},
		}
	},
	{
		{
			name = {
				_op = "not",
				value = "minecraft:enchanted_book"
			},
			count = {
				_op = "type",
				value = "number"
			}
		}
	},
	{
		{
			enchantments = {
				{},
				{},
			},
			name = {
				_op = "glob",
				value = "minecraft:diamond*"
			},
		}
	},

}



for num, filter in ipairs(filters) do
	tickers[num].requestFiltered("", table.unpack(filter))
	if num == 1 then
		if not #packagers[num].list() == 5 then
			error("packager " .. num .. "'s .list() returned the wrong number of items")
		end
		-- _requestCount is non-deterministic so we're just making sure only 5 items are left
	else
		util.validateObject(packagers[num].list(), states.packagers.postList[num], "post-request packager[" .. num .. "]")
	end
end
