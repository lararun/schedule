#!/bin/sh
if [ ! -f "/home/artisan" ]; then
	echo "Artisan Not Fount ..."
	exit;
fi
round=1
while [ true ]; do
	echo Schedule Round: $round  Time: `date '+%F %T'`
	((round=$round+1))
	/usr/bin/php /home/artisan schedule:run
	/bin/sleep 60
done