-- Hint: use `:h <option>` to figure out the meaning if needed
vim.opt.clipboard = 'unnamedplus' -- use system clipboard
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
vim.opt.mouse = 'a' -- allow the mouse to be used in Nvim

-- Tab
vim.opt.tabstop = 4 -- number of visual spaces per TAB
vim.opt.softtabstop = 4 -- number of spacesin tab when editing
vim.opt.shiftwidth = 4 -- insert 4 spaces on a tab
vim.opt.expandtab = false -- tabs are spaces, mainly because of python

-- UI config
vim.opt.number = true -- show absolute number
vim.opt.relativenumber = true -- add numbers to each line on the left side
vim.opt.cursorline = true -- highlight cursor line underneath the cursor horizontally
vim.opt.splitbelow = true -- open new vertical split bottom
vim.opt.splitright = true -- open new horizontal splits right
-- vim.opt.termguicolors = true        -- enabl 24-bit RGB color in the TUI
-- vim.opt.showmode = false -- we are experienced, wo don't need the "-- INSERT --" mode hint

-- Searching
vim.opt.incsearch = true -- search as characters are entered
vim.opt.hlsearch = true -- highlight matches
vim.opt.ignorecase = true -- ignore case in searches by default
vim.opt.smartcase = true -- but make it case sensitive if an uppercase is entered

-- vim.cmd.colorscheme('solarized-osaka-storm')
-- vim.cmd.colorscheme('tokyonight-moon')
-- vim.cmd.colorscheme('desert')

vim.cmd.colorscheme('vim')
vim.api.nvim_set_hl(0, 'Normal', {guibg=NONE})
vim.api.nvim_set_hl(0, 'Pmenu', {bg = "#3B4252", fg = "#ECEFF4"})
vim.api.nvim_set_hl(0, 'NonText', {guibg=NONE})
vim.api.nvim_set_hl(0, 'Comment', {italic=true, fg="#5f87af"})
vim.api.nvim_set_hl(0, 'LineNr', {fg="#ff7f50"})
vim.api.nvim_set_hl(0, 'CursorLineNr', {fg="#e06c75", bg="#282c34"})

vim.g.UltiSnipsSnippetDirectories={'/home/jh/.config/nvim/Ultisnips/'}
vim.g.rainbow={'1'}

require("notify").setup({
	background_colour = "#000000",
})

require'treesitter-context'.setup{
  enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
  max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
  min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
  line_numbers = true,
  multiline_threshold = 20, -- Maximum number of lines to show for a single context
  trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
  mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
  -- Separator between context and content. Should be a single character string, like '-'.
  -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
  separator = '*',
  zindex = 20, -- The Z-index of the context window
  on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
}

vim.g.vimtex_compiler_latexmk = {
	executable = 'latexmk',
	options = {
		'-file-line-error',
		'-synctex=1',
		'-interaction=nonstopmode',
		},
}
