cd "$(dirname "$0")"

source ../../bin/activate

echo "Building app..."
python3 setup.py bdist_apps --platforms macosx_10_9_x86_64

read -p "Gameserver (Default: 127.0.0.1): " GAMESERVER
GAMESERVER=${GAMESERVER:-127.0.0.1}

read -p "Username (Default: admin): " USERNAME
USERNAME=${USERNAME:-admin}

TARDIR="./build/macosx_10_9_x86_64"
APPROOT="$TARDIR/ToonTown Reloaded.app"

echo "Copying multifiles to app bundle..."
cp ./resources/*.mf "$APPROOT/Contents/Resources"

echo "Writing info.plist..."
rm "$APPROOT/Contents/Info.plist"

cat <<EOF >> "$APPROOT/Contents/Info.plist"
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>LSApplicationCategoryType</key>
	<string></string>
	<key>CFBundleInfoDictionaryVersion</key>
	<string>6.0</string>
	<key>LSEnvironment</key>
	<dict>
		<key>TTI_PLAYCOOKIE</key>
		<string>$USERNAME</string>
		<key>TTI_GAMESERVER</key>
		<string>$GAMESERVER</string>
	</dict>
	<key>CFBundleDisplayName</key>
	<string>ToonTown Reloaded.app</string>
	<key>CFBundleExecutable</key>
	<string>ToonTown Reloaded</string>
	<key>CFBundleIdentifier</key>
	<string></string>
	<key>CFBundleName</key>
	<string>ToonTown Reloaded.app</string>
	<key>CFBundlePackageType</key>
	<string>APPL</string>
	<key>CFBundleSignature</key>
	<string></string>
	<key>CFBundleVersion</key>
	<string>0.0.0</string>
</dict>
</plist>
EOF

echo "Done!"
open "$TARDIR"