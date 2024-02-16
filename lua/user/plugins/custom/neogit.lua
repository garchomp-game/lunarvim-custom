return {
  "NeogitOrg/neogit",
  event = { 'CmdLineEnter' },
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration
    "nvim-telescope/telescope.nvim", -- optional
  },
  init = function()
    -- `git config --global commit.verbose`の現在の値を取得
    local verbose_setting = vim.fn.system("git config --global commit.verbose")

    -- `true`に設定されていない場合、それを設定
    if verbose_setting and verbose_setting:find("true") == nil then
      vim.fn.system("git config --global commit.verbose true")
      print("Git commit.verbose has been set to true globally.")
    end
  end,
  config = true
}
