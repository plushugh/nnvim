return {
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- these two are godsends
      -- imagine typing srnq" and replacing ' with "
      require('mini.ai').setup { n_lines = 500 }
      require('mini.surround').setup()
      -- TODO: Add more mini.stuff

      local statusline = require 'mini.statusline'
      statusline.setup { use_icons = true }
    end,
  },
}
