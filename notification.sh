#!bin/bash
sleep 5 #Ожидание симулирующее выполнение продолжительной задачи.

while read line
do
	text=$text+$line
done < "${1:-/dev/stdin}"

curl https://api.telegram.org/bot5885781455:AAH0qeZBgaZIUygeMEM0ErsOIpAmVbT59D8/sendMessage -d chat_id=444412919 -d text="$text"
