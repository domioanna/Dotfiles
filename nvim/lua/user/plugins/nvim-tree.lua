require('nvim-tree').setup({
    git = {
        ignore = false,
    },
    renderer = {
        group_empty = true,
        icons = {
            show = {
                folder_arrow = false
            },
        },
        indent_markers = {
            enable = true
        },
    }
})

vim.api.nvim_set_hl(0, 'NvimTreeIndentMarker', {fg = '#30323E'})
vim.keymap.set('n', '<Leader>n', ':NvimTreeFindFileToggle<CR>')
