return {
	"stevearc/aerial.nvim",
	event = { "VeryLazy" },
	keys = {
		"<leader>a",
	},
	opts = function()
		vim.api.nvim_set_keymap("n", "<leader>a", "<cmd>AerialToggle<CR>", { noremap = true, silent = true })
	end,
}
