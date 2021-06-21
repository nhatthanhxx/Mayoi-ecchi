#!/bin/sh
root=$(pwd)
dir=Mayoi-ecchi
tempdir=Mayoi_Temp
olddir=Mayoi_old

while :; do cd "$root/$dir" && node app.js && cd "$root" && wget -N https://github.com/nhatthanhxx/Mayoi-ecchi/raw/main/self-update.sh && bash "$root/self-update.sh"; sleep 5s; done

echo ""
echo "If you can read this, somethings wrong."

exit 0