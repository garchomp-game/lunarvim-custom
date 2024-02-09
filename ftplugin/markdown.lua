require("lvim.lsp.manager").setup("marksman")
local linters = require "lvim.lsp.null-ls.linters"
linters.setup { { command = "markdownlint", filetypes = { "markdown" } } }
