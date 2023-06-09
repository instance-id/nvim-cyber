local vim = vim

-- init.lua
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()

local cyber_url
if vim.g.cyber_debug == true then
  cyber_url = vim.g.cyber_debug_path
else
  cyber_url = "https://github.com/instance-id/tree-sitter-cyber"
end

parser_config.cyber = {
  install_info = {
    url = cyber_url,
    files = {
      "src/parser.c",
      "src/scanner.cc"
    },
    branch = "main",
  },
  filetype = "cyber",
  used_by = {"cy", "cyon", "cys"}
}

vim.filetype.add({
  extension = {
      cyber = "cyber",
      cyon = "cyber",
      cys = "cyber",
      cy = "cyber"
  }
})

local configs = require "nvim-treesitter.configs"
configs.setup {
  ensure_installed = "cyber",
  highlight = {
    enable = true,
    custom_captures = {},
    use_languagetree = true,
  },
}
