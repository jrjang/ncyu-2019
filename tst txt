[33mcommit f8b565eceb75c9d0fa3366f4cf7a171b6929e011[m[33m ([m[1;36mHEAD -> [m[1;32mex2[m[33m, [m[1;31morigin/ex2[m[33m)[m
Author: Jun-Ru Chang <jrjang@realtek.com>
Date:   Wed Apr 24 17:11:20 2019 +0800

    Example 2
    
    Signed-off-by: Jun-Ru Chang <jrjang@realtek.com>

[1mdiff --git a/README.md b/README.md[m
[1mindex 293332d..a6436d5 100644[m
[1m--- a/README.md[m
[1m+++ b/README.md[m
[36m@@ -1,3 +1,5 @@[m
[31m-Example 1:[m
[32m+[m[32mExample 2:[m
 [m
[31m-$ curl -s https://raw.githubusercontent.com/jrjang/ncyu-2019/ex1/scripts/ex1-test.sh | bash -s -- https://github.com/YOUR_GITHUB_ACCOUNT/ncyu-2019[m
[32m+[m[32m$ curl -s https://raw.githubusercontent.com/jrjang/ncyu-2019/ex2/scripts/ex2-pre.sh | bash -s -- https://github.com/YOUR_GITHUB_ACCOUNT/ncyu-2019[m
[32m+[m
[32m+[m[32m$ curl -s https://raw.githubusercontent.com/jrjang/ncyu-2019/ex2/scripts/ex2-test.sh | bash -s -- https://github.com/YOUR_GITHUB_ACCOUNT/ncyu-2019[m
[1mdiff --git a/data/0001-ex2.patch b/data/0001-ex2.patch[m
[1mnew file mode 100644[m
[1mindex 0000000..a504f99[m
[1m--- /dev/null[m
[1m+++ b/data/0001-ex2.patch[m
[36m@@ -0,0 +1,19 @@[m
[32m+[m[32m--- a/ex2.txt[m
[32m+[m[32m+++ b/ex2.txt[m
[32m+[m[32m@@ -2,7 +2,7 @@ int ex2() {[m
[32m+[m[41m [m	[32m/*[m
[32m+[m[41m [m	[32m * test[m
[32m+[m[41m [m	[32m * test[m
[32m+[m[32m-	 * test[m
[32m+[m[32m+	 * tst[m
[32m+[m[41m [m	[32m * test[m
[32m+[m[41m [m	[32m */[m
[32m+[m[41m [m
[32m+[m[32m@@ -13,7 +13,7 @@ int ex2(int i) {[m
[32m+[m[41m [m	[32m/*[m
[32m+[m[41m [m	[32m * test[m
[32m+[m[41m [m	[32m * test[m
[32m+[m[32m-	 * test[m
[32m+[m[32m+	 * txt[m
[32m+[m[41m [m	[32m * test[m
[32m+[m[41m [m	[32m */[m
[1mdiff --git a/ex2.txt b/ex2.txt[m
[1mnew file mode 100644[m
[1mindex 0000000..e0c9c36[m
[1m--- /dev/null[m
[1m+++ b/ex2.txt[m
[36m@@ -0,0 +1,21 @@[m
[32m+[m[32mint ex2() {[m
[32m+[m	[32m/*[m
[32m+[m	[32m * test[m
[32m+[m	[32m * test[m
[32m+[m	[32m * test[m
[32m+[m	[32m * test[m
[32m+[m	[32m */[m
[32m+[m
[32m+[m	[32mreturn 0;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mint ex2(int i) {[m
[32m+[m	[32m/*[m
[32m+[m	[32m * test[m
[32m+[m	[32m * test[m
[32m+[m	[32m * test[m
[32m+[m	[32m * test[m
[32m+[m	[32m */[m
[32m+[m
[32m+[m	[32mreturn 0;[m
[32m+[m[32m}[m
[1mdiff --git a/scripts/ex2-pre.sh b/scripts/ex2-pre.sh[m
[1mnew file mode 100644[m
[1mindex 0000000..b94f1bd[m
[1m--- /dev/null[m
[1m+++ b/scripts/ex2-pre.sh[m
[36m@@ -0,0 +1,34 @@[m
[32m+[m[32m#!/bin/bash[m
[32m+[m[32mset -e[m
[32m+[m
[32m+[m[32mif ! [[ "$1" =~ "https://github.com/" ]]; then[m
[32m+[m	[32mecho "Please provide your Github ncyu-2019 project url"[m
[32m+[m	[32mexit 1[m
[32m+[m[32mfi[m
[32m+[m
[32m+[m[32mGITHUB_URL=$1[m
[32m+[m[32mGITHUB_REPO=`echo ${GITHUB_URL#https://github.com/}`[m
[32m+[m[32mGITHUB_PROJECT=`echo $GITHUB_REPO | cut -d '/' -f 2`[m
[32m+[m[32mPROJECT_URL=git@github.com:$GITHUB_REPO[m
[32m+[m[32mPROJECT_BRANCH=ex2[m
[32m+[m[32mDIR_LOCAL=$GITHUB_PROJECT[m
[32m+[m
[32m+[m[32mGIT_NAME=`git config -l | grep user.name | cut -d '=' -f 2`[m
[32m+[m
[32m+[m[32mCOMMIT_MSG="[Example 2] $GIT_NAME"[m
[32m+[m
[32m+[m[32mgit clone -q $PROJECT_URL -b ex0[m
[32m+[m[32mecho "[STATUS] Example 2: Github clone done"[m
[32m+[m[32mpushd $DIR_LOCAL[m
[32m+[m
[32m+[m[32m# update local and remote code base[m
[32m+[m[32mgit remote add official https://github.com/jrjang/$GITHUB_PROJECT[m
[32m+[m[32mgit fetch -q official[m
[32m+[m[32mgit push -q -f origin official/$PROJECT_BRANCH:refs/heads/$PROJECT_BRANCH[m
[32m+[m[32mecho "[STATUS] Example 2: Github update done"[m
[32m+[m[32mpopd[m
[32m+[m
[32m+[m[32m# re-clone source code[m
[32m+[m[32m[ -d $DIR_LOCAL ] && rm -rf $DIR_LOCAL[m
[32m+[m[32mgit clone -q $PROJECT_URL -b $PROJECT_BRANCH[m
[32m+[m[32mecho "[STATUS] Example 2: Github re-clone done"[m
[1mdiff --git a/scripts/ex2-test.sh b/scripts/ex2-test.sh[m
[1mnew file mode 100644[m
[1mindex 0000000..4b063a6[m
[1m--- /dev/null[m
[1m+++ b/scripts/ex2-test.sh[m
[36m@@ -0,0 +1,38 @@[m
[32m+[m[32m#!/bin/bash[m
[32m+[m[32mset -e[m
[32m+[m
[32m+[m[32mif ! [[ "$1" =~ "https://github.com/" ]]; then[m
[32m+[m	[32mecho "Please provide your Github ncyu-2019 project url"[m
[32m+[m	[32mexit 1[m
[32m+[m[32mfi[m
[32m+[m
[32m+[m[32mGITHUB_URL=$1[m
[32m+[m[32mGITHUB_REPO=`echo ${GITHUB_URL#https://github.com/}`[m
[32m+[m[32mGITHUB_PROJECT=`echo $GITHUB_REPO | cut -d '/' -f 2`[m
[32m+[m[32mPROJECT_BRANCH=ex2[m
[32m+[m[32mDIR_LOCAL=$GITHUB_PROJECT[m
[32m+[m
[32m+[m[32mGIT_NAME=`git config -l | grep user.name | cut -d '=' -f 2`[m
[32m+[m
[32m+[m[32mCOMMIT_MSG="[Example 2] $GIT_NAME"[m
[32m+[m
[32m+[m[32m# update local and remote code base[m
[32m+[m[32mgit remote add official https://github.com/jrjang/$GITHUB_PROJECT[m
[32m+[m[32mgit fetch -q --all[m
[32m+[m
[32m+[m[32mflag=[m
[32m+[m
[32m+[m[32mif [[ "`git show HEAD`" =~ "Signed-off-by:" ]]; then[m
[32m+[m	[32mflag=-s[m
[32m+[m[32mfi[m
[32m+[m
[32m+[m[32mgit commit $flag -q --amend -m "$COMMIT_MSG"[m
[32m+[m[32mecho "[STATUS] Example 2: Git commit amend done"[m
[32m+[m
[32m+[m[32mgit push -f -q origin HEAD:refs/heads/$PROJECT_BRANCH[m
[32m+[m[32mecho "[STATUS] Example 2: Git push done"[m
[32m+[m
[32m+[m[32mhub pull-request -b jrjang/$GITHUB_PROJECT:$PROJECT_BRANCH -h $GITHUB_REPO:$PROJECT_BRANCH -m "$COMMIT_MSG"[m
[32m+[m[32mecho "[STATUS] Example 2: Github PR done"[m
[32m+[m
[32m+[m[32mecho "[STATUS] Example 2: done"[m
[1mdiff --git a/scripts/ex2-verify.sh b/scripts/ex2-verify.sh[m
[1mnew file mode 100644[m
[1mindex 0000000..971e64c[m
[1m--- /dev/null[m
[1m+++ b/scripts/ex2-verify.sh[m
[36m@@ -0,0 +1,9 @@[m
[32m+[m[32m#!/bin/bash[m
[32m+[m[32mset -e[m
[32m+[m
[32m+[m[32mif ! [[ "`git show HEAD`" =~ "`cat data/0001-ex2.patch`" ]]; then[m
[32m+[m	[32mecho "It is different between the requirement with your modification!"[m
[32m+[m	[32mexit 1[m
[32m+[m[32mfi[m
[32m+[m
[32m+[m[32mexit 0[m
[1mdiff --git a/scripts/verify.sh b/scripts/verify.sh[m
[1mindex 0b1e6a0..7c6554d 120000[m
[1m--- a/scripts/verify.sh[m
[1m+++ b/scripts/verify.sh[m
[36m@@ -1 +1 @@[m
[31m-ex1-verify.sh[m
\ No newline at end of file[m
[32m+[m[32mex2-verify.sh[m
\ No newline at end of file[m
