#!/bin/bash

set -e

if [ "$#" -ne 2 ]; then
	echo "pass what you want the dir to be named and the URL of the SSH endpoint for the git repo you want to use"
	exit 2
fi

mkdir ../$1
cp main.sh ../$1/main.sh
cp daily.sh ../$1/daily.sh
cd ../$1

echo "# Initial Commit" >> README.md
git init
git add README.md
git commit -am "initial commit"
git remote add origin $2
git push -u origin master

./main.sh

here=$(pwd)
echo -e "run \$crontab -e and add the following line to the end of the file:\n
@daily (cd $here; ./daily.sh)"
