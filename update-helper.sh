#!/bin/sh
root=$(pwd)
tempdir=NadekoInstall_Temp
dir=Mayoi-ecchi

while :; do cd "$root/$dir" && node app.js && cd "$root" && wget -N https://github.com/nhatthanhxx/Mayoi-ecchi/raw/main/self-update.sh && bash "$root/self-update.sh"; sleep 5s; done

echo ""
echo "If you can read this, somethings wrong."

exit 0