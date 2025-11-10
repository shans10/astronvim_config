-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

if not vim.g.neovide then
  return {} -- do nothing if not in a Neovide session
end

return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = { -- configure vim.opt options
        -- line spacing
        linespace = 0,
      },
      g = { -- configure vim.g variables
        neovide_remember_window_size = true,
        neovide_hide_mouse_when_typing = true,
        neovide_no_idle = true,

        -- Cursor
        neovide_cursor_animation_length = 0.03,
        neovide_cursor_trail_size = 0.1,
      },
    },
  },
}
