return {
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false
      local map = vim.api.nvim_set_keymap
      -- Move to previous/next
      map('n', 'H', '<Cmd>BufferPrevious<CR>', { noremap = true, silent = true, desc = 'Prev tab' })
      map('n', 'L', '<Cmd>BufferNext<CR>', { noremap = true, silent = true, desc = 'Next tab' })
      -- Re-order to previous/next
      map('n', '<M-u>', '<Cmd>BufferMovePrevious<CR>', { noremap = true, silent = true, desc = 'Move tab left' })
      map('n', '<M-i>', '<Cmd>BufferMoveNext<CR>', { noremap = true, silent = true, desc = 'Move tab right' })
      -- Pin buffer
      map('n', '<leader>bp', '<Cmd>BufferPin<CR>', { noremap = true, silent = true, desc = 'Pin buffer' })
      -- Close buffer
      map('n', '<leader>bw', '<Cmd>BufferClose<CR>', { noremap = true, silent = true, desc = 'Close buffer' })
      map('n', '<M-w>', '<Cmd>BufferClose<CR>', { noremap = true, silent = true, desc = 'Close buffer' })
      -- Pick buffer
      map('n', '<leader>bj', '<Cmd>BufferPick<CR>', { noremap = true, silent = true, desc = 'Pick tab' })
      -- Sort buffer
      map('n', '<leader>bsd', '<Cmd>BufferOrderByDirectory<CR>', { noremap = true, silent = true, desc = 'Sort by directory' })
      map('n', '<leader>bsl', '<Cmd>BufferOrderByLanguage<CR>', { noremap = true, silent = true, desc = 'Sort by language' })
      map('n', '<leader>bsn', '<Cmd>BufferOrderByName<CR>', { noremap = true, silent = true, desc = 'Sort by name' })
      map('n', '<leader>bsw', '<Cmd>BufferOrderByWindowNumber<CR>', { noremap = true, silent = true, desc = 'Sort by window number' })
      map('n', '<leader>bsb', '<Cmd>BufferOrderByBufferNumber<CR>', { noremap = true, silent = true, desc = 'Sort by buffer number' })
    end,
    opts = {
      exclude_ft = { '' }, -- Hide empty buffers
      sidebar_filetypes = { ['neo-tree'] = 'BufWipeout' },
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
}
