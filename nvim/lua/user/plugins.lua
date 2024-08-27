local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

require('packer').reset()
require('packer').init({
    compile_path = vim.fn.stdpath('data')..'/site/plugin/packer_compiled.lua',
    display = {
        open_fn = function()
            return require('packer.util').float({ border = 'solid'})
        end,
    },
})

local use = require('packer').use

-- use({
--     'jessarcher/onedark.nvim',
--     config = function()
--         vim.cmd('colorscheme onedark')

--         -- Hide the characters in FloatBorder
--         vim.api.nvim_set_hl(0, 'FloatBorder', {
--             fg = vim.api.nvim_get_hl_by_name('NormalFloat', true).background,
--             bg = vim.api.nvim_get_hl_by_name('NormalFloat', true).background,
--         })

--         -- Make the StatusLineNonText background the same as StatusLine
--         vim.api.nvim_set_hl(0, 'StatusLineNonText', {
--           fg = vim.api.nvim_get_hl_by_name('NonText', true).foreground,
--           bg = vim.api.nvim_get_hl_by_name('StatusLine', true).background,
--         })

--         -- Hide the characters in CursorLineBg
--         vim.api.nvim_set_hl(0, 'CursorLineBg', {
--           fg = vim.api.nvim_get_hl_by_name('CursorLine', true).background,
--           bg = vim.api.nvim_get_hl_by_name('CursorLine', true).background,
--         })

--         vim.api.nvim_set_hl(0, 'NvimTreeIndentMarker', { fg = '#30323E' })
--         vim.api.nvim_set_hl(0, 'IndentBlanklineChar', { fg = '#2F313C' })
--     end,
-- })

use({
    "neanias/everforest-nvim",
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
        require("everforest").setup({
            background = "soft",
        })
        vim.cmd([[colorscheme everforest]])

        vim.cmd([[
            highlight link TelescopePromptTitle PMenuSel
            highlight link TelescopePreviewTitle PMenuSel
            highlight link TelescopePromptNormal NormalFloat
            highlight link TelescopePromptBorder FloatBorder
            highlight link TelescopeNormal CursorLine
            highlight link TelescopeBorder CursorLineBg
        ]])

        vim.api.nvim_set_hl(0, 'NvimTreeNormal', {
            fg = vim.api.nvim_get_hl_by_name('NvimTreeNormal', true).foreground,
            bg = vim.api.nvim_get_hl_by_name('CursorLineBg', true).background,
        })

        vim.api.nvim_set_hl(0, 'NvimTreeEndOfBuffer', {
            fg = vim.api.nvim_get_hl_by_name('NvimTreeNormal', true).foreground,
            bg = vim.api.nvim_get_hl_by_name('CursorLineBg', true).background,
        })

        -- Hide the characters in FloatBorder
        vim.api.nvim_set_hl(0, 'FloatBorder', {
            fg = vim.api.nvim_get_hl_by_name('NormalFloat', true).background,
            bg = vim.api.nvim_get_hl_by_name('NormalFloat', true).background,
        })

        -- Make the StatusLineNonText background the same as StatusLine
        vim.api.nvim_set_hl(0, 'StatusLineNonText', {
                fg = vim.api.nvim_get_hl_by_name('NonText', true).foreground,
                bg = vim.api.nvim_get_hl_by_name('StatusLine', true).background,
            })

        -- Hide the characters in CursorLineBg
        vim.api.nvim_set_hl(0, 'CursorLineBg', {
                fg = vim.api.nvim_get_hl_by_name('CursorLine', true).background,
                bg = vim.api.nvim_get_hl_by_name('CursorLine', true).background,
            })

        vim.api.nvim_set_hl(0, 'NvimTreeIndentMarker', { fg = '#30323E' })
        vim.api.nvim_set_hl(0, 'IndentBlanklineChar', { fg = '#2F313C' })
    end,
})

use('wbthomason/packer.nvim')           -- Packer can manage itself
use('tpope/vim-commentary')             -- Commenting Support
use('tpope/vim-surround')               -- Add, change, and delete surrounding text
use('tpope/vim-eunuch')                 -- Useful commands like :Rename and :SudoWrite
use('tpope/vim-unimpaired')             -- Pairs of handy bracket mappings, like [b and ]b
use('tpope/vim-sleuth')                 -- Indent autodetection with editorconfig support
use('tpope/vim-repeat')                 -- Allow plugins to enable repeating of commands
use('christoomey/vim-tmux-navigator')   -- Navigate between Vim windows and tmux panes
use('farmergreg/vim-lastplace')         -- Jump to last location when opening a file
use('nelstrom/vim-visual-star-search')  -- Enable * searching with visually selected text
use('jessarcher/vim-heritage')          -- Automatically create parent dirs when saving

use({
    'sheerun/vim-polyglot',
})

-- Text objects for HTML attributes
use({
    'whatyouhide/vim-textobj-xmlattr',
    requires = 'kana/vim-textobj-user'
})

use({
    'airblade/vim-rooter',
    setup = function()
        vim.g.rooter_manual_only = 1
    end,
    config = function()
        vim.cmd('Rooter')
    end,
})

