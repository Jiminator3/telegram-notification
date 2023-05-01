#!bin/bash
sleep 5
echo "Hello World!";
sleep 4
#tar -cvf backup_test.tar.gz ~/Документы/Timur/test0.txt
#mv ~/Документы/Timur/backup_test.tar.gz ~/Документы/Timur/test_folder1
#tar -xvf ~/Документы/Timur/test_folder1/backup_test.tar.gz

while read line
do
	text=$text+$line
done < "${1:-/dev/stdin}"

curl https://api.telegram.org/bot5885781455:AAH0qeZBgaZIUygeMEM0ErsOIpAmVbT59D8/sendMessage -d chat_id=444412919 -d text="$text"
