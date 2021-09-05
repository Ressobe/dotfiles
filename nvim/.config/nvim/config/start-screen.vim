"let g:startify_custom_header = [
"         \ '   _      _ _______  _______          _________ _______ ',
"         \ '  ( (    /|(  ____ \(  ___  )|\     /|\__   __/(       )',
"         \ '  |  \  ( || (    \/| (   ) || )   ( |   ) (   | () () |',
"         \ '  |   \ | || (__    | |   | || |   | |   | |   | || || |',
"         \ '  | (\ \) ||  __)   | |   | |( (   ) )   | |   | |(_)| |',
"         \ '  | | \   || (      | |   | | \ \_/ /    | |   | |   | |',
"         \ '  | )  \  || (____/\| (___) |  \   /  ___) (___| )   ( |',
"         \ '  |/    )_)(_______/(_______)   \_/   \_______/|/     \|',
"         \]
let g:startify_bookmarks = [
        \ { 'z': '~/.config/zsh/.zshrc' },
        \ { 'd': '~/.config/suckless/dwm/config.def.h' },
        \ { 's': '~/.config/suckless/slstatus/config.def.h' },
        \ { 'n': '~/.config/nvim/init.vim' },
        \ { 'a': '~/.config/alacritty/alacritty.yml' },
        \ { 'g': '~/.gitconfig' },
        \]
let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ ]
let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_session_delete_buffers = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
