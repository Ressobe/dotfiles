
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
call plug#begin('~/.config/nvim/autoload/plugged') 
     Plug 'sheerun/vim-polyglot'                     
     Plug 'vim-airline/vim-airline'              
     Plug 'vim-airline/vim-airline-themes'        
     Plug 'ryanoasis/vim-devicons'              
     Plug 'liuchengxu/vim-which-key'           
     Plug 'junegunn/fzf.vim'                  
     Plug 'neoclide/coc.nvim', {'branch': 'release'}  
     Plug 'preservim/nerdtree'                       
     Plug 'tpope/vim-fugitive'                      
     Plug 'preservim/nerdcommenter'                
     Plug 'mhinz/vim-startify'
     Plug 'kyazdani42/nvim-web-devicons'
     Plug 'ap/vim-css-color'
     Plug 'alvan/vim-closetag'
     Plug 'tpope/vim-surround'
     Plug 'farmergreg/vim-lastplace'
     Plug 'dense-analysis/ale'
     "Themses
     Plug 'dracula/vim', { 'as': 'dracula' }
     Plug 'dylanaraps/wal.vim'               
call plug#end()


