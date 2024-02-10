-- toggletermの上書き
lvim.builtin.terminal.direction = "horizontal"
lvim.builtin.terminal.size = 10
lvim.builtin.bufferline.active = false
lvim.builtin.cmp.cmdline.enable = true
lvim.leader = "\\"
lvim.builtin.alpha.active = false
-- nvim-tree無効化
lvim.builtin.nvimtree.active = false
lvim.format_on_save.enabled = true

-- lsp
lvim.builtin.telescope.on_config_done = function()
	local builtin = require("telescope.builtin")
	vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
	vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
	vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
	vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
end

lvim.builtin.terminal.on_config_done = function()
	function _G.set_terminal_keymaps()
		local opts = { buffer = 0 }
		vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
		vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
		vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
		vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
		vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
		vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
		vim.keymap.set("t", "<C-p>", [[<Up>]], opts) -- ここに追加
		vim.keymap.set("t", "<C-n>", [[<Down>]], opts) -- ここに追加
	end

	-- if you only want these mappings for toggle term use term://*toggleterm#* instead
	vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
end
