#!/bin/bash
set -e

if [ "$1" == "" ]; then
	echo "Use: $0 <version>"
	exit 1
fi

version=$1
cd $version

rm -f index.md
rm -f index.html

echo "RPIO v$version" > index.md
echo "-----------" >> index.md
echo "" >> index.md

for fn in `ls`; do
    if [ "$fn" != "index.md" ]; then
        echo "* [$fn]($fn)" >> index.md
    fi
done

pandoc index.md -o index.html

echo "done"
