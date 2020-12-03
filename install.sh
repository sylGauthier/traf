#!/bin/sh

test -z "$PREFIX" && PREFIX=/usr
BIN="bin"
MAN="share/man"

mkdir -p "$PREFIX/$BIN" "$PREFIX/$MAN/man1"
cp ./traf "$PREFIX/$BIN/traf"
cp ./traf.1 "$PREFIX/$MAN/man1"
