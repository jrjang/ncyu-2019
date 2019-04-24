#!/bin/bash
set -e

if ! [[ "$1" =~ "https://github.com/" ]]; then
	echo "Please provide your Github ncyu-2019 project url"
	exit 1
fi

GITHUB_URL=$1
GITHUB_REPO=`echo ${GITHUB_URL#https://github.com/}`
GITHUB_PROJECT=`echo $GITHUB_REPO | cut -d '/' -f 2`
PROJECT_BRANCH=ex2
DIR_LOCAL=$GITHUB_PROJECT

GIT_NAME=`git config -l | grep user.name | cut -d '=' -f 2`

COMMIT_MSG="[Example 2] $GIT_NAME"

# update local and remote code base
git remote add official https://github.com/jrjang/$GITHUB_PROJECT
git fetch -q --all

flag=

if [[ "`git show HEAD`" =~ "Signed-off-by:" ]]; then
	flag=-s
fi

git commit $flag -q --amend -m "$COMMIT_MSG"
echo "[STATUS] Example 2: Git commit amend done"

git push -f -q origin HEAD:$PROJECT_BRANCH
echo "[STATUS] Example 2: Git push done"

hub pull-request -b jrjang/$GITHUB_PROJECT:$PROJECT_BRANCH -h $GITHUB_REPO:$PROJECT_BRANCH -m "$COMMIT_MSG"
echo "[STATUS] Example 2: Github PR done"

echo "[STATUS] Example 2: done"
