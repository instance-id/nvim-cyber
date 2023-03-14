-- init.lua
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()

parser_config.cyber = {
  install_info = {
    url = "https://github.com/instance-id/nvim-cyber-treesitter",
    files = {"src/parser.c"},
  },
  filetype = "cyber",
  used_by = {"cy", "cyon", "cys"}
}

local configs = require "nvim-treesitter.configs"
configs.setup {
  ensure_installed = "cyber",
  highlight = {
    enable = true,
    custom_captures = {},
    use_languagetree = true,
  },
}
