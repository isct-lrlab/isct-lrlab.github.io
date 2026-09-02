
# Contents for the LRLab web site

https://www.lr.first.iir.isct.ac.jp/

## here

Check the site by

$ hugo server -D

http://localhost:1313/

NOTE: -D option shows up draft files with 'draft: true'


## to go (to deploy)

Build the site by

$ hugo --cleanDestinationDir --minify

or

$ hugo server --bind=192.168.XXX.YYY -b http://192.168.XXX.YYY

http://192.168.XXX.YYY:1313/

Then, add, commit, and push.
