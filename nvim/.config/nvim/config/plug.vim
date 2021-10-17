if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
call plug#begin('~/.config/nvim/autoload/plugged')
     Plug 'vim-airline/vim-airline'
     Plug 'vim-airline/vim-airline-themes'
     Plug 'ryanoasis/vim-devicons'
     Plug 'liuchengxu/vim-which-key'
     Plug 'junegunn/fzf.vim'
     Plug 'preservim/nerdtree'
     Plug 'preservim/nerdcommenter'
     Plug 'mhinz/vim-startify'
     Plug 'ap/vim-css-color'
     Plug 'alvan/vim-closetag'
     Plug 'dense-analysis/ale'
     Plug 'neovim/nvim-lspconfig'
     Plug 'nvim-lua/completion-nvim'
     Plug 'glepnir/lspsaga.nvim'
     Plug 'hrsh7th/nvim-compe'
     Plug 'sheerun/vim-polyglot'
     Plug 'morhetz/gruvbox'
call plug#end()

