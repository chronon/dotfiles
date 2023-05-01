return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        file_ignore_patterns = {
          "composer.lock",
          "package-lock.json",
          "yarn.lock",
        },
        mappings = {
          i = {
            ["<c-t>"] = function(...)
              return require("telescope.actions").select_tab(...)
            end,
          },
        },
      },
    },
    -- keys = {
    --   { "<C-p>", "<cmd>Telescope find_files<cr>" },
    --   { "<C-g>", "<cmd>Telescope live_grep<cr>" },
    --   { "<C-b>", "<cmd>Telescope buffers<cr>" },
    --   { "<C-s>", "<cmd>Telescope lsp_document_symbols<cr>" },
    --   { "<C-t>", "<cmd>Telescope treesitter<cr>" },
    --   { "<C-m>", "<cmd>Telescope lsp_document_symbols default_text=:method:<cr>" },
    --   { "<C-c>", "<cmd>Telescope commands<cr>" },
    --   { "<C-f>", "<cmd>Telescope file_browser<cr>" },
    --   { "<leader>tw", [[<cmd>lua require('telescope.builtin').grep_string()<cr>]] },
    -- },
  },
}
