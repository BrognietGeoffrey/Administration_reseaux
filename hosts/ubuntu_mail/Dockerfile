FROM ubuntu:latest

RUN apt update && apt install -y curl && apt install -y mutt && apt install -y nano

COPY .muttrc /root/
COPY sendmail.sh /
COPY mail.txt /
COPY custom_mail.txt /


CMD bash

