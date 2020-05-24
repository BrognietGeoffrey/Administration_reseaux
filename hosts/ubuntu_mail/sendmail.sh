#!/bin/bash

sender=diomenios@wt2-3.ephec-ti.be
receiver=diomenios@wt2-3.ephec-ti.be

if [ "$1" != '' ]; then
  #reseau dmz-warm not exist
  sender=$1
  echo "le destinataire du mail est : $1"
fi
if [ "$2" != '' ]; then
  #reseau dmz-warm not exist
  receiver=$2
  echo "l'addresse mail d'envois est : $2"
fi
if [ "$3" != '' ]; then
  #reseau dmz-warm not exist
  echo "le sujet du mail est : $3"
fi
if [ "$4" != '' ]; then
  #reseau dmz-warm not exist
  echo "From: Diomenios Grande <$1>
To: Arys Louis <$2>
Subject: $3
Date: Sun, 24 Mai 2020 08:45:16
" > custom_mail.txt
  echo $4 >> custom_mail.txt
  curl smtp://wt2-3.ephec-ti.be --mail-from $sender --mail-rcpt $receiver --upload-file custom_mail.txt
else
  echo "mail par defaut envoye"
  curl smtp://wt2-3.ephec-ti.be --mail-from $sender --mail-rcpt $receiver --upload-file mail.txt 
fi



