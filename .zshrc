#-----.zshrc----#

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _approximate
zstyle :compinstall filename '/home/salih/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install


####Aliases###################
alias ls='ls --color=auto'
alias poweroff='sudo poweroff'
alias ll='ls -l --color=auto'
################################


BROWSER='firefox'

##### Color Thing ############
    autoload colors zsh/terminfo
    if [[ "$terminfo[colors]" -ge 8 ]]; then
   colors
    fi
    for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
   eval PR_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
   eval PR_LIGHT_$color='%{$fg[${(L)color}]%}'
   (( count = $count + 1 ))
    done
    PR_NO_COLOR="%{$terminfo[sgr0]%}"
##############################

##### Colorful Prompt ########
PS1="$PR_LIGHT_RED|-$PR_LIGHT_GREEN%n@%m$PR_LIGHT_YELLOW  %t / %D $PR_LIGHT_RED----$PR_LIGHT_CYAN%N$PR_LIGHT_RED---|
|%d > $PR_NO_COLOR"
##############################
alias la="ls -a"
alias lla="ls -l -a"
function chpwd() {
	emulate -LR zsh
	ls
}
alias tail="tail -f -n 1"
