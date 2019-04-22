#!/bin/bash
set -e

INPUT_FILE=ex1.txt

if ! [ -f $INPUT_FILE ]; then
	exit 1
fi

if ! [[ "`cat $INPUT_FILE`" =~ "Example 1" ]]; then
	exit 1
fi

if ! [[ "`git format-patch -1`" =~ "Signed-off-by:" ]]; then
	exit 1
fi

exit 0
