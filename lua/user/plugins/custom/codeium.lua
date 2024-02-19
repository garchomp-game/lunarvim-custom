return {
  "Exafunction/codeium.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    "onsails/lspkind-nvim"
  },
  config = function()
    require('codeium').setup()
    table.insert(lvim.builtin.cmp.sources, { name = "codeium" })
  end
}
