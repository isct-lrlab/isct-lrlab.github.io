#!/bin/sh

hugo --cleanDestinationDir --minify
git commit -a
git push
