#!/bin/bash
while true; do
	for f in *.md; do
			html="`basename $f .md`.html"
			if [ ! -f "$html" ] \
				|| [ `stat -c %Y "$f"` -gt `stat -c %Y "$html"` ]; then
				pandoc $f -o $html
			fi
		done
		sleep 10 # Il serait plus efficace d'utiliser inotityfwait
done
