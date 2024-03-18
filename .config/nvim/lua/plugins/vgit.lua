local plugin = {
  'tanvirtin/vgit.nvim',
}

function plugin.config()
  local vg = require('vgit')

  vg.setup()
end

return plugin
