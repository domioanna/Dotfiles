local db = require('dashboard')

db.setup({
    theme = 'doom',
    config = {
        header = {
            '',
            '',
            '',
            '  ⢸⣦⡈⠻⣿⣿⣿⣶⣄',
            '    ⢸⣿⣿⣦⡈⠻⣿⣿⣿⣷⣄',
            '⣀⣀⣀⣀⣀⣀⣼⣿⣿⣿⣿ ⠈⠻⣿⣿⣿⣷⣄',
            '  ⠈⠻⣿⣿⣿⣿⣿⡿⠿⠛⠁   ⠈⠻⢿⣿⣿⣷⣄',
            '',
            '',
            '',
        },
        center = {
            { 
                icon = '  ',
                desc = 'New file                       ',
                action = 'enew'
            },
            { 
                icon = '  ',
                key = 'SPC f',
                desc = 'Find file                 ',
                action = 'Telescope find_files'
            },
            { 
                icon = '  ',
                key = 'SPC h',
                desc = 'Recent files              ',
                action = 'Telescope oldfiles'
            },
            { 
                icon = '  ',
                key = 'SPC g',
                desc = 'Find Word                 ',
                action = 'Telescope live_grep'
            },
        },
        footer = {},
    }
})

vim.cmd([[
    augroup DashboardHighlights
        autocmd ColorScheme * highlight DashboardHeader guifg=#6272a4
        autocmd ColorScheme * highlight DashboardCenter guifg=#f8f8f2
        autocmd ColorScheme * highlight DashboardShortcut guifg=#bd93f9
        autocmd ColorScheme * highlight DashboardFooter guifg=#6272a4
    augroup end
]])

vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = '#6272a4' })
vim.api.nvim_set_hl(0, 'DashboardCenter', { fg = '#f8f8f2' })
vim.api.nvim_set_hl(0, 'DashboardShortcut', { fg = '#bd93f9' })
vim.api.nvim_set_hl(0, 'DashboardFooter', { fg = '#6272a4' })
