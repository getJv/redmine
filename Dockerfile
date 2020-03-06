FROM redmine:3.4.11

MAINTAINER Jhonatan Morais <jhonatanvinicius@gmail.com>

RUN apt-get update && \ 
	apt-get install -y nano unzip

WORKDIR /usr/src/redmine/public/themes

COPY PurpleMine2.zip /usr/src/redmine/public/themes/PurpleMine2.zip

RUN unzip /usr/src/redmine/public/themes/PurpleMine2.zip

WORKDIR  /usr/src/redmine/plugins

COPY redmine_wysiwyg_editor.zip /usr/src/redmine/public/themes/redmine_wysiwyg_editor.zip

RUN unzip /usr/src/redmine/public/themes/redmine_wysiwyg_editor.zip

WORKDIR /usr/src/redmine








