-- Space is my leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- When text is wrapped, move by terminal rows, not lines, unless a count is provided
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- Reselect visual selection after indenting
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Disable annoying command line thing
vim.keymap.set('n', 'q:', ':q<CR>')

-- Paste replace visual selection without copying it
vim.keymap.set('v', 'p', '"_dP')

-- Easy insertion of a trailing ; or , from insert mode
vim.keymap.set('i', ';;', '<Esc>A;<Esc>')
vim.keymap.set('i', ',,', '<Esc>A,<Esc>')

vim.keymap.set('n', '<leader>k', ':nohlsearch<CR>')

-- Open the current file in the default program (on Mac this should just be just `open`)
vim.keymap.set('n', '<leader>x', ':!open %<cr><cr>')

-- Allow gf to open non-existent files
vim.keymap.set('', 'gf', ':edit <cfile><CR>')

-- Maintain the cursor position when yanking a visual selection
-- http://ddrscott.github.io/blog/2016/yank-without-jank/
vim.keymap.set('v', 'y', 'myy`y')
vim.keymap.set('v', 'Y', 'myY`y')

-- Move text up and down
vim.keymap.set('i', '∆', '<Esc>:move .+1<CR>==gi')
vim.keymap.set('i', '˚', '<Esc> :move .-2<CR>==gi')
vim.keymap.set('n', '∆', ':move .+1<CR>==')
vim.keymap.set('n', '˚', ':move .-2<CR>==')
vim.keymap.set('v', '∆', ":move '>+1<CR>gv=gv")
vim.keymap.set('v', '˚', ":move '<-2<CR>gv=gv")


vim.keymap.set('n', '<Leader>pm', ':PhpactorContextMenu<CR>')
