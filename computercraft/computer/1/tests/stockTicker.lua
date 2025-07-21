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
					name = "minecraft:enchanted_book",
					itemGroups = {
						{
							id = "minecraft:ingredients",
							displayName = "Ingredients",
						},
					},
					tags = {
						["minecraft:bookshelf_books"] = true,
					},
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
					},
					{
						name = "minecraft:enchanted_book",
						count = 1,
					},
					{
						name = "minecraft:enchanted_book",
						count = 1,
					},
					{
						name = "minecraft:enchanted_book",
						count = 1,
					},
					{
						name = "minecraft:enchanted_book",
						count = 1,
					},
					{
						name = "minecraft:enchanted_book",
						count = 1,
					},
					{
						name = "minecraft:diamond_helmet",
						count = 1,
					},
					{
						name = "minecraft:diamond_helmet",
						count = 1,
					},
					{
						name = "minecraft:diamond_helmet",
						count = 1,
					},
					{
						name = "minecraft:diamond_pickaxe",
						count = 1,
					},
					{
						name = "minecraft:diamond_pickaxe",
						count = 1,
					},
					{
						name = "minecraft:diamond_pickaxe",
						count = 1,
					},
					{
						name = "minecraft:diamond_pickaxe",
						count = 1,
					},
					{
						name = "minecraft:diamond_pickaxe",
						count = 1,
					},
					{
						name = "minecraft:diamond_pickaxe",
						count = 1,
					},
				},
			},
		},
		postList = {
			{
				-- we don't actually check this
			},
			{
				[7] = {
					name = "minecraft:diamond_helmet",
					count = 1,
				},
				[8] = {
					name = "minecraft:diamond_helmet",
					count = 1,
				},
				[9] = {
					name = "minecraft:diamond_helmet",
					count = 1,
				},
				[10] = {
					name = "minecraft:diamond_pickaxe",
					count = 1,
				},
				[11] = {
					name = "minecraft:diamond_pickaxe",
					count = 1,
				},
				[12] = {
					name = "minecraft:diamond_pickaxe",
					count = 1,
				},
				[13] = {
					name = "minecraft:diamond_pickaxe",
					count = 1,
				},
				[14] = {
					name = "minecraft:diamond_pickaxe",
					count = 1,
				},
				[15] = {
					name = "minecraft:diamond_pickaxe",
					count = 1,
				},
			},

			{
				[15] = {
					name = "minecraft:diamond_pickaxe",
					count = 1,
				},
				[2] = {
					name = "minecraft:enchanted_book",
					count = 1,
				},
				[3] = {
					name = "minecraft:enchanted_book",
					count = 1,
				},
				[5] = {
					name = "minecraft:enchanted_book",
					count = 1,
				},
				[6] = {
					name = "minecraft:enchanted_book",
					count = 1,
				},
				[12] = {
					name = "minecraft:diamond_pickaxe",
					count = 1,
				},
			},
			{
				{
					name = "minecraft:enchanted_book",
					count = 1,
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
				},
				{
					name = "minecraft:diamond_helmet",
					count = 1,
				},
				{
					name = "minecraft:diamond_helmet",
					count = 1,
				},
				{
					name = "minecraft:diamond_helmet",
					count = 1,
				},
				{
					name = "minecraft:diamond_pickaxe",
					count = 1,
				},
				{
					name = "minecraft:diamond_pickaxe",
					count = 1,
				},
				{
					name = "minecraft:diamond_pickaxe",
					count = 1,
				},
				[15] = {
					name = "minecraft:diamond_pickaxe",
					count = 1,
				},
			},
			{
				{
					name = "minecraft:enchanted_book",
					count = 1,
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
				},
			},
			{
				{
					name = "minecraft:enchanted_book",
					count = 1,
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
				},
				{
					name = "minecraft:enchanted_book",
					count = 1,
				},
				{
					name = "minecraft:diamond_helmet",
					count = 1,
				},
				{
					name = "minecraft:diamond_helmet",
					count = 1,
				},
				{
					name = "minecraft:diamond_helmet",
					count = 1,
				},
				{
					name = "minecraft:diamond_pickaxe",
					count = 1,
				},
				{
					name = "minecraft:diamond_pickaxe",
					count = 1,
				},
				{
					name = "minecraft:diamond_pickaxe",
					count = 1,
				},
				[15] = {
					name = "minecraft:diamond_pickaxe",
					count = 1,
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
				_type = "error",
			},
			list = {
				result = {},
			},
			stock = {
				result = {
					{
						name = "minecraft:diamond_pickaxe",
						count = 1,
					},
					{
						name = "minecraft:diamond_pickaxe",
						count = 1,
					},
					{
						name = "minecraft:diamond_pickaxe",
						count = 2,
					},
					{
						name = "minecraft:diamond_pickaxe",
						count = 1,
					},
					{
						name = "minecraft:diamond_pickaxe",
						count = 1,
					},
					{
						name = "minecraft:diamond_helmet",
						count = 1,
					},
					{
						name = "minecraft:diamond_helmet",
						count = 1,
					},
					{
						name = "minecraft:diamond_helmet",
						count = 1,
					},
					{
						name = "minecraft:enchanted_book",
						count = 2,
					},
					{
						name = "minecraft:enchanted_book",
						count = 2,
					},
					{
						name = "minecraft:enchanted_book",
						count = 2,
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



-- second request seems to request only the first three books, one by one
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
