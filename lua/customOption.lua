vim.o.pumheight = 40 -- 補完候補を最大20項目表示する
vim.o.wrap = true
vim.opt.clipboard = "unnamedplus"

if vim.fn.has('wsl') == 1 then
  vim.g.clipboard = {
  name = "win32yank",
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf"
    },
  paste = {
    ["+"] = "win32yank.exe -o --lf",
    ["*"] = "win32yank.exe -o --lf"
    },
  cache_enable = 0,
  }
end

