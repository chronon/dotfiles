local colorscheme = os.getenv("COLORSCHEME_NVIM") or "catppuccin"

return {
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    name = "kanagawa",
    opts = {
      overrides = function(colors)
        return {
          IlluminatedWordText = { bg = colors.palette.waveBlue1 },
          IlluminatedWordRead = { bg = colors.palette.waveBlue1 },
          IlluminatedWordWrite = { bg = colors.palette.waveBlue1 },
        }
      end,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = colorscheme,
    },
  },

  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    opts = {
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = "<C-CR>",
          accept_word = "<C-W>",
          accept_line = "<C-L>",
        },
      },
      panel = { enabled = false },
    },
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },
}

-- {
--   "Exafunction/codeium.vim",
--   event = "InsertEnter",
--   init = function()
--     vim.g.codeium_filetypes = {}
--   end,
--   config = function()
--     vim.keymap.set("i", "<C-CR>", function()
--       return vim.fn["codeium#Accept"]()
--     end, { expr = true })
--     vim.keymap.set("i", "<c-;>", function()
--       return vim.fn["codeium#CycleCompletions"](1)
--     end, { expr = true })
--     vim.keymap.set("i", "<c-,>", function()
--       return vim.fn["codeium#CycleCompletions"](-1)
--     end, { expr = true })
--     vim.keymap.set("i", "<c-x>", function()
--       return vim.fn["codeium#Clear"]()
--     end, { expr = true })
--   end,
-- },
