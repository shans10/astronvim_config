-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Heirline

---@type LazySpec
return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  opts = {
    flavour = "mocha",
    -- Disable transparency ONLY if running in Neovide
    transparent_background = not vim.g.neovide,
    float = {
      transparent = true,
    },
  },
}
