
"Other  plugins config files
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/coc.vim

"Auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
"Plugins
call plug#begin('~/.config/nvim/autoload/plugged') 
     Plug 'sheerun/vim-polyglot'             "Better Syntax Support
     Plug 'jiangmiao/auto-pairs'             "Auto pairs for '(' '[' '{'
     Plug 'mhinz/vim-startify'               "Start screen
     Plug 'vim-airline/vim-airline'          "Status line
     Plug 'vim-airline/vim-airline-themes'   "Status line themes    
     Plug 'ryanoasis/vim-devicons'           "Icons
     Plug 'liuchengxu/vim-which-key'         "Show keybinds
     Plug 'junegunn/fzf.vim'                 "Fuzzy file finder
     Plug 'neoclide/coc.nvim', {'branch': 'release'}  "Coc
     Plug 'preservim/nerdcommenter'
     "Themses
     Plug 'morhetz/gruvbox'
     Plug 'dracula/vim', { 'as': 'dracula' } 
     Plug 'NLKNguyen/papercolor-theme'
     Plug 'dylanaraps/wal.vim'               
call plug#end()

"Settings
let mapleader=" "           "Space my mapleader key
set termguicolors           "Enable 24-bit RGB colors
colorscheme gruvbox         "Color theme
set background=dark         "Background
set encoding=UTF-8          "Set standard encoding and enable icons
set relativenumber          "Line numbers type
set mouse=a                 "Enable mouse
set formatoptions-=cro      "Stop newline continution of comments
set clipboard=unnamedplus   "Copy to system clipboard (need packages xclip,gvim)
set scrolloff=10            "Minimal number of screen lines to keep above and below cursor
set timeoutlen=600          "How long wait for another keystorke (ms)

"Ctrl + f spawn fuzzy finder
map <C-f> :Files<CR>

"Ctrl + S save file
nmap <C-s> :write<CR>

"Ctrl + x exit
nmap <C-x> :quit<CR>

"Show keybinds
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

"Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
