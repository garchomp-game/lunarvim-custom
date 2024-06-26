-- キーマッピング
lvim.keys.insert_mode['<C-h>'] = '<Left>'
lvim.keys.insert_mode['<C-j>'] = '<Down>'
lvim.keys.insert_mode['<C-k>'] = '<Up>'
lvim.keys.insert_mode['<C-l>'] = '<Right>'

lvim.keys.insert_mode["<C-g>"] = function()
  return vim.fn['codeium#Accept']()
end

lvim.keys.visual_mode['<'] = false
lvim.keys.visual_mode['>'] = false

-- lsp
local builtin = require("telescope.builtin")
lvim.keys.normal_mode["<leader>ff"] = builtin.find_files
lvim.keys.normal_mode["<leader>fg"] = builtin.live_grep
lvim.keys.normal_mode["<leader>fb"] = builtin.buffers
lvim.keys.normal_mode["<leader>fh"] = builtin.help_tags

lvim.keys.normal_mode["<leader>lo"] = "<Cmd>:lopen<CR>"
lvim.keys.normal_mode["<leader>lc"] = "<Cmd>:lclose<CR>"
lvim.keys.normal_mode["<leader>co"] = "<Cmd>:copen<CR>"
lvim.keys.normal_mode["<leader>cc"] = "<Cmd>:cclose<CR>"

-- LSP診断をQuickfixにロード
lvim.keys.normal_mode["<leader>cq"] = function()
  vim.diagnostic.setqflist()
end

-- 次のLSP診断結果へ移動
lvim.keys.normal_mode["<leader>cn"] = function()
---@diagnostic disable-next-line: deprecated
  vim.diagnostic.goto_next()
end

-- 前のLSP診断結果へ移動
lvim.keys.normal_mode["<leader>cp"] = function()
---@diagnostic disable-next-line: deprecated
  vim.diagnostic.goto_prev()
end

lvim.keys.term_mode["<esc>"] = [[<C-\><C-n>]]
lvim.keys.term_mode["<C-h>"] = [[<Cmd>wincmd h<CR>]]
lvim.keys.term_mode["<C-j>"] = [[<Cmd>wincmd j<CR>]]
lvim.keys.term_mode["<C-k>"] = [[<Cmd>wincmd k<CR>]]
lvim.keys.term_mode["<C-l>"] = [[<Cmd>wincmd l<CR>]]
lvim.keys.term_mode["<C-w>"] = [[<C-\><C-n><C-w>]]
lvim.keys.term_mode["<C-p>"] = [[<Up>]]
lvim.keys.term_mode["<C-n>"] = [[<Down>]]
