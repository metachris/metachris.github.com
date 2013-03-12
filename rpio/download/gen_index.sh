#!/bin/bash
set -e

rm -f index.md
rm -f index.html

echo "[RPIO](../) Debian Package Downloads" > index.md
echo "-----------------------------" >> index.md
echo "" >> index.md

for d in `ls -d */`; do
    echo "* [rpio_$d]($d)" >> index.md
done

pandoc index.md -o index.html
rm index.md