-- Automatically add closing brackets, quotes, etc
use({
    'windwp/nvim-autopairs',
    config = function()
        require('nvim-autopairs').setup()
    end,
})

use({
    'karb94/neoscroll.nvim',
    config = function()
        require('neoscroll').setup()
    end,
})

use({
    'famiu/bufdelete.nvim',
    config = function()
        vim.keymap.set('n', '<Leader>q', ':Bdelete<CR>')
    end,
})

use({
    'AndrewRadev/splitjoin.vim',
    config = function()
        vim.g.splitjoin_html_attributes_bracket_on_new_line = 1
        vim.g.splitjoin_trailing_comma = 1
        vim.g.splitjoin_php_method_chain_full = 1
    end,
})

use({
    'sickill/vim-pasta',
    config = function()
        vim.g.pasta_disabled_filetypes = { 'fugitive' }
    end,
})

use({
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
        require('user/plugins/nvim-tree')
    end
})

-- Fuzzy Finder
use({
    'nvim-telescope/telescope.nvim',
    requires = {
        'nvim-lua/plenary.nvim',
        'kyazdani42/nvim-web-devicons',
        'nvim-telescope/telescope-live-grep-args.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make'},
    },
    config = function()
        require('user/plugins/telescope')
    end,
})

-- Status Line
use({
    'nvim-lualine/lualine.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
        require('user/plugins/lualine')
    end
})

use({
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    after = 'everforest-nvim',
    config = function()
        require('user/plugins/bufferline')
    end
})

use({
    'lukas-reineke/indent-blankline.nvim',
    config = function()
        require('user/plugins/indent-blankline')
    end
})

-- Treesitter
use({
    'nvim-treesitter/nvim-treesitter',
    run = function()
        require('nvim-treesitter.install').update({ with_sync = true })
    end,
    requires = {
        'JoosepAlviste/nvim-ts-context-commentstring',
        'nvim-treesitter/nvim-treesitter-textobjects',
    },
    config = function()
        require('user.plugins.treesitter')
    end,
})

use({
    'glepnir/dashboard-nvim',
    config = function()
        require('user/plugins/dashboard-nvim')
    end,
    requires = {'nvim-tree/nvim-web-devicons'}
})

-- Git integration
use({
    'lewis6991/gitsigns.nvim',
    config = function()
        require('gitsigns').setup()
        vim.keymap.set('n', ']h', ':Gitsigns next_hunk<CR>')
        vim.keymap.set('n', '[h', ':Gitsigns prev_hunk<CR>')
        vim.keymap.set('n', 'gs', ':Gitsigns stage_hunk<CR>')
        vim.keymap.set('n', 'gS', ':Gitsigns undo_stage_hunk<CR>')
        vim.keymap.set('n', 'gp', ':Gitsigns preview_hunk<CR>')
        vim.keymap.set('n', 'gb', ':Gitsigns blame_line<CR>')

        vim.api.nvim_set_hl(0, 'GitsignsAdd', { fg = "#a7c080", bg = "#333c43" })
        vim.api.nvim_set_hl(0, 'GitsignsChange', { fg = '#e69875', bg = "#333c43" })
        vim.api.nvim_set_hl(0, 'GitsignsDelete', { fg = '#e67e80', bg = "#333c43" })
    end
})

use({
    'tpope/vim-fugitive',
    requires = 'tpope/vim-rhubarb',
})

-- Floating Terminal
use({
    'voldikss/vim-floaterm',
    config = function()
        vim.keymap.set('n', '<leader>2',':FloatermToggle<CR>')
        vim.keymap.set('t', '<leader>2','<C-\\><C-n>:FloatermToggle<CR>')
        vim.g.floaterm_width = 0.9
        vim.g.floaterm_height = 0.9
        vim.cmd([[
            highlight link Floaterm CursorLine
            highlight link FloatermBorder CursorLineBg
        ]])
    end
})

-- Language Server Protocol
use({
    'neovim/nvim-lspconfig',
    requires = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'b0o/schemastore.nvim',
        'jose-elias-alvarez/null-ls.nvim',
        'jayp0521/mason-null-ls.nvim',
    },
    config = function ()
        require('user/plugins/lspconfig')
    end,
})

-- Completion
use({
    'hrsh7th/nvim-cmp',
    requires = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-nvim-lsp-signature-help',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
        'onsails/lspkind-nvim',
    },
    config = function()
        require('user.plugins.cmp')
    end,
})

use({
    'phpactor/phpactor',
    ft = 'php',
    run = 'composer install --no-dev --optimize-autoloader',
    config = function()
        vim.keymap.set('n', '<Leader>pm', ':PhpactorContextMenu<CR>')
    end
})

-- Project configuration
use({
    'tpope/vim-projectionist',
    requires = 'tpope/vim-dispatch',
    config = function()
        require('user/plugins/projectionist')
    end,
})

-- Testing
use({
    'vim-test/vim-test',
    config = function()
        require('user/plugins/vim-test')
    end,
})

-- Automatically set up your configuration after cloning packer.nvim
-- Put this at the end after all plugins
if packer_bootstrap then
  require('packer').sync()
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile>
  augroup end
]])
