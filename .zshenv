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
	export WINIT_UNIX_BACKEND=x11
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

# Find gui
programs=("neovide" "gnvim" "goneovim" "kitty nvim" "alacritty -e nvim")

for candidate in "${programs[@]}"
do
	if (command -v "$(echo $candidate | cut -d" " -f1)" &> /dev/null)
	then
		export VISUAL=nvim-gui
		export NVGUI="$candidate"
		break
	fi
done

# Add stuff to PATH
export PATH=$HOME/.local/bin:$PATH

