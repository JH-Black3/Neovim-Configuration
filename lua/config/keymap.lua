local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "Find File"})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "Grep from files"})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "Show buffers"})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "Need help"})

vim.keymap.set('n', '<leader>ft', '<cmd>TagbarToggle<CR>', {desc = "Show tagbar"})
