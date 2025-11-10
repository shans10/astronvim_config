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
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        list = true, -- enable whitespace rendering
        listchars = vim.opt.listchars:append { tab = "› ", trail = "•" }, -- change whitespace characters
        scrolloff = 10, -- keep scroll position away from edges
        shell = "/usr/bin/fish",
        swapfile = false, -- disable swapfile creation
        wrap = false, -- sets vim.opt.wrap
        whichwrap = vim.opt.whichwrap:append "<,>[,],h,l", -- automatically go to next line
      },
    },
  },
}
