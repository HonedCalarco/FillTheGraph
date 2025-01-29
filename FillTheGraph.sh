#!/bin/bash

set -e

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

here= $(pwd)
echo -e "run \$crontab -e and add the following line to the end of the file:\n
@daily (cd $here; ./$here/daily.sh"
