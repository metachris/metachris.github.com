#!/bin/bash
set -e

pandoc -s -S index.md -o index.html -t html5
