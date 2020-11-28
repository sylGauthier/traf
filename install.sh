#!/bin/sh

test -z "$PREFIX" && PREFIX=/usr
BIN="bin"
MAN="share/man"

cp ./traf "$PREFIX/$BIN/traf"
