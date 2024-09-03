return {
	{"nvimdev/dashboard-nvim",
    event = "VimEnter",
	opts = function(_, opts)
    opts.theme = "doom"
    opts.config = {
      header = {
					"			",
					"			",
					"			",
					"			",
					"			",
					"			",
					"			",
					"			",
					"██████╗ ██╗      █████╗  ██████╗██╗  ██╗████████╗██╗  ██╗██████╗ ███████╗███████╗",
					"██╔══██╗██║     ██╔══██╗██╔════╝██║ ██╔╝╚══██╔══╝██║  ██║██╔══██╗██╔════╝██╔════╝",
					"██████╔╝██║     ███████║██║     █████╔╝    ██║   ███████║██████╔╝█████╗  █████╗  ",
					"██╔══██╗██║     ██╔══██║██║     ██╔═██╗    ██║   ██╔══██║██╔══██╗██╔══╝  ██╔══╝  ",
					"██████╔╝███████╗██║  ██║╚██████╗██║  ██╗   ██║   ██║  ██║██║  ██║███████╗███████╗",
					"╚═════╝ ╚══════╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝",
					"			",
					"			",
					"			",
	  },
	  center = {
        { action = "ene | startinsert",                              desc = " New File",        icon = " ", key = "n" },
        { action = "Lazy",                                           desc = " Lazy",            icon = "󰒲 ", key = "l" },
        { action = function() vim.api.nvim_input("<cmd>qa<cr>") end, desc = " Quit",            icon = " ", key = "q" },
},
      footer = function()
        local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
      end,
    }

    -- Ensure the description and key format for the center buttons
    for _, button in ipairs(opts.config.center) do
      button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
      button.key_format = "  %s"
    end

    -- Open dashboard after closing lazy
    if vim.o.filetype == "lazy" then
      vim.api.nvim_create_autocmd("WinClosed", {
        pattern = tostring(vim.api.nvim_get_current_win()),
        once = true,
        callback = function()
          vim.schedule(function()
            vim.api.nvim_exec_autocmds("UIEnter", { group = "dashboard" })
          end)
        end,
      })
  end
    return opts
  end,
	dependencies = { {'nvim-tree/nvim-web-devicons'} }
	},
 {
   "folke/noice.nvim",
   opts = function(_, opts)
 	opts.presets = {
 -- opts.presets.bottom_search = true -- use a classic bottom cmdline for search
 -- opts.presets.command_palette = true -- position the cmdline and popupmenu together
 long_message_to_split = true, -- long messages will be sent to a split
 inc_rename = false, -- enables an input dialog for inc-rename.nvim
 -- opts.presets.lsp_doc_border = false -- add a border to hover docs and signature help
 }
   end,
 dependencies = {
   -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
   "MunifTanjim/nui.nvim",
   -- OPTIONAL:
   --   `nvim-notify` is only needed, if you want to use the notification view.
   --   If not available, we use `mini` as the fallback
   "rcarriga/nvim-notify",
   }
 },
}

