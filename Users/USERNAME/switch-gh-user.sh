#!/bin/bash
gh_user="${1:-Nothing}"

if [ "$gh_user" == 'personal' ]; then
  ssh-add -D
  ssh-add ~/.ssh/personal_ssh
  git setpersonal
elif [ "$gh_user" == 'work' ]; then
  ssh-add -D
  ssh-add ~/.ssh/work_ssh
  git setwork
elif [ "$gh_user" == 'whois' ]; then
  echo 'Current user:'
  git config user.name
  git config user.email
  exit 1
else
  echo 'Nothing was applied'
  exit 1
fi
echo "$gh_user applied!"
ssh -T git@github.com
exit 0

# TO USE 
# sh ./switch-gh-user.sh USER