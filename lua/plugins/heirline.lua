-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Heirline

---@type LazySpec
return {
  "rebelot/heirline.nvim",
  dependencies = {
    "AstroNvim/astrocore",
    opts = function(_, opts)
      local maps = opts.mappings
      maps.n["<Leader>bB"] = {
        function()
          require("astroui.status.heirline").buffer_picker(function(bufnr) vim.api.nvim_win_set_buf(0, bufnr) end)
        end,
        desc = "Select buffer from tabline",
      }
      maps.n["<Leader>bD"] = {
        function()
          require("astroui.status.heirline").buffer_picker(function(bufnr) require("astrocore.buffer").close(bufnr) end)
        end,
        desc = "Close buffer from tabline",
      }
    end,
  },
  opts = function(_, opts)
    local status = require "astroui.status"

    -- Disable winbar
    opts.winbar = nil

    -- Statusline with filename
    opts.statusline = { -- statusline
      hl = { fg = "fg", bg = "bg" },
      status.component.mode(),
      status.component.git_branch(),
      status.component.file_info {
        file_icon = false,
        filetype = false,
        filename = { modify = ":." }
      },
      status.component.git_diff(),
      status.component.diagnostics(),
      status.component.fill(),
      status.component.cmd_info(),
      status.component.fill(),
      status.component.lsp(),
      status.component.virtual_env(),
      status.component.treesitter(),
      status.component.file_info { file_modified = false, file_read_only = false, surround = { separator = "right" } },
      status.component.nav(),
      status.component.mode({ surround = { separator = "right" } }),
    }
  end,
}
