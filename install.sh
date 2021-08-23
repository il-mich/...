#! /bin/bash

find-files () {
	find . -type f -not -name 'install.sh' -not -name '.git*' -not -path '*/.git/*' -not -path '*/nvim/*'
}

cd ${0//install.sh/}

for file in $(find-files)
do
	orig=${file/./"$(pwd)"}
	dest=${file/./$HOME}

	if [[ -f "$dest" && "$(stat -c %h -- "$dest")" -lt 2 ]]
	then
		echo "Moving old ${file/.\//} to ${file/.\//}.bak"
		mv -f "$dest" "$dest.bak"
	fi

	if [[ ! -d $(dirname "$dest") ]]
	then
		mkdir -p $(dirname "$dest")
	fi

	ln $orig $dest
done

if [[ ! -d "$HOME/.config/nvim" ]]
then
	git submodule update
	ln -s "$(pwd)/.config/nvim" "$HOME/.config/nvim"
fi

