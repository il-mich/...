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

