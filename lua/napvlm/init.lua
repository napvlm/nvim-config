require("napvlm.remap")
require("napvlm.macos")
vim.cmd("set relativenumber")
vim.cmd("set number")
vim.cmd("colorscheme onedark")
vim.cmd("set autoindent expandtab tabstop=2 shiftwidth=2")
require("luasnip.loaders.from_vscode").lazy_load()
require("Comment").setup()
require("guess-indent").setup({})
require("nvim-treesitter.configs").setup({
	autotag = {
		enable = true,
	},
})
require("lualine").get_config()
require("gitsigns").setup({})
require("colorizer").setup()
require("ibl").setup()
vim.diagnostic.config({
	update_in_insert = true,
})
require('telescope').setup{
  defaults = {
    file_ignore_patterns = {
      "node_modules"
    }
  }
}
