-- include treesitter and its config
require('nvim-treesitter.configs').setup{

  ensure_installed = {'c', 'asm', 'cpp', 'python', 'lua',
                      'regex', 'bash', 'comment',
                      'make', 'json', 'vim', 'javascript', 'typescript'},
  highlight = {
    enable = true,
  },

  autotag = {
    enable = true,
  },

  refactor = {
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = 'grr',
      },
    },
  },
}


require('nvim-treesitter.parsers').get_parser_configs().asm = {
    install_info = {
        url = 'https://github.com/rush-rs/tree-sitter-asm.git',
        files = { 'src/parser.c' },
        branch = 'main',
    },
}
