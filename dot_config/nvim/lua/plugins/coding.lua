return {
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load({ paths = "~/.config/snippets" })
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      opts.completion = {
        autocomplete = {},
      }

      local luasnip = require("luasnip")
      local cmp = require("cmp")

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { "i", "s" }),
      })
    end,
    init = function()
      local cmp = require("cmp")
      vim.api.nvim_create_user_command("CmpAutoOn", function()
        cmp.setup({
          completion = {
            autocomplete = { require("cmp.types").cmp.TriggerEvent.TextChanged },
          },
        })
      end, {})
      vim.api.nvim_create_user_command("CmpAutoOff", function()
        cmp.setup({
          completion = {
            autocomplete = {},
          },
        })
      end, {})
    end,
  },
}
