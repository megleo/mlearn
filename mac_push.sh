#!/bin/bash

path=~/github/

git_push(){
    echo "开始push"
    cd ${1}
    echo "-------切换目录------"
    echo `pwd`
    echo "---------------------"
	echo "${1} 文件夹 有变化, 正在准备push..."
    date=`date "+%Y-%m-%d %H:%M:%S"`
	git add .    
    git commit -m "automatic push @$(date)"
    echo "git fetch origin main"
    git fetch origin main

    echo "git merge origin/main"
    git merge origin/main

    echo "git push origin main"
    git push origin main
         
}

git_push /home/ts/vscode/NoteBook
