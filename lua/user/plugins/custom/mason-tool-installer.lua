return {
  'WhoIsSethDaniel/mason-tool-installer.nvim',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  },
  config = function()
    require("mason-tool-installer").setup {
      ensure_installed = {
        "markdownlint",
        "stylua",
      }
    }
  end
}
