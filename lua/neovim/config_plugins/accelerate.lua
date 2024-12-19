require("accelerated-jk").setup({
    mode = "time_driven",
    -- enable_deceleration = true,  -- 启用减速模式
    acceleration_motions = { "j", "k" },  -- 应用于 'j' 和 'k' 按键
    acceleration_limit = 200,  -- 将加速上限调低，更快达到速度极限
    acceleration_table = {
        0.2,
        0.5,
        1,  -- 第一次按键间隔 1ms
        1,  -- 第二次按键间隔保持 1ms
        2,  -- 第三次按键间隔为 2ms
        2,  -- 稍慢递增，保证平滑过渡
        3,
        3,
        4,
        4,
        5,  -- 最终达到较平滑的速度
    },
    deceleration_table = {
        { 80, 2 },    -- 当加速达到 80ms 时，减速步长为 2ms
        { 160, 4 },   -- 当加速达到 160ms 时，减速步长为 4ms
        { 240, 6 },   -- 当加速达到 240ms 时，减速步长为 6ms
        { 320, 8 },   -- 进一步减速
        { 400, 9999 } -- 最后阶段完全停止
    },
})

-- 快捷键绑定，启用 `accelerated-jk`
vim.api.nvim_set_keymap("n", "j", "<Plug>(accelerated_jk_gj)", {})
vim.api.nvim_set_keymap("n", "k", "<Plug>(accelerated_jk_gk)", {})