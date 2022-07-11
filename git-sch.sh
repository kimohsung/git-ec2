# git-sch.sh

Y=$(date +%Y)
M=$(date +%m)
D=$(date +%d)

Ym=$Y-$M
Ymd=$Y-$M-$D
Gitrep="git-ec2"

HomeDir="/root/"
GitDir="$HomeDir/$GitRep"
FileDir="$HomeDir/$GitRep/$Ym"
FileNm="$Ymd".md

mkdir -p $FileDir

echo "### $Ymd ###" >> $FileDir/$FileNm

cd $GitDir
git add .
git commit -m "commit $FileNm"
git push origin master
