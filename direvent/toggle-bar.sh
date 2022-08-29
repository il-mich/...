#!/usr/bin/env bash

out="$(dkcmd status type=full num=1)"

for mon in $(echo "$out" | grep 'panels: ' | sed 's/panels: //' | sed 's/0x.*://')
do
	ws="$(echo "$out" | grep 'monitors: ' | sed "s/.*$mon:\([0-9]\+\).*/\1/")"

	workspaces="$(echo "$out" | sed -n '/^workspaces:/,/^$/p')"

	inactive="$(echo "$workspaces" | grep -E "$ws:.* 0x00000000")"
	padded="$(echo "$workspaces" | grep -E "$ws:.* 0 0 0 0")"
	float="$(echo "$workspaces" | head -1 | grep -P "\*$ws:[^\s]+?:(none)")"
	smartgap="$(echo "$workspaces" | grep -E "$ws:.* 0x" | cut -d" " -f8)"

	#echo "i:$inactive"
	#echo "p:$padded"
	#echo "f:$float"
	#echo "s:$smartgap"

	bar="$(pgrep -nfx "polybar full")"
	if [[ "$inactive" == "" && "$padded" != "" && "$float" == "" && "$smartgap" == "1" ]]
	then
		polybar-msg -p $bar cmd show
	else
		polybar-msg -p $bar cmd hide
	fi
done

exit 0
