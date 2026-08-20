-- GUI-client settings, only applied when running inside Neovide.
-- See https://neovide.dev/configuration.html
if not vim.g.neovide then
  return
end

vim.o.guifont = 'Maple Mono NF CN:h18'

-- Minimal/snappy: no cursor trail vfx, instant cursor and scroll movement
vim.g.neovide_cursor_animation_length = 0.1
vim.g.neovide_position_animation_length = 0.1
vim.g.neovide_scroll_animation_length = 0.1

-- Let Option act as Meta/Alt (e.g. Option+Left/Right word-jump in terminal buffers)
vim.g.neovide_input_macos_option_key_is_meta = 'both'
