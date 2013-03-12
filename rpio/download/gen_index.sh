#!/bin/bash
set -e

# Update latest symlink
rm -rf latest
for x in `ls -d */`; do version_latest=$x; done
cp -pr $version_latest latest

rm -f index.md
rm -f index.html

echo "[RPIO](../) Debian Package Downloads" > index.md
echo "-----------------------------" >> index.md
echo "" >> index.md
echo "* [latest/](latest/)" >> index.md

for d in `ls -d */`; do
    if [ "$d" != "latest/" ]; then
        echo "* [rpio_$d]($d)" >> index.md
    fi;
done

pandoc index.md -o index.html
rm index.md
echo "done"
