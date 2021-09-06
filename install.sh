#! /bin/bash

find-files () {
	find . -type f -not -name 'install.sh' -not -name '.git*' -not -path '*/.git/*' -not -path '*/nvim/*'
}

cd ${0//install.sh/}

for file in $(find-files)
do
	orig=${file/./"$(pwd)"}
	dest=${file/./$HOME}

	if [[ -f "$dest" && ! -h "$dest" ]]
	then
		echo "Moving old ${file/.\//} to ${file/.\//}.bak"
		mv -f "$dest" "$dest.bak"
	fi

	if [[ ! -d $(dirname "$dest") ]]
	then
		mkdir -p $(dirname "$dest")
	fi

	if [[ ! -e "$dest" ]]
	then
		ln -s $orig $dest
	fi
done

if (command -v pip3 &> /dev/null && ! command -v nvr &> /dev/null)
then
	echo "Installing neovim-remote from pip3"
	pip3 install neovim-remote
fi

dir="$HOME/.config/nvim"

if [[ -d $dir && ! -d $dir/.git ]]
then
	if [[ "$(ls -A $dir)" ]]
	then
		echo "Moving old $dir to $dir.bak"
		mv -f "$dir" "$dir.bak"
	else
		echo "Removing empty $dir"
		rmdir "$dir"
	fi
fi

if [[ ! -d $dir ]]
then
	git clone https://github.com/il-mich/nvim $dir
fi

