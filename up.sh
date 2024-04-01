#!/bin/bash
#set -e


# reset - commit your changes or stash them before you merge
# git reset --hard - personal alias - grh

# https://www.git-tower.com/learn/git/faq/undo-last-commit

# checking if I have the latest files from github
echo "Checking for newer files online first"
git pull

#workdir=$(pwd)

# Below command will backup everything inside the project folder
git add --all .

echo "####################################"
echo "Write your commit comment!"
echo "####################################"

read input

# Committing to the local repository with a message containing the time details and commit text

git commit -m "$input"

# Push the local files to github

git push -u origin main
#git push -u origin main --force

echo "################################################################"
echo "###################    Git Push Done      ######################"
echo "################################################################"
