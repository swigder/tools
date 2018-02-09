#!/usr/bin/env bash

# Commands taken from tutorial at:
# https://ineed.coffee/3454/how-to-synchronize-an-overleaf-latex-paper-with-a-github-repository/

task=$1

if [ ${task} = "setup" ]; then
    overleaf=$2
    github=$3
    dir_name=$4
    git clone ${overleaf} ${dir_name}
    cd ${dir_name}
    git remote rename origin overleaf
    git remote add github ${github}
    git push github
elif [ ${task} = "o2g" ]; then
    git pull overleaf master
    git push github
fi
