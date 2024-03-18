local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
}

function M.config()
  require("nvim-treesitter.configs").setup({
    ensure_installed = {
      "lua",
      "markdown",
      "markdown_inline",
      "bash",
      "python",
      "tsx",
      "typescript",
      "html",
      "gleam",
      "gitignore",
      "dockerfile",
      "dot",
      "css",
    },
    highlight = { enable = true },
    indent = { enable = true },
  })
end

return M
