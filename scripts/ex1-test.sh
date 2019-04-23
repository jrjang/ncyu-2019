#!/bin/bash
set -e
set -x

if ! [[ "$1" =~ "https://github.com/" ]]; then
	echo "Please provide your Github ncyu-2019 project url"
	exit 1
fi

GITHUB_URL=$1
GITHUB_REPO=`echo ${GITHUB_URL#https://github.com/}`
GITHUB_PROJECT=`echo $GITHUB_REPO | cut -d '/' -f 2`
PROJECT_BRANCH=ex1
DIR_LOCAL=$GITHUB_PROJECT

GIT_NAME=`git config -l | grep user.name | cut -d '=' -f 2`

COMMIT_MSG="[Example 1] $GIT_NAME"

# update local and remote code base
git remote add origin ssh://git@github.com/$GITHUB_REPO
git remote add official https://github.com/jrjang/$GITHUB_PROJECT
git fetch -q --all

git checkout -b $PROJECT_BRANCH
git rebase official/$PROJECT_BRANCH
git commit -q --amend -m "$COMMIT_MSG"
echo "[STATUS] Example 1: Git commit amend done"

git push -f -q origin HEAD:$PROJECT_BRANCH
echo "[STATUS] Example 1: Git push done"

hub pull-request -b jrjang/$GITHUB_PROJECT:$PROJECT_BRANCH -h $GITHUB_REPO:$PROJECT_BRANCH -m "$COMMIT_MSG"
echo "[STATUS] Example 1: Github PR done"

echo "[STATUS] Example 1: done"
