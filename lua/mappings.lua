-- キーマッピング
vim.keymap.set('i','<C-h>','<Left>')
vim.keymap.set('i','<C-j>','<Down>')
vim.keymap.set('i','<C-k>','<Up>')
vim.keymap.set('i','<C-l>','<Right>')
if vim.fn.has('wsl') == 1 then
  vim.g.clipboard = {
    name = 'win32yank',
    copy = {
      ['+'] = 'win32yank.exe -i --crlf',
      ['*'] = 'win32yank.exe -i --crlf',
    },
    paste = {
      ['+'] = 'win32yank.exe -o --lf',
      ['*'] = 'win32yank.exe -o --lf',
    },
    cache_enabled = 0,
  }
end

