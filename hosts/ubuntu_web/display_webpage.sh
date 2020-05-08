'#! /bin/sh'

if [ "$1" == "" ]; then

  page=$(wget -O - http://www.wt2-3.ephec-ti.be)
  echo "$page"

else
  page=$(wget -O - $1)

  echo "$page"

fi
