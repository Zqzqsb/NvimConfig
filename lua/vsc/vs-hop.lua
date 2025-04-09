-- hop 插件相关的配置
local status, hop = pcall(require, "hop")
if not status then
	vim.notify("没有找到 hop")
	return
end

-- 配置 hop 插件的参数
hop.setup({
    keys = "etovxqpdygfblzhckisuran",  -- 设置跳转字符的键盘布局
    multi_windows = true,  -- 允许在多个窗口之间跳转
    case_insensitive = false,  -- 区分大小写
    jump_on_sole_occurrence = false,  -- 不会自动跳转到唯一匹配
})

vim.notify("hop load!")
-- 在normal模式下绑定为快捷键 r 
vim.api.nvim_set_keymap("n", "r", ":HopChar1<CR>", {})
