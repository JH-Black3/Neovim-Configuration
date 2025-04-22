local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "Find File"})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "Grep from files"})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "Show buffers"})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "Need help"})

vim.keymap.set('n', '<leader>ft', '<cmd>TagbarToggle<CR>', {desc = "Show tagbar"})

-- Configure gitsigns
local gs = require('gitsigns')
vim.keymap.set('n', '<leader>gd', gs.preview_hunk, {desc = 'Show Change'})
vim.keymap.set('n', '<leader>gj', gs.next_hunk, {desc = 'Next Change'})
vim.keymap.set('n', '<leader>gk', gs.prev_hunk, {desc = 'Previous Change'})
vim.keymap.set('n', '<leader>ga', gs.stage_hunk, {desc = 'Add'})
vim.keymap.set('n', '<leader>gu', gs.undo_stage_hunk, {desc = 'Undo'})

-- Split
vim.keymap.set('n', '<leader>sl', '<cmd>set splitright<CR>:vsplit<CR>')
vim.keymap.set('n', '<leader>sh', '<cmd>set nosplitright<CR>:vsplit<CR>')
vim.keymap.set('n', '<leader>sj', '<cmd>set splitbelow<CR>:split<CR>')
vim.keymap.set('n', '<leader>sk', '<cmd>set nosplitbelow<CR>:split<CR>')

-- Check spell
vim.keymap.set('n', '<leader>qc', '<cmd>set spell<CR>', {desc = "Check Spell"})

-- vim.api.nvim_set_keymap('i', '<TAB>', 'coc#pum#visible() ? coc#pum#next(1) : v:lua.CheckBackspace() ? "<TAB>" : coc#refresh()', {expr = true, silent = true, noremap = true})
vim.api.nvim_set_keymap('i', '<S-TAB>', 'coc#pum#visible() ? coc#pum#prev(1) : "<C-h>"', {expr = true, silent = true, noremap = true})

function _G.CheckBackspace()
  local col = vim.fn.col('.') - 1
  return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

vim.api.nvim_set_keymap('i', '<TAB>', 'coc#pum#visible() ? coc#pum#confirm() : "<TAB>"', {expr = true, silent = true, noremap = true})
