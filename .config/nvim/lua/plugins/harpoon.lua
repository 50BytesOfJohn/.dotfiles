local M = {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
}

local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
  local file_paths = {}
  for _, item in ipairs(harpoon_files.items) do
    table.insert(file_paths, item.value)
  end

  require("telescope.pickers")
      .new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
          results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
      })
      :find()
end

function M.config()
  local harpoon = require("harpoon")

  -- REQUIRED
  harpoon:setup()
  -- REQUIRED

  -- keymaps
  local wk = require("which-key")

  wk.register({
    ["<leader>a"] = {
      function()
        harpoon:list():append()
      end,
      "Add mark",
    },
    ["<Tab>"] = {
      function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      "Toggle harpoon menu",
    },

    ["<leader>et"] = {
      function()
        toggle_telescope(harpoon:list())
      end,
      "Toggle harpoon in telescope",
    },
    ["<leader>eh"] = {
      function()
        harpoon:list():prev()
      end,
      "Previous mark",
    },
    ["<leader>el"] = {
      function()
        harpoon:list():next()
      end,
      "Next mark",
    },
  })
end

return M
