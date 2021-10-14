" Settings
colorscheme dracula       
set termguicolors      
set background=dark     
set encoding=UTF-8       
set number relativenumber 
set mouse=a                
set clipboard=unnamedplus  
set scrolloff=8            
set timeoutlen=600          
set expandtab 
set tabstop=4
set nohlsearch
set hidden 
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set noerrorbells
set smartcase
let g:ale_linters = {'python': ['pyls', 'flake8'], 'c': ['ccls']}
let g:ale_fixers = {'*' : ['trim_whitespace'], 'python': ['black']}
let g:ale_fix_on_save = 1

