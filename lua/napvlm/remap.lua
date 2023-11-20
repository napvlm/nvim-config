vim.g.mapleader = ' '; 
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>yt', '<Cmd>JestFile<CR>', opts)
-- prettier setup without any plugins
vim.keymap.set('n', '<leader>mp', "<Cmd>:%!npx prettier --stdin-filepath %<CR>")
