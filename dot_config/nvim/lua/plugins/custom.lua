return {
  { "rebelot/kanagawa.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
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

  -- {
  --   "kylechui/nvim-surround",
  --   version = "*",
  --   event = "VeryLazy",
  --   config = function()
  --     require("nvim-surround").setup({})
  --   end,
  -- },

  -- {
  --   "numToStr/Comment.nvim",
  --   event = "VeryLazy",
  --   config = true,
  -- },
}
