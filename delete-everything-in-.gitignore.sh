#!/usr/bin/env sh
while IFS= read -r line; do
	if [ $line = "#script-break" ]; then
		exit
	fi
  for path in $line; do
    rm -rf $path
  done
done < .gitignore
