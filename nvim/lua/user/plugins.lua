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

-- Colour Schemes and Themes
use({
    'ishan9299/nvim-solarized-lua',
    config = function()
        vim.cmd('colorscheme solarized')
        vim.cmd('hi LineNr guibg=cleared')
        vim.api.nvim_set_hl(0, 'FloatBorder', {
            fg = vim.api.nvim_get_hl_by_name('NormalFloat', true).background,
            bg = vim.api.nvim_get_hl_by_name('NormalFloat', true).background,
        })
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

        vim.api.nvim_set_hl(0, 'CursorLineBg', {
            fg = vim.api.nvim_get_hl_by_name('CursorLine', true).background,
            bg = vim.api.nvim_get_hl_by_name('CursorLine', true).background,
        })
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
