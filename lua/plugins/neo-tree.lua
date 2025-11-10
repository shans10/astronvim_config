-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Neotree

---@type LazySpec
return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "AstroNvim/astrocore",
    opts = { mappings = { n = { ["<C-n>"] = { "<cmd>Neotree toggle<cr>", desc = "Toggle nvim-tree" } } } },
  },
  opts = {
    popup_border_style = "NC", -- or "" to use 'winborder' on Neovim v0.11+
    filesystem = {
      hijack_netrw_behavior = "open_default",
      filtered_items = {
        visible = true, -- show hidden/ignored files with different color
      },
    },
    source_selector = {
      winbar = false,
      statusline = false,
    },
  },
}
