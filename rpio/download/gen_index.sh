#!/bin/bash
set -e

if [ "$1" == "" ]; then
    echo "use: $0 <latest_version>"
    exit 1
fi

# Update latest symlink
rm -rf latest
cp -pr $1 latest

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
