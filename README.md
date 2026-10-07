
# Contents for the LRLab web site

https://www.lr.first.iir.isct.ac.jp/

## here

Check the site locally by

`$ hugo server -D`

http://localhost:1313/

NOTE: -D option shows up draft files with 'draft: true'


## to go (to deploy)

Build the site by

`$ hugo`

or

`$ hugo server --bind=192.168.XXX.YYY -b http://192.168.XXX.YYY`

http://192.168.XXX.YYY:1313/

Then, add, commit, and push.

Or if you are sure,

`$ sh deploy.sh` (give a commit message when asked)

## member management
### adding a new member
`$ sh add_memmber.sh LAST,FIRST YY G`

The command will show a help if no options are provided

### changing the group of a member (e.g., master -> doctoral)
`$ sh change_group.sh LAST,FIRST YY G`

The command will show a help if no options are provided

