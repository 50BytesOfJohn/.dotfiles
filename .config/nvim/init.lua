require "core.launch"
require "core.options"
require "core.mappings"

-- LSP
spec "lsp.mason"
spec "lsp.lsp-config"
spec "lsp.cmp"
spec "lsp.none-ls"
spec "lsp.nvim-treesitter"

-- Plugins
spec "plugins.lualine"
spec "plugins.vim-tmux-navigator"
spec "plugins.which-key"
spec "plugins.nvim-web-devicons"
-- spec "plugins.nvim-tree"
spec "plugins.telescope"
-- spec "plugins.tabby"
spec "plugins.copilot"
spec "plugins.project"
spec "plugins.nvim-autopairs"
spec "plugins.comment"
spec "plugins.rnvimr"
spec "plugins.buffer-manager"
spec "plugins.harpoon"
spec "plugins.vgit"

-- Color scheme
-- Make sure that only one is uncommented
-- 
-- Made in this way to speed up theme switching
-- if you're freak like me and want to change them often :D
spec "themes.gruvbox"

-- Lazy setup
require "core.lazy"
