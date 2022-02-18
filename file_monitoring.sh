h=`hostname`
d=`date +"%d-%m-%Y"`
if [ -f /banks/icici/kr/stmt/stmtof-$d.txt ]
then
echo "file exist"
else
echo "today statement not downloaded in $h, Please login manually and do necessary steps"
fi
