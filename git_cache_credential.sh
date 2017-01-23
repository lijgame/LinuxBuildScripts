#!/bin/sh

git config --global credential.helper cache

# if you want to set timeout
#git config --global credential.helper 'cache --timeout=3600'

# to set user name for one site
git config --global credential.https://github.com lijgame
# to review or edit
#git config --global --edit
