FROM ubuntu:latest

ENV TZ=Europe/Minsk
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone



RUN apt-get update && apt-get upgrade -y

RUN apt-get install wget -y

RUN DEBIAN_FRONTEND=noninteractive apt-get install build-essential libxml2-dev libncurses5-dev linux-headers-generic libsqlite3-dev libssl-dev -y

RUN cd /usr/src
RUN mkdir asterisk

RUN wget http://downloads.asterisk.org/pub/telephony/asterisk/releases/asterisk-17.4.0.tar.gz
RUN tar -xvzf asterisk-17.4.0.tar.gz
RUN cd /asterisk-17.4.0/contrib/scripts

#RUN ./asterisk-17.4.0/contrib/scripts/install_prereq install

#RUN ./asterisk-17.4.0/configure
