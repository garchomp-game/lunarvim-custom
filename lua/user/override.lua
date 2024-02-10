-- toggletermの上書き
lvim.builtin.terminal.direction = "horizontal"
lvim.builtin.terminal.size = 10
lvim.builtin.bufferline.active = false
lvim.builtin.cmp.cmdline.enable = true
lvim.leader = "\\"
lvim.builtin.alpha.active = false
-- nvim-tree無効化
lvim.builtin.nvimtree.active = false
-- <C-f>とかでgit grepとかが反応してしまうため
lvim.builtin.which_key.active = false

lvim.keys.visual_mode['<'] = false

-- lsp
local builtin = require("telescope.builtin")
lvim.keys.normal_mode["<leader>ff"] = builtin.find_files
lvim.keys.normal_mode["<leader>fg"] = builtin.live_grep
lvim.keys.normal_mode["<leader>fb"] = builtin.buffers
lvim.keys.normal_mode["<leader>fh"] = builtin.help_tags

lvim.keys.term_mode["<esc>"] = [[<C-\><C-n>]]
lvim.keys.term_mode["<C-h>"] = [[<Cmd>wincmd h<CR>]]
lvim.keys.term_mode["<C-j>"] = [[<Cmd>wincmd j<CR>]]
lvim.keys.term_mode["<C-k>"] = [[<Cmd>wincmd k<CR>]]
lvim.keys.term_mode["<C-l>"] = [[<Cmd>wincmd l<CR>]]
lvim.keys.term_mode["<C-w>"] = [[<C-\><C-n><C-w>]]
lvim.keys.term_mode["<C-p>"] = [[<Up>]]
lvim.keys.term_mode["<C-n>"] = [[<Down>]]

