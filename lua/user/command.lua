vim.api.nvim_create_user_command("CopyMessage", function()
  vim.cmd("redir @+ | messages | redir END")
end, {})
vim.api.nvim_create_user_command("Format", function()
  vim.lsp.buf.format()
end, {})

vim.api.nvim_create_user_command("LspDiagnosticToQuickfix", function()
  vim.diagnostic.setqflist()
end, {})
-- vim.cmd([[
--   autocmd BufRead,BufNewFile *.checkhealth set filetype=checkhealth
-- ]])

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.checkhealth" },
  command = "set filetype=checkhealth",
  group = vim.api.nvim_create_augroup("checkhealth", { clear = true }),
})

vim.api.nvim_create_user_command("ExportHealthCheck", function()
  -- TODO: checkhealthしたものをファイルに書き出す方法について検討する
end, {})
