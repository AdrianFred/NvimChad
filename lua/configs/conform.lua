local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    -- typescript = { "prettierd", "prettier" },
    -- javascript = { "prettierd", "prettier" },
    -- javascriptreact = { "prettierd", "prettier" },
    -- typescriptreact = { "prettierd", "prettier" },
    javascriptreact = { "biome" },
    typescriptreact = { "biome" },
    javascript = { "biome" },
    typescript = { "biome" },
    vue = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
