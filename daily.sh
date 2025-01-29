#! /bin/bash

ran=$((((($RANDOM**4)/50000000000000000)+8)%10))
for((j=0;j<ran;j++)); do
	echo -e "$ran\n" >> README.md
	git commit -am "test"
done
git push
