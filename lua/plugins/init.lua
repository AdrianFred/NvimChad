return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    event = "BufWritePre",
    config = function()
      require "configs.treesitter"
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      -- {
      --   "supermaven-inc/supermaven-nvim",
      --   opts = {},
      -- },
      {
        -- snippet plugin
        "L3MON4D3/LuaSnip",
        dependencies = "rafamadriz/friendly-snippets",
        opts = { history = true, updateevents = "TextChanged,TextChangedI" },
        config = function(_, opts)
          require("luasnip").config.set_config(opts)
          require "nvchad.configs.luasnip"
          local ls = require "luasnip"
          ls.filetype_extend("javascriptreact", { "html" })
          ls.filetype_extend("typescriptreact", { "html" })
        end,
      },
    },

    opts = {
      sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "nvim_lua" },
        { name = "path" },
        -- { name = "supermaven" },
      },
    },
  },
}
