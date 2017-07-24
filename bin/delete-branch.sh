#!/usr/bin/env bash

if [ $# -eq 0 ]; then
  echo "Please pass the branch_name to delete. e.g. delete-branch my-old-branch"
elif [ $# -eq 1 ]; then
  git branch -d $1 && git push origin :$1
else
  git branch -D $1 && git push origin :$1
fi
