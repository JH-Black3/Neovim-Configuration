return{
	{
	"nvim-neo-tree/neo-tree.nvim",
    keys = {
      -- { "<leader>ft", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
      { "<C-n>", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
    },
    config = function()
      require("neo-tree").setup()
    end,
	},
	{
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function(plugin)
      if vim.fn.executable "npx" then
        vim.cmd("!cd " .. plugin.dir .. " && cd app && npx --yes yarn install")
      else
        vim.cmd [[Lazy load markdown-preview.nvim]]
        vim.fn["mkdp#util#install"]()
      end
    end,
    init = function()
      if vim.fn.executable "npx" then vim.g.mkdp_filetypes = { "markdown" } end
    end,
	},
	{'jiangmiao/auto-pairs'},
	{'preservim/tagbar'},
	{'lewis6991/gitsigns.nvim'},
	{'SirVer/ultisnips'},
	{'neoclide/coc.nvim',
	branch = "release",
    build = "npm install --frozen-lockfile", },
}
