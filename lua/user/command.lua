vim.api.nvim_create_user_command(
  'CopyMessage',
  function()
    vim.cmd('redir @+ | messages | redir END')
  end,
  {}
)
vim.api.nvim_create_user_command(
  'Format',
  function()
    vim.lsp.buf.format()
  end,
  {}
)

vim.api.nvim_create_user_command(
  'LspDiagnosticToQuickfix',
  function()
    vim.diagnostic.setqflist()
  end,
  {}
)
