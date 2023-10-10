# function fish_greeting
# cat ~/.cache/wal/sequences
#end
#
function fish_greeting
  #  pfetch
end

function fish_prompt
        set_color red --bold
        printf "["
        set_color yellow
        printf "%s" "$USER"
        set_color green
        printf "@"
        set_color blue
        printf "%s" "$hostname"
        set_color magenta
        printf " %s" "$PWD"
        set_color red
        printf "] "
        set_color normal
end

function fish_user_key_bindings
  bind \c] peco_select_ghq      # Ctrl-]
  bind \cr peco_select_history  # Ctrl-r
  bind \cj peco_select_z        # Ctrl-j
  bind \cf peco_select_file     # Ctrl-f
end

abbr n "nvim"
abbr vim "nvim"
abbr ls "eza --icons "
abbr l "eza --icons "
abbr ll "eza --icons -ahl"
abbr lt "eza --tree"

abbr cat "bat"

abbr g "git"
abbr gs "git status"
abbr gp "git pull"
abbr .3 "../../.."

abbr update "sudo pacman -Syu --noconfirm"
abbr install "sudo pacman -S"
abbr remove "sudo pacman -Rns"

abbr ss "sudo systemctl"
abbr s "sudo"

alias rm "rm -v"
alias cp "cp -v"
alias mv "mv -v"
alias tl "taskline"
alias config "git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
