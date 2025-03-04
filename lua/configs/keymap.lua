-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>lQ', vim.diagnostic.setloclist, { desc = '[LSP] Open diagnostic Quickfix list' })

-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<leader>q', '<cmd>q<CR>', { desc = 'quit' })

--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Focus left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Focus right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Focus lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Focus upper window' })

--  Resize with ALT+<Left/Right/Up/Down>
vim.keymap.set('n', '<M-H>', '<C-w><')
vim.keymap.set('n', '<M-L>', '<C-w>>')
vim.keymap.set('n', '<M-K>', '<C-w>+')
vim.keymap.set('n', '<M-J>', '<C-w>-')

-- Word wrap visual movement
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
