local M = {
	"kevinhwang91/rnvimr",
}

function M.config()
  local wk = require "which-key"
  wk.register {
    ["<leader>r"] = { "<cmd>:RnvimrToggle<cr>", "Open Ranger in floating window" },
  }

	vim.g.rnvimr_enable_ex = 1
	vim.g.rnvimr_enable_picker = 1
  vim.g.rnvimr_edit_cmd = 'drop'
end

return M
