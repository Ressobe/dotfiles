###

# plugins
source ~/.config/zsh/plugins/.zsh/zsh-auto/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/.zsh/zsh-comp/zsh-completions.plugin.zsh
# pywal colors
# cat /home/relow/.cache/wal/sequences

# alias
source ~/.config/zsh/alias.txt

# automatically cd into typed directory
setopt autocd	

# colors
autoload -U colors && colors

# prompt
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%} %b"


# fuzzy finder open file with neovim
f() {du -a ~/  ~/bin/ | awk '{print $2}' | fzf | xargs -r nvim;}

# update suckless software
alias update-dwm="cd $HOME/.config/suckless/dwm && sudo rm config.h && sudo make install"
alias update-slstatus="cd $HOME/.config/suckless/slstatus && sudo rm config.h && sudo make install && killall slstatus"
alias update-dmenu="cd $HOME/.config/suckless/dmenu && sudo rm config.h && sudo make install"
alias update-suckless="update-dwm && update-slstatus && update-dmenu"

# vim mode
bindkey -v

# history file
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

# run pfetch when start zsh
pfetch


