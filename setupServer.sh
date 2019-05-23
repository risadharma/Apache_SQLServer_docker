#!/bin/bash

echo "Please wait till the process Done."
echo "==================================\n\n"

echo "First, Run Docker\n"
docker-compose -f docker-compose.yml up -d

echo "Done.\n"
echo "Next, getting container id and creating env file..."
export testVariable=`docker ps -aqf name="sqlserver"`

echo "DB_HOST=$testVariable\n \
 	 DB_USERNAME=sa\n \
	 DB_PASSWORD=Passw0rd!\n \
	 DB_DATABASE=db_sertifikat\n \
	 DB_CONNECTION=sqlsrv\n" > .env.development

mv .env.development www/sertifikat/

echo "File created.\n\n"
echo "Preparation done, you can open localhost/sertifikat on your browser\n\n"

while true; do
	read -p 'Are you done using the server? yes/no: ' input
	case $input in
		[yY]*)
			echo "Okay, please wait for shutting down the server...\n\n"
			docker-compose -f docker-compose.yml down
			echo "\n\nServer Shutted Down, Thank you...\n\n"
			exit 1
			;;
		[nN]*)
			echo "Continuing"
			;;
		*)
			echo "invalid input" >&2
	esac
done
