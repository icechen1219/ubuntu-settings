#!/bin/bash
if [ $# -gt 1 ]; then
    echo config account info
    git config user.name "icechen1219"
    git config user.email "sagachen@aliyun.com"
    git add .
    git commit -m "$2"

    echo github push first
    git remote remove origin
    git remote add origin git@gitee.com:weyoungtech/$1.git
    if [ -n "$3" ]; then
        git push origin $3
    else
        git push origin master
    fi

    echo gitee push second
    git remote remove origin
    git remote add origin git@github.com:icechen1219/$1.git
    if [ -n "$3" ]; then
        git push origin $3
    else
        git push origin master
    fi
else
    echo "Usage: sync_github_and_gitee.sh ProjectName commitDetails branch"
    echo "Example: sync_github_and_gitee.sh wexin-pay 'remove jquery support' master"
fi
