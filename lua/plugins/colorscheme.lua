return {
  {
    "craftzdog/solarized-osaka.nvim",
    priority = 1000,
	lazy = true,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
  {
  "folke/tokyonight.nvim",
	  lazy = false,
	  priority = 1000,
	  opts = function()
		  return {
			  -- transparent = true,
		  }
	  end,
	},
	{ "EdenEast/nightfox.nvim" },
}

