#!/bin/sh
root=$(pwd)
tempdir=Mayoi_Temp


cd "$root"
rm -r -f "$tempdir"
mkdir "$tempdir"
cd "$tempdir"
git clone https://github.com/nhatthanhxx/Mayoi-ecchi.git
echo ""
echo "Clone done"

cd "$root"

mv -f Mayoi-ecchi Mayoi_old
mv "$tempdir"/Mayoi-ecchi Mayoi-ecchi
echo ""
echo "Replace done"

cp -f /Mayoi_old/config.json /Mayoi-ecchi/config.json
cp -f /Mayoi_old/data Mayoi-ecchi/data
echo ""
echo "Copy data done"

rm -r -f "$tempdir"
echo ""
echo "Clean done"

cd "$root"
rm "$root/self-update.sh"

exit 0