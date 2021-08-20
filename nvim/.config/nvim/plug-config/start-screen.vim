
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
