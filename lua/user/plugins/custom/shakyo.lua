return {
  'NI57721/vim-shakyo',
  event = "BufRead",
  keys = { '<leader>r', '<leader>q', '<leader>c' },
  config = function()
    -- キーマッピングの設定
    vim.api.nvim_set_keymap('n', '<leader>sr', '<Plug>(shakyo-run)', { noremap = false, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>sq', '<Plug>(shakyo-quit)', { noremap = false, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>sc', '<Plug>(shakyo-clue)', { noremap = false, silent = true })
    -- カスタムハイライトグループの宣言
    local shakyoCompletedHighlight = "ShakyoCompleted"
    local shakyoWrongHighlight = "ShakyoWrong"

    -- カスタムハイライトグループの設定
    vim.cmd('hi ' .. shakyoCompletedHighlight .. ' guifg=#ffffff guibg=#ffff00')
    vim.cmd('hi ' .. shakyoWrongHighlight .. ' guifg=#ffffff guibg=#ff0000')

    -- shakyoプラグインのハイライト設定をカスタムグループに変更
    vim.fn['shakyo#config']({
      highlight = {
        completed = shakyoCompletedHighlight,
        wrong = shakyoWrongHighlight
      }
    })
  end
}
