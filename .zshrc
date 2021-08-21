#!/usr/bin/env zsh

## il-mich zsh config
#
#
#                `........`
#            .--::--------::.
#         .-:----------------:`
#       .:--------------------/
#      ::---------------------:-                        ``....`
#     :-----------------------:.                  .--:::-----:.
#    `/------------:::--------:                  ::-------:-+.
#    `:----------::...-::---::                `.:-------/h+.
#     /-------:::/-..-..::--:  ``          `.-:--:::-:+/.
#     .:-----/-...:./h/..::-/::::/.     `.-:-::-.`
#      `::---/-.+:.:::ys.-::/::---::---/:::-.`
#        `....--+ho/:::/:/::----:/:--::/.`
#              `-:+o---//-:/-sy+yho+/.
#              .:--+-::--//oso++++o/`
#              :-///:--:/---os+o/.
#              -://---/:----++++o:
#               -:---++/:::+o++++o/
#               +://oo+:-  ++++++++/
#               `--..      :+++++++o.
#                          +++++++++/
#                         -o+oooooo+o
#                         ++/:----://
#                        `/--------:`
#                       `+-//:::-:::
#                       .``.`.`.`.``


#
## Shell options
#

# Dynamic window title
case $TERM in
	xterm*|rxvt*|Eterm|alacritty|aterm|kterm|gnome*)
		precmd() {print -Pn "\e]0;%~\a"}
		;;
esac

# Emacs mode
bindkey -e

# Enable prompt substring processing
setopt PROMPT_SUBST

# Don't cd automatically when only the name of a folder is passed
setopt NO_AUTO_CD

# Don't beep on error
setopt NO_BEEP

# Don't treat the ‘#’, ‘~’ and ‘^’ characters as part of patterns
setopt NO_EXTENDED_GLOB

# Don't report the status of background jobs immediately
setopt NO_NOTIFY

# Opam configuration
test -r ~/.opam/opam-init/init.zsh && . ~/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

#
## Visited folders stack
#

# Push the current directory visited on the stack
setopt AUTO_PUSHD

# Do not store duplicates in the stack
setopt PUSHD_IGNORE_DUPS

# Do not print the directory stack after pushd or popd
setopt PUSHD_SILENT


#
## Functions
#

# Git add, commit and push
bash function acp() {
	git add .
	git commit -m "$1"
	git push
}


#
## Aliases
#

# Edit zshrc
alias zshed='gnvim ~/.zshrc && zpm upgrade'

# Audio
alias pm='pulsemixer'

# Stable ssh
alias ssh="TERM='xterm-256color' ssh"

# Quit away
alias :q='exit'

# Directory history
alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index

# ls aliases
alias ls='ls --color=auto'
alias ll='ls -alh --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CFh --color=auto'

# Colored output
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'


#
## Keymaps
#

# Jump words with ctrl
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

# Up and down for substring search of history
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down


#
## History options
#

# Share history across multiple zsh sessions
setopt SHARE_HISTORY

# Append to history
setopt APPEND_HISTORY

# Adds commands as they are typed, not at shell exit
setopt INC_APPEND_HISTORY

# Delete an old recorded event if a new event is a duplicate
setopt HIST_IGNORE_ALL_DUPS

# Removes blank lines from history
setopt HIST_REDUCE_BLANKS

# Do not record an event starting with a space
setopt HIST_IGNORE_SPACE


#
## Prompt
#

PROMPT='%2~ %F{red}%(#.#.>)%f '
RPROMPT='%(?.◕‿◕.%F{red}ಠ_ಠ)%f' # expanded dynamically


#
## Plugins
#

# xdg-open with disown
open () {
    for i; do
        if [[ ! -r $i ]]; then
            echo "$0: file doesn't exist: \`$i'" >&2
            continue
        fi
        xdg-open "$i" >/dev/null 2>&1 &
        disown
    done
}

if [[ ! -f ~/.config/zpm/zpm.zsh ]]
then
	git clone --recursive https://github.com/zpm-zsh/zpm ~/.config/zpm
fi
source ~/.config/zpm/zpm.zsh

# History substring and coloring options
zpm load zsh-users/zsh-history-substring-search,source:zsh-history-substring-search.zsh
typeset -g HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='fg=green,bold'
typeset -g HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='fg=red,bold'

# Completion, highlight selected, case insensitive and move backwards with shift-tab
zpm load zsh-users/zsh-completions,async
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
setopt NO_LIST_AMBIGUOUS
zmodload zsh/complist
bindkey -M menuselect '^[[Z' reverse-menu-complete

# Colored manpages
zpm load ael-code/zsh-colored-man-pages

# Toggle "sudo" before current/previous command with Esc-Esc
zpm load hcgraf/zsh-sudo

