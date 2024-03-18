local M = {
  "ellisonleao/gruvbox.nvim",
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
}

function M.config()
  local gb = require("gruvbox")

  gb.setup({
    italic = {
      strings = true,
      emphasis = true,
      comments = true,
      operators = false,
      folds = true,
    },
  })

  vim.o.background = "dark"
  vim.cmd([[colorscheme gruvbox]])
end

return M
