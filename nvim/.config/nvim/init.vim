" Other  plugins config files
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/fzf.vim
" Auto-install vim-plug
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
     Plug 'glepnir/dashboard-nvim'
     Plug 'kyazdani42/nvim-web-devicons'
     "Themses
     Plug 'morhetz/gruvbox'
     Plug 'dylanaraps/wal.vim'               
call plug#end()

let mapleader=" "           " Space my mapleader key
set termguicolors           " Enable 24-bit RGB colors
colorscheme gruvbox         " Color theme
set background=dark         " Background
set encoding=UTF-8          " Set standard encoding and enable icons
set number relativenumber   " Line numbers type
set mouse=a                 " Enable mouse
set formatoptions-=cro      " Stop newline continution of comments
set clipboard=unnamedplus   " Copy to system clipboard (need packages xclip,gvim)
set scrolloff=8             " Minimal number of screen lines to keep above and below cursor
set timeoutlen=600          " How long wait for another keystorke (ms)

" Coc settings
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300

" Comments
nnoremap <silent> <leader>c} V}:call NERDComment('x', 'toggle')<CR>

" NERDTree Keybinds
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Ctrl + f spawn fuzzy finder
map <C-f> :Files<CR>

" Show keybinds
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" Disable arrow keys in normal mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Switch between panes in split
map <C-j> <C-W>j
map <C-h> <C-W>h
map <C-k> <C-W>k
map <C-l> <C-W>l

" Dashboard
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nmap <Leader>sn :<C-u>DashboardNewFile<CR>
nnoremap <silent> <Leader>fh :History<CR>
nnoremap <silent> <Leader>ff :Files<CR>
nnoremap <silent> <Leader>tc :Colors<CR>
nnoremap <silent> <Leader>fa :Rg<CR>
nnoremap <silent> <Leader>fb :Marks<CR>
