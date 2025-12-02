-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize AstroCore Mappings

return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        --- NORMAL MODE --
        n = {
          -- Disable mappings
          ["<Leader>bse"] = false,
          ["<Leader>bsi"] = false,
          ["<Leader>bsm"] = false,
          ["<Leader>bsp"] = false,
          ["<Leader>bsr"] = false,

          -- Usability remaps
          ["J"] = { "mzJ`z" },
          ["<C-d>"] = { "<C-d>zz" },
          ["<C-u>"] = { "<C-u>zz" },

          -- Standard Leader-key operations
          ["<Leader><C-w>"] = { "<cmd>cd %:p:h<cr>", desc = "Set CWD to current file" },

          -- Better increment/decrement
          ["-"] = { "<C-x>", desc = "Decrement number" },
          ["+"] = { "<C-a>", desc = "Increment number" },

          -- External terminal
          ["<Leader>tt"] = { "<cmd>!kgx<cr><cr>", desc = "Open external terminal in cwd" },

          -- Navigate buffer tabs
          ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
          ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

          -- Buffer operations
          ["<Leader>ba"] = { "ggVG", desc = "Select all" },
          ["<Leader>bb"] = { function() require("snacks").picker.buffers() end, desc = "List open buffers" },
          ["<Leader>bd"] = { function() require("astrocore.buffer").close() end, desc = "Delete buffer" },
          ["<Leader>bf"] = { function() require("astrocore.buffer").close(0, true) end, desc = "Force delete buffer" },
          ["<Leader>bi"] = { "gg=G", desc = "Indent all" },
          ["<Leader>bs"] = { "<cmd>w<cr>", desc = "Save buffer" },
          ["<Leader>bS"] = { "<cmd>wa<cr>", desc = "Save all buffers" },
          ["<Leader>bt"] = { "<cmd>%s/\\s\\+$//e | noh<cr>", desc = "Remove trailing whitespaces" },
          ["<Leader>by"] = { "ggVGy", desc = "Yank buffer" },

          -- Buffer Sort
          ["<Leader>b<C-s>"] = { desc = require("astroui").get_icon("Sort", 1, true) .. "Sort Buffers" },
          ["<Leader>b<C-s>e"] = { function() require("astrocore.buffer").sort "extension" end, desc = "By extension" },
          ["<Leader>b<C-s>r"] = {
            function() require("astrocore.buffer").sort "unique_path" end,
            desc = "By relative path",
          },
          ["<Leader>b<C-s>p"] = { function() require("astrocore.buffer").sort "full_path" end, desc = "By full path" },
          ["<Leader>b<C-s>i"] = { function() require("astrocore.buffer").sort "bufnr" end, desc = "By buffer number" },
          ["<Leader>b<C-s>m"] = {
            function() require("astrocore.buffer").sort "modified" end,
            desc = "By modification",
          },

          -- ToggleTerm
          ["<M-/>"] = { '<Cmd>execute v:count . "ToggleTerm direction=float"<CR>', desc = "ToggleTerm float" }, -- floating
          ["<M-'>"] = { '<Cmd>execute v:count . "ToggleTerm size=17"<CR>', desc = "Toggle terminal" }, -- horizontal split
        },

        --- TERMINAL MODE ---
        t = {
          -- ToggleTerm
          ["<M-/>"] = { "<Cmd>ToggleTerm direction=float<CR>", desc = "ToggleTerm float" }, -- floating
          ["<M-'>"] = { "<Cmd>ToggleTerm size=17<CR>", desc = "Toggle terminal" }, -- horizontal split

          -- Exit terminal mode
          ["<Esc>"] = { "<C-\\><C-n>", desc = "Exit terminal mode" }, -- use escape to switch to normal mode from terminal mode
          ["<C-[>"] = { "<C-\\><C-n>", desc = "Exit terminal mode" }, -- use escape to switch to normal mode from terminal mode
        },

        --- INSERT MODE ---
        i = {
          -- Save File
          ["<C-s>"] = { "<Esc><cmd>w<cr>", desc = "Save file" },

          -- ToggleTerm
          ["<M-/>"] = { "<Esc><Cmd>ToggleTerm direction=float<CR>", desc = "ToggleTerm float" }, -- floating
          ["<M-'>"] = { "<Esc><Cmd>ToggleTerm size=17<CR>", desc = "Toggle terminal" }, -- horizontal split
        },

        --- VISUAL MODE ---
        x = {
          -- Better increment/decrement
          ["+"] = { "g<C-a>", desc = "Increment number" },
          ["-"] = { "g<C-x>", desc = "Decrement number" },

          -- Paste over text without losing it
          ["p"] = { [["_dP]], desc = "Paste with preserve" },
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      -- mappings to be set up on attaching of a language server
      mappings = {
        n = {
          -- a `cond` key can provided as the string of a server capability to be required to attach, or a function with `client` and `bufnr` parameters from the `on_attach` that returns a boolean
          gD = {
            function() vim.lsp.buf.declaration() end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
          gh = { function() vim.lsp.buf.hover() end, desc = "Hover symbol details" },
          gl = { function() vim.diagnostic.open_float() end, desc = "Hover diagnostics" },
        },
      },
    },
  },
}
