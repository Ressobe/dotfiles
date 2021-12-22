function fish_greeting
    pfetch
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
abbr ls "exa --icons "
abbr l "exa --icons "
abbr ll "exa --icons --git -ahl"
abbr lt "exa --tree"
abbr g "git"
abbr .3 "../../.."
abbr update "sudo pacman -Syu"
abbr install "sudo pacman -S"
abbr s "startx"
abbr ss "sudo systemctl"
alias rm "rm -v"
alias cp "cp -v"
alias mv "mv -v"

set -gx EDITOR nvim
set -gx PF_INFO "os kernel shell uptime pkgs wm editor memory"
