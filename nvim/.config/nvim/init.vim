"Auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged') "Install Plugins
     Plug 'sheerun/vim-polyglot'             "Better Syntax Support
     Plug 'preservim/nerdtree'               "File Explorer
     Plug 'jiangmiao/auto-pairs'             "Auto pairs for '(' '[' '{'
     Plug 'mhinz/vim-startify'               "Start screen
     Plug 'dracula/vim', { 'as': 'dracula' } "Dracula theme
     Plug 'vim-airline/vim-airline'          "Status line
     "Plug 'vim-airline/vim-airline-themes'   "Status line themes    
     Plug 'dylanaraps/wal.vim'               "Pywal theme
     "Plug 'NLKNguyen/papercolor-theme'
     Plug 'ryanoasis/vim-devicons'           "Icons
call plug#end()
"Settings

set encoding=UTF-8          "Enable icons
set background=dark         "Background
colorscheme wal     "Color theme
"set cursorline              "Enable highlighting of the current line 
set relativenumber          "Line numbers type
set clipboard=unnamedplus   "Copy between vim
"set showtabline=2           "Tabs
set mouse=a                 "Enable mouse
set formatoptions-=cro      "Stop newline continution of comments
let mapleader=" "           "Space my mapleader key

"Status line configuration
"let g:airline#extensions#tabline#enabled =1 "Enable tabline
"let g:airline_powerline_fonts = 1 "Enable powerline fonts
"let g:airline_theme = 'dracula' "Colors
"
"Startify config
let g:startify_custom_header = [
         \ '   _      _ _______  _______          _________ _______ ',
         \ '  ( (    /|(  ____ \(  ___  )|\     /|\__   __/(       )',
         \ '  |  \  ( || (    \/| (   ) || )   ( |   ) (   | () () |',
         \ '  |   \ | || (__    | |   | || |   | |   | |   | || || |',
         \ '  | (\ \) ||  __)   | |   | |( (   ) )   | |   | |(_)| |',
         \ '  | | \   || (      | |   | | \ \_/ /    | |   | |   | |',
         \ '  | )  \  || (____/\| (___) |  \   /  ___) (___| )   ( |',
         \ '  |/    )_)(_______/(_______)   \_/   \_______/|/     \|',
         \]
let g:startify_bookmarks = [
        \ { 'z': '~/.config/zsh/.zshrc' },
        \ { 'd': '~/.config/suckless/dwm/config.def.h' },
        \ { 's': '~/.config/suckless/slstatus/config.def.h' },
        \ { 'n': '~/.config/nvim/init.vim' },
        \ { 'a': '~/.config/alacritty/alacritty.yml' },
        \]
let g:startify_lists = [
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ ]

" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p
"Nerdtree key binds
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>r :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

