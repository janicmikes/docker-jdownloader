FROM openjdk:8-jre-alpine

LABEL MAINTAINER="Janic Mikes <janic.mikes@gmail.com>"

ADD http://installer.jdownloader.org/JDownloader.jar /opt/JDownloader/JDownloader.jar

RUN java -Djava.awt.headless=true -jar /opt/JDownloader/JDownloader.jar

VOLUME /root/Downloads
VOLUME /opt/JDownloader/cfg

WORKDIR /opt/JDownloader

CMD [ "java", "-Djava.awt.headless=true", "-jar", "/opt/JDownloader/JDownloader.jar" ]
