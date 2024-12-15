local lazy = require("lazy")

lazy.setup({
	{ "numToStr/Comment.nvim" },
	{ "rainbowhxch/accelerated-jk.nvim" },
	{ "smoka7/hop.nvim", version = "*" },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{ "nvim-treesitter/nvim-treesitter-textobjects" },
	{
		"folke/flash.nvim",
		event = "VeryLazy",
	},
	{
		"gbprod/yanky.nvim",
	},
})

-- require("accelerated-jk").setup({
--     mode = "time_driven",
--     enable_deceleration = true,  -- 启用减速度以实现更顺畅的停止
--     acceleration_motions = { "j", "k" },  -- 应用于 'j' 和 'k' 方向键
--     acceleration_limit = 200,  -- 设置加速度的速度上限，单位为毫秒
--     acceleration_table = {
--         1,  -- 第一次按键间隔为 1ms
--         2,  -- 第二次按键间隔为 2ms
--         3,  -- 第三次按键间隔为 3ms
--         4,  -- 以此类推，逐步递增以实现平滑加速
--         5,
--         6,
--         7,
--         8,
--         9,
--         10
--     },
--     deceleration_table = {  -- 减速度表，逐步增加按键间隔以实现平滑减速
--         { 150, 3 },   -- 当加速达到 150ms 时，减速步骤为 3ms
--         { 300, 6 },   -- 当加速达到 300ms 时，减速步骤为 6ms
--         { 450, 9 },   -- 依此类推
--         { 600, 12 },
--         { 750, 15 },
--         { 900, 9999 }  -- 最后一个阶段，几乎停止加速
--     },
-- })

-- vim.api.nvim_set_keymap("n", "j", "<Plug>(accelerated_jk_gj)", {})
-- vim.api.nvim_set_keymap("n", "k", "<Plug>(accelerated_jk_gk)", {})


vim.notify("all plugins for vscode load!")
