local options = {
  ensure_installed = {
    "vim",
    "lua",
    "vimdoc",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "json",
    "yaml",
    "markdown",
    "go",
    "rust",
    "python",
    "vue",
  },
  highlight = {
    enable = true,
    use_languagetree = true,
  },
  indent = {
    enable = true,
  },
}

require("nvim-treesitter.configs").setup(options)
