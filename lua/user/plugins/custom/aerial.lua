return {
	"stevearc/aerial.nvim",
	event = { "CmdLineEnter" },
	config = function()
		vim.api.nvim_set_keymap("n", "<leader>a", "<cmd>AerialToggle!<CR>", { noremap = true, silent = true })
	end,
}
