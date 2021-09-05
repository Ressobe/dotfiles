
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
"Plugins
call plug#begin('~/.config/nvim/autoload/plugged') 
     Plug 'sheerun/vim-polyglot'                        " Better Syntax Support
     Plug 'jiangmiao/auto-pairs'                        " Auto pairs for '(' '[' '{'
     Plug 'vim-airline/vim-airline'                     " Status line
     Plug 'vim-airline/vim-airline-themes'              " Status line themes    
     Plug 'ryanoasis/vim-devicons'                      " Nerd font icons
     Plug 'liuchengxu/vim-which-key'                    " Show keybinds
     Plug 'junegunn/fzf.vim'                            " Fuzzy file finder
     Plug 'neoclide/coc.nvim', {'branch': 'release'}    " Make your Neovim as smart as VSCode.
     Plug 'preservim/nerdtree'                          " File system explorer 
     Plug 'tpope/vim-fugitive'                          " Git
     Plug 'preservim/nerdcommenter'                     " Auto comments
     Plug 'mhinz/vim-startify'
     Plug 'kyazdani42/nvim-web-devicons'
     "Themses
     Plug 'morhetz/gruvbox'
     Plug 'rakr/vim-one'
     Plug 'dylanaraps/wal.vim'               
call plug#end()


