#!/bin/sh
root=$(pwd)
dir=Mayoi-ecchi
tempdir=Mayoi_Temp
olddir=Mayoi_old

cd "$root"
rm -r -f "$tempdir"
mkdir "$tempdir"
cd "$tempdir"
git clone https://github.com/nhatthanhxx/Mayoi-ecchi.git
echo ""
echo "Clone done"

cd "$root"

mv -f "$dir" "$olddir"
mv "$tempdir/$dir" "$dir"
echo ""
echo "Replace done"

cp -f "$root/$olddir/config.json" "$root/$dir/config.json"
cp -f "$root/$olddir/data" "$root/$dir/data"
echo ""
echo "Copy data done"

rm -r -f "$tempdir"
echo ""
echo "Clean done"

cd "$root"
rm "$root/self-update.sh"

exit 0