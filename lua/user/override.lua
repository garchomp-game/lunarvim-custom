-- toggletermの上書き
lvim.builtin.terminal.direction = "horizontal"
lvim.builtin.terminal.size = 10
lvim.builtin.bufferline.active = false
lvim.builtin.cmp.cmdline.enable = true
-- nvim-tree無効化
lvim.builtin.nvimtree.active = false
-- <Space>fとかでgit grepとかが反応してしまうため
lvim.builtin.which_key.active = false
lvim.lsp.installer.setup.ensure_installed = {
  "stylelint_lsp",
}
