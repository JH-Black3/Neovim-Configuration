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
	  lazy = true,
	  priority = 1000,
	  opts = function()
		  return {
			  transparent = true,
		  }
	  end,
	},
}

