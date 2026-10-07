#!/bin/sh

hugo --cleanDestinationDir --minify
git add -A
git commit -a
git push
