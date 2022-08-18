#!/usr/bin/env bash

out="$(dkcmd status type=full num=1)"

for mon in $(echo "$out" | grep 'panels: ' | sed 's/panels: //' | sed 's/0x.*://')
do
	ws="$(echo "$out" | grep 'monitors: ' | sed "s/.*$mon:\([0-9]\+\).*/\1/")"
	smartgap="$(echo "$out" | sed -n '/^workspaces:/,/^$/p' | grep -E "$ws:.* 0x" | cut -d" " -f8)"

	bar="$(pgrep -nfx "polybar full")"
	if [[ "$smartgap" == "0" ]]
	then
		polybar-msg -p $bar cmd hide
	else
		polybar-msg -p $bar cmd show
	fi
done

exit 0
