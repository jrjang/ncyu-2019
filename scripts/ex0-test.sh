#!/bin/bash
set -e
set -x

if [ "$1" == "" ]; then
	exit 1
fi

GITHUB_URL=$1
GITHUB_REPO=`echo ${GITHUB_URL#https://github.com/}`
GITHUB_ACCOUNT=`echo $GITHUB_REPO | cut -d '/' -f 1`
GITHUB_PROJECT=`echo $GITHUB_REPO | cut -d '/' -f 2`
PROJECT_URL=git@github.com:$GITHUB_REPO
PROJECT_BRANCH=ex0
DIR_LOCAL=$GITHUB_PROJECT

GIT_NAME=`git config -l | grep user.name | cut -d '=' -f 2`
GIT_EMAIL=`git config -l | grep user.email | cut -d '-' -f 2`

COMMIT_MSG="[Example 0] $GIT_NAME"

git clone $PROJECT_URL
cd $DIR_LOCAL

git remote add official https://github.com/jrjang/$GITHUB_PROJECT
git fetch official
git push -f origin official/$PROJECT_BRANCH:$PROJECT_BRANCH
git checkout --detach origin/$PROJECT_BRANCH

echo "Your chinese name: "
read NAME

echo "$GIT_NAME,$GIT_EMAIL,${NAME::1}◯${NAME: 1}" >> ex0.txt

git add ex0.txt
echo "[STATUS] Example 0: Git add done"

git commit -s -m "$COMMIT_MSG"
echo "[STATUS] Example 0: Git commit done"

git push origin HEAD:$PROJECT_BRANCH
echo "[STATUS] Example 0: Git push done"

echo hub pull-request -b jrjang/$GITHUB_PROJECT:$PROJECT_BRANCH -h $GITHUB_REPO:$PROJECT_BRANCH -m "$COMMIT_MSG"
hub pull-request -b jrjang/$GITHUB_PROJECT:$PROJECT_BRANCH -h $GITHUB_REPO:$PROJECT_BRANCH -m "$COMMIT_MSG"
echo "[STATUS] Example 0: Github PR done"

echo "[STATUS] Example 0: done"
