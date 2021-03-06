#!/bin/sh
root=$(pwd)
dir=Mayoi-ecchi
tempdir=Mayoi_temp
olddir=Mayoi_old

cd "$root"
rm -r -f "$tempdir"
rm -r -f "$olddir"
echo "Pre-clean done"

git clone https://github.com/nhatthanhxx/Mayoi-ecchi.git "$tempdir"
echo "Clone done"

mv "$dir" "$olddir"
mv "$tempdir" "$dir"
echo "Replace done"

cp -f "$root/$olddir/config.json" "$root/$dir/config.json"
cp -f -r "$root/$olddir/data" "$root/$dir/data"
echo "Copy data done"

rm -r -f "$tempdir"
rm -r -f "$olddir"
echo "Clean done"

cd "$root"
cp "$root/$dir/update-helper.sh" "$root/update-helper.sh"
echo "Update local bash"

cd "$root"
rm "$root/self-update.sh"

exit 0