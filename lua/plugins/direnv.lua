-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Install direnv

---@type LazySpec
return {
  "NotAShelf/direnv.nvim",
  event = "VeryLazy",
  dependencies = {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["<Leader>D"] = { desc = "Direnv" },
        },
      },
      -- autocmds = {
      --   direnv_envload_notification = {
      --     {
      --       event = "User",
      --       pattern = "DirenvLoaded",
      --       callback = function()
      --         -- Code to run after direnv environment is loaded
      --         vim.notify("Environment loaded successfully!", vim.log.levels.INFO, { title = "Direnv" })
      --       end,
      --     },
      --   },
      -- },
    },
  },
  opts = {
    -- Whether to automatically load direnv when entering a directory with .envrc
    autoload_direnv = true,
    -- Keyboard mappings
    keybindings = {
      allow = "<Leader>Da",
      deny = "<Leader>Dd",
      reload = "<Leader>Dr",
      edit = "<Leader>De",
    },
    -- Notification settings
    notifications = {
      -- Log level (vim.log.levels.INFO, ERROR, etc.)
      level = vim.log.levels.INFO,
      -- Don't show notifications during autoload
      silent_autoload = true,
    },
  },
}
