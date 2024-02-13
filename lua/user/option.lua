vim.o.pumheight = 40 -- 補完候補を最大20項目表示する
vim.o.wrap = true
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.clipboard = "unnamedplus"
vim.opt.helplang='ja,en'
-- markdownファイルのみタブ=スペース4個分になる現象をこれで解決できる
-- ソース: https://www.reddit.com/r/neovim/comments/z2lhyz/when_i_insert_tab_it_expands_to_4_spaces_and_not/?rdt=60892
vim.g.markdown_recommended_style = 0

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

