#!/bin/bash
sleep 5 #Ожидание симулирующее выполнение продолжительной задачи.

#Чтение текста из файла. TODO(Читать данные из log файла.)
while read -r line
do
	text=$text+$line
done < "${1:-/dev/stdin}"

#Отправка уведомления о выполнении скрипта. TODO(Поменять ID бота и ID чата.)
curl https://api.telegram.org/bot5885781455:AAH0qeZBgaZIUygeMEM0ErsOIpAmVbT59D8/sendMessage -d chat_id=444412919 -d text="$text"
