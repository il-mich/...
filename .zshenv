#
## Setup XDG folders
#

export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share


#
## Style variables
#

if [[ $XDG_CURRENT_DESKTOP != KDE ]]
then
	export QT_QPA_PLATFORMTHEME=gtk3
	export TDESKTOP_I_KNOW_ABOUT_GTK_INCOMPATIBILITY=1
fi


#
## Zsh history
#

HISTFILE=$XDG_CACHE_HOME/zsh_history

# Number of lines the shell remembers
HISTSIZE=2500

# Number of lines the history file stores
SAVEHIST=2000


#
## Environment
#

# Set editors
export EDITOR=nvim
export VISUAL=nvim-gui

# Set JAVA_HOME
export JAVA_HOME=/usr/lib/jvm/default

# Neverlang env
export NEVERLANG_HOME=$HOME/.local/lib/neverlang2-1.2

# Add stuff to PATH
export PATH=$NEVERLANG_HOME/bin:$JAVA_HOME/bin:$HOME/.local/bin:$PATH

# Select cargo install folder
export CARGO_INSTALL_ROOT=/usr/bin

