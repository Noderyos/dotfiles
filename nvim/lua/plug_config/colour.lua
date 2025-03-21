-- Material Theme config
vim.g.material_style = 'darker'

require('material').setup({

    contrast = {
        terminal = false,
        sidebars = true,
        floating_windows = true,
        cursor_line = false,
        non_current_windows = false,
        filetypes = {
            'terminal',
            'packer',
            'qf',
            'toggleterm'
        },
    },

    styles = {
        comments = { italic = true },
        strings = {},
        keywords = {},
        functions = { italic = true },
        variables = {},
        operators = {},
        types = { bold = true },
    },

    plugins = {
        "gitsigns",
        "nvim-cmp"
    },

    disable = {
        colored_cursor = false,
        borders = false,
        background = false,
        term_colors = false,
        eob_lines = false
    },

    high_visibility = {
        lighter = false,
        darker = false
    },

    lualine_style = "default",

    async_loading = true,

    custom_colors = nil,

    custom_highlights = {},
})

vim.cmd 'colorscheme material'

vim.cmd("highlight WinSeparator guifg=#c0bfbc")

vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
vim.api.nvim_set_hl(0, 'Pmenu', { bg = 'none' })
