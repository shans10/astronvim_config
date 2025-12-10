-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      update_in_insert = false,
      virtual_text = { current_line = true, severity = { min = vim.diagnostic.severity.WARN } },
      virtual_lines = { current_line = true, severity = { min = vim.diagnostic.severity.WARN } },
    },
    features = {
      diagnostics = { virtual_lines = false },
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        conceallevel = 1, -- enable conceal
        list = true, -- show whitespace characters
        listchars = { tab = "│→", extends = "⟩", precedes = "⟨", trail = "·", nbsp = "␣" }, -- set whitespace chars
        showbreak = "↪ ", -- set break char
        showtabline = (vim.t.bufs and #vim.t.bufs > 1) and 2 or 1, -- show tabline when more than 1 buffer
        scrolloff = 10, -- keep scroll position away from edges
        shell = "/usr/bin/fish",
        swapfile = false, -- disable swapfile creation
        wrap = true, -- soft wrap lines
        whichwrap = vim.opt.whichwrap:append "<,>[,],h,l", -- automatically go to next line
      },
    },
  },
}
