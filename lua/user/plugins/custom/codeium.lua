return {
	"Exafunction/codeium.vim",
	event = "VeryLazy",
	config = function()
		-- Change '<C-g>' here to any keycode you like.
		vim.keymap.set("i", "<C-g>g", function()
			return vim.fn["codeium#Accept"]()
		end, { expr = true, silent = true })
		vim.keymap.set("i", "<c-g>;", function()
			return vim.fn["codeium#CycleCompletions"](1)
		end, { expr = true, silent = true })
		vim.keymap.set("i", "<c-g>,", function()
			return vim.fn["codeium#CycleCompletions"](-1)
		end, { expr = true, silent = true })
		vim.keymap.set("i", "<c-g>x", function()
			return vim.fn["codeium#Clear"]()
		end, { expr = true, silent = true })
	end,
}
