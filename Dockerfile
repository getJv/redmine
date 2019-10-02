FROM redmine:3.4.11

MAINTAINER Jhonatan Morais <jhonatanvinicius@gmail.com>

WORKDIR /usr/src/redmine/public/themes

COPY PurpleMine2.zip /usr/src/redmine/public/themes/PurpleMine2.zip

RUN apt-get update && \ 
	apt-get install -y nano unzip && \
	unzip /usr/src/redmine/public/themes/PurpleMine2.zip
	
WORKDIR /usr/src/redmine








