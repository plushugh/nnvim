return {
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
    opts = {
      icons = {
        mappings = true,
      },

      -- TODO: Update which-key
      -- Document existing key chains
      spec = {
        { '<leader>c', group = 'Code', mode = { 'n', 'x' } },
        { '<leader>d', group = 'Document' },
        { '<leader>l', group = 'LSP' },
        { '<leader>s', group = 'Search' },
        { '<leader>g', group = 'Git' },
        { '<leader>gh', group = 'Git Hunk' },
        { '<leader>t', group = 'Toggle Opts' },
        { '<leader>x', group = 'Trouble' },
        { '<leader>b', group = 'Buffer' },
        { '<leader>bs', group = 'Buffer Sort' },
      },
    },
  },
}
