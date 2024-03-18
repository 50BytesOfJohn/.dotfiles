local M = {
  "j-morano/buffer_manager.nvim",
  dependencies = {
    {
      "nvim-lua/plenary.nvim",
    },
  },
}

function M.config()
  local wk = require "which-key"

  wk.register {
    ["<leader>bm"] = { "<cmd>lua require('buffer_manager.ui').toggle_quick_menu()<cr>", "Open Ranger in floating window" },
  }
end


return M
