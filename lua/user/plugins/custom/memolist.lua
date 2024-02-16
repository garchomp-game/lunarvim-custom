return {
  'glidenote/memolist.vim',
  event = "VeryLazy",
  dependencies = {
    'kien/ctrlp.vim'
  },
  config = function()
    local memolist_path = vim.env.HOME .. '/memo'
    vim.g.memolist_path = memolist_path
    vim.g.memolist_ex_cmd = 'CtrlP'

    -- memoフォルダが存在するか確認
    if not vim.loop.fs_stat(memolist_path) then
      -- フォルダが存在しない場合はgit cloneを実行
      vim.fn.system({
        "git",
        "clone",
        "https://github.com/garchomp-game/memolist",
        memolist_path,
        "--branch=main"
      })
      print("memolist repository has been cloned to " .. memolist_path)
    end
  end
}
