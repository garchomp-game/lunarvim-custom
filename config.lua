lvim.lazy.opts.dev = { path = vim.env.DEV_PLUGIN_PATH }
-- プラグイン追加
lvim.plugins = require 'user.plugins'
require 'user.override'
require 'user.mappings'
require 'user.option'
require 'user.utils'
require 'user.command'
