-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

 use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'}, {'nvim-treesitter/nvim-treesitter'} }
}

use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function() 
        require("neo-tree").setup({
            source_selector = {
                winbar = true,
                statusline = false
            },
        filesystem = {
                filtered_items = {
                    visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
                    hide_dotfiles = false,
                    hide_gitignored = true,
                },
            },
        })
    end
  }
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use {'neoclide/coc.nvim', branch = 'release'}

  use 'morhetz/gruvbox'
  use 'hashivim/vim-terraform'
  use 'Raimondi/delimitMate'
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}
  use 'tpope/vim-commentary'
  use 'justinmk/vim-sneak'
  use 'tpope/vim-unimpaired'
  use {
      'lewis6991/gitsigns.nvim',
      config = function()
        require('gitsigns').setup()
      end
    }
  use 'qpkorr/vim-bufkill'

  use 'LucHermitte/lh-vim-lib'
  use 'LucHermitte/lh-style'
end)
