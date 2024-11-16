#!/bin/bash
set -e

shellcheck src/bin/*

readonly TARGET=target
readonly SOURCE=src

mkdir "$TARGET"

# Control File
cp -vr $SOURCE/DEBIAN $TARGET

# Binary Files
mkdir -p $TARGET/usr/bin
cp -vr $SOURCE/bin $TARGET/usr
chmod 755 $TARGET/usr/bin/*

# Lib Files
mkdir -p $TARGET/usr/lib/image-sitter
cp -vr $SOURCE/lib/* $TARGET/usr/lib/image-sitter
chmod 755 $TARGET/usr/lib/image-sitter/*

# Man Pages
mkdir -p $TARGET/usr/share/man/man1/
pandoc $SOURCE/md/image-sitter.1.md -s -t man | gzip -9 >$TARGET/usr/share/man/man1/image-sitter.1.gz
pandoc $SOURCE/md/image-sitter-init.1.md -s -t man | gzip -9 >$TARGET/usr/share/man/man1/image-sitter-init.1.gz
pandoc $SOURCE/md/image-sitter-pull-always.1.md -s -t man | gzip -9 >$TARGET/usr/share/man/man1/image-sitter-pull-always.1.gz
pandoc $SOURCE/md/image-sitter-pull-if-not-exists.1.md -s -t man | gzip -9 >$TARGET/usr/share/man/man1/image-sitter-pull-if-not-exists.1.gz
pandoc $SOURCE/md/image-sitter-delete-if-exists.1.md -s -t man | gzip -9 >$TARGET/usr/share/man/man1/image-sitter-delete-if-exists.1.gz

fakeroot dpkg-deb --build -Zxz $TARGET
dpkg-name ${TARGET}.deb

DEBFILE=$(ls ./*.deb)

sha256sum "$DEBFILE" >"$DEBFILE.sha256sum"
sha512sum "$DEBFILE" >"$DEBFILE.sha512sum"

dpkg --contents "$DEBFILE"
