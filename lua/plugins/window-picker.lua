return {
  's1n7ax/nvim-window-picker',
  name = 'window-picker',
  event = 'VeryLazy',
  version = '2.*',
  opts = {
    hint = 'floating-big-letter',
  },
  config = function(_, opts)
    require('window-picker').setup(opts)

    vim.keymap.set('n', '<leader>ww', function()
      local picked_window_id = require('window-picker').pick_window()
      if picked_window_id then
        vim.api.nvim_set_current_win(picked_window_id)
      end
    end, { desc = 'Pick window' })
  end,
}
