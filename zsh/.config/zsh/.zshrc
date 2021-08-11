###

# plugins
source ~/.config/zsh/plugins/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/.zsh/zsh-completions/zsh-completions.plugin.zsh
# automatically cd into typed directory
setopt autocd	

# colors
autoload -U colors && colors

# prompt
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# alias
alias ls="lsd -h"
alias ll="lsd -ahl"
alias n="nvim"
alias c="clear"


# update suckless software
alias update-dwm="cd $HOME/.config/suckless/dwm && sudo rm config.h && sudo make install"
alias update-slstatus="cd $HOME/.config/suckless/slstatus && sudo rm config.h && sudo make install"
alias update-dmenu="cd $HOME/.config/suckless/dmenu && sudo rm config.h && sudo make install"

# vim mode
bindkey -v

# history file location
HISTFILE=~/.cache/zsh/history

# run pfetch when start zsh
pfetch
