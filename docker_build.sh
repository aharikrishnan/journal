#! /bin/bash

docker build -t builder . \
	&& docker run -v "/home/ubuntu/journal:/app" -it builder 'npm i && npx @11ty/eleventy' \
	&& sudo rm -r /var/www/journal \
	&& sudo cp -R /home/ubuntu/journal/_site /var/www/journal
