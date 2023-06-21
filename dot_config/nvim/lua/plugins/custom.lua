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
