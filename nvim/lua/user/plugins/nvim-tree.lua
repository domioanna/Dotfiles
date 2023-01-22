-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

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
vim.keymap.set('n', '<Leader>1', ':NvimTreeFindFileToggle<CR>')
