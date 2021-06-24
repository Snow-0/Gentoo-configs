neofetch
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/max/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
zstyle ':completion::complete:*' use-cache 1
alias vim="nvim "
alias sudo="sudo "
alias search="equery list '*' | grep "
alias install="sudo emerge -a " 
alias ar="cd /home/max/arch/@home/max/"
alias sudo="doas " 
alias xr="xrandr --output DP-2 --primary --mode 1920x1080 --rate 144 --left-of DP-4 && xrandr --output DP-4  --mode 1920x1080 --rate 144 --right-of DP-2"
alias cworld="cat /var/lib/portage/world"

# auto suggestion
source ~/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null

# syntax highlighting
source ~/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null



eval "$(starship init zsh)"


