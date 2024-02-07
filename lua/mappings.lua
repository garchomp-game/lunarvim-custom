-- キーマッピング
vim.keymap.set('i','<C-h>','<Left>')
vim.keymap.set('i','<C-j>','<Down>')
vim.keymap.set('i','<C-k>','<Up>')
vim.keymap.set('i','<C-l>','<Right>')

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
  vim.keymap.set('t', '<C-p>', [[<Up>]], opts)  -- ここに追加
  vim.keymap.set('t', '<C-n>', [[<Down>]], opts)  -- ここに追加
end
-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
