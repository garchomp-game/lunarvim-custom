-- キーマッピング
vim.keymap.set('i','<C-h>','<Left>')
vim.keymap.set('i','<C-j>','<Down>')
vim.keymap.set('i','<C-k>','<Up>')
vim.keymap.set('i','<C-l>','<Right>')

-- nvim-tree無効化
lvim.builtin.nvimtree.active = false
-- toggletermの上書き
lvim.builtin.terminal.direction = "horizontal"
lvim.builtin.terminal.size = 10
-- プラグイン追加
lvim.plugins = {
  {
    'nvim-neo-tree/neo-tree.nvim',
    event = "VeryLazy",
    keys = {'<C-n>'},
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      vim.api.nvim_set_keymap(
        'n','<C-n>',
        ':Neotree toggle<CR>',
        { noremap = true, silent = true }
      )
    end,
  },
  {
    "NeogitOrg/neogit",
    event = { 'CmdLineEnter' },
    dependencies = {
      "nvim-lua/plenary.nvim",         -- required
      "sindrets/diffview.nvim",        -- optional - Diff integration
      "nvim-telescope/telescope.nvim", -- optional
    },
    config = true
  }
}
