return {
  'glidenote/memolist.vim',
  event = "VeryLazy",
  dependencies = {
    'preservim/nerdtree'
  },
  config = function()
    vim.g.memolist_path = vim.env.HOME .. '/memo'
    vim.g.memolist_ex_cmd = 'NERDTree'
  end
}
