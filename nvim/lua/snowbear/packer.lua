-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use { "ellisonleao/gruvbox.nvim", config = function()
        vim.o.background = "dark" -- or "light" for light mode
        -- vim.cmd([[colorscheme gruvbox]])
    end }

    use 'shaunsingh/nord.nvim'
    use "sainnhe/sonokai"
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use 'navarasu/onedark.nvim'

    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use { 'neoclide/coc.nvim', branch = 'release' }

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use "terrortylor/nvim-comment"

    use {
        'vlime/vlime',
        config = function()
            rtp = 'vim/'
        end
    }
    use 'eraserhd/parinfer-rust'
    use 'hrsh7th/nvim-cmp'
    use 'HiPhish/nvim-cmp-vlime'

    use 'xolox/vim-misc'
    use 'crystalboxesprivate/vim-colorscheme-switcher'
    use 'Taverius/vim-colorscheme-manager'
    require('nvim_comment').setup()
end)
