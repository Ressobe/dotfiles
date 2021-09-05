" Space my mapleader key
let mapleader=" "           

" Comments
nnoremap <silent> <leader>c} V}:call NERDComment('x', 'toggle')<CR>

" NERDTree Keybinds
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Ctrl + f spawn fuzzy finder
map <C-f> :Files<CR>

" Quit vim
map <C-x> :q<CR>

" Buffers
map <C-i> :bprev<CR>
map <C-o> :bnext<CR>
map <C-p> :bdelete<CR>

" Ctrl + s save file
nnoremap <C-s>      :w<CR>
inoremap <C-s> <Esc>:w<CR>a

" Startify screen
nnoremap <Leader>s :Startify<CR>

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

