" Space my mapleader key
let mapleader=" "           

" NERDTree Keybinds
nnoremap <C-n> :NERDTree<CR>

" Ctrl + f spawn fuzzy finder
map <C-f> :Files<CR>

" Quit vim
map <C-x> :q<CR>

" Buffers
map <Tab> :bnext<CR>
map <C-p> :bdelete<CR>

" Ctrl + s save file
nnoremap <C-s>      :w<CR>
inoremap <C-s> <Esc>:w<CR>a

" Startify screen
nnoremap <Leader>s :Startify<CR>

" Disable arrow keys in normal mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Disable arrow keys for visual mode.
vnoremap <up> <Nop>
vnoremap <down> <Nop>
vnoremap <left> <Nop>
vnoremap <right> <Nop>

" Disable arrow keys for command mode.
cnoremap <up> <Nop>
cnoremap <down> <Nop>
cnoremap <left> <Nop>
cnoremap <right> <Nop>

" Switch in split
map <C-j> <C-W>j
map <C-h> <C-W>h
map <C-k> <C-W>k
map <C-l> <C-W>l

" Configuration example
let g:floaterm_keymap_kill   = '<F5>'
let g:floaterm_keymap_new    = '<F6>'
let g:floaterm_keymap_toggle = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
