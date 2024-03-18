local M = {
  "nvim-tree/nvim-tree.lua",
  event = "VeryLazy",
}

function M.config()
  local wk = require "which-key"
  wk.register {
    ["<leader>e"] = { "<cmd>NvimTreeToggle<CR>", "Explorer" },
  }

  require("nvim-tree").setup()
end

return M
