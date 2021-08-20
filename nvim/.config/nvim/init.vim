source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/start-screen.vim

"Auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged') "Install Plugins
     Plug 'sheerun/vim-polyglot'             "Better Syntax Support
     Plug 'jiangmiao/auto-pairs'             "Auto pairs for '(' '[' '{'
     Plug 'mhinz/vim-startify'               "Start screen
     Plug 'vim-airline/vim-airline'          "Status line
     "Plug 'vim-airline/vim-airline-themes'  "Status line themes    
     Plug 'dylanaraps/wal.vim'               "Pywal theme
     Plug 'ryanoasis/vim-devicons'           "Icons
     Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"Settings
colorscheme wal            "Color theme
set encoding=UTF-8          "Enable icons
set background=dark         "Background
set relativenumber          "Line numbers type
set mouse=a                 "Enable mouse
set formatoptions-=cro      "Stop newline continution of comments
set clipboard=unnamedplus   "sudo pacman -S xclip
let mapleader=" "           "Space my mapleader key

"Status line configuration
let g:airline#extensions#tabline#enabled =1 "Enable tabline
let g:airline_powerline_fonts = 1 "Enable powerline fonts

nmap <space>e :CocCommand explorer<CR>
