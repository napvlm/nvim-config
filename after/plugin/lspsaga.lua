local status, saga = pcall(require, "lspsaga")
if not status then
	return
end

saga.setup({
	server_filetype_map = {
		typescript = "typescript",
		html = "html",
		css = "cssls",
	},
})

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", opts)
vim.keymap.set("v", "gr", "<Cmd>Lspsaga rename<CR>", opts)
vim.keymap.set("v", "gW", "<Cmd>Lspsaga project_replace old_name<CR>", opts)
vim.keymap.set("n", ">", "<Cmd>Lspsaga code_action<CR>", opts)
vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
