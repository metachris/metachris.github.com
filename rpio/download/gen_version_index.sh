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

echo "[RPIO](../../) v$version" > index.md
echo "-----------" >> index.md
echo "" >> index.md

for fn in `ls`; do
    if [ "$fn" != "index.md" ]; then
        shasum=`shasum $fn | awk '{ print $1 }'`
        md5sum=`md5 $fn | awk '{ print $4 }'`
        echo "[$fn]($fn)" >> index.md
        echo "" >> index.md
        echo "    MD5  ($fn) = $md5sum" >> index.md
        echo "    SHA1 ($fn) = $shasum" >> index.md
        echo "" >> index.md
        echo "" >> index.md
    fi
done

pandoc -s -S index.md -o index.html -t html5

echo "done"
