return {
  'akinsho/toggleterm.nvim',
  version = '*',
  cmd = { 'ToggleTerm', 'ToggleTermToggleAll' },
  keys = {
    { '<C-\\>', desc = 'Toggle terminal' },
    { '<leader>tf', '<cmd>ToggleTerm direction=float<CR>', desc = 'Terminal: float' },
    { '<leader>th', '<cmd>ToggleTerm direction=horizontal<CR>', desc = 'Terminal: horizontal' },
    { '<leader>tv', '<cmd>ToggleTerm direction=vertical<CR>', desc = 'Terminal: vertical' },
  },
  opts = {
    open_mapping = [[<C-\>]],
    direction = 'float',
    shade_terminals = true,
    float_opts = {
      border = 'curved',
    },
    size = function(term)
      if term.direction == 'horizontal' then
        return 15
      elseif term.direction == 'vertical' then
        return math.floor(vim.o.columns * 0.4)
      end
    end,
  },
  config = function(_, opts)
    require('toggleterm').setup(opts)

    -- Make window-navigation keymaps work from inside terminal mode too,
    -- matching the normal-mode <C-hjkl> bindings in configs/keymap.lua
    local function set_terminal_keymaps()
      local map_opts = { buffer = 0 }
      vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], map_opts)
      vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], map_opts)
      vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], map_opts)
      vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], map_opts)
    end

    vim.api.nvim_create_autocmd('TermOpen', {
      group = vim.api.nvim_create_augroup('toggleterm-keymaps', { clear = true }),
      pattern = 'term://*toggleterm#*',
      callback = set_terminal_keymaps,
    })
  end,
}
