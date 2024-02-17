return {
  "folke/todo-comments.nvim",
  event = { "BufRead", "CmdLineEnter" },
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    highlight = {
      before = "fg",
      keyword = "fg",
    }
  }
}
