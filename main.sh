#! /bin/bash
CaP(){
for((i=$1;i<$2;i++)); do
dat=$(date -d "-$i days")
GIT_AUTHOR_DATE=$dat
GIT_COMMITTER_DATE=$dat
ran=$((((($RANDOM**4)/50000000000000000)+8)%10))
for((j=0;j<ran;j++)); do
	echo -e "$dat\n" >> README.md
	git commit --date "$dat" -am "test"
done
done
git push
}
CaP 0 50
CaP 50 100
CaP 100 150
CaP 150 200
CaP 200 250
CaP 250 300
CaP 300 350
CaP 350 400
