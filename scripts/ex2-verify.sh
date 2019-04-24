#!/bin/bash
set -e

if ! [[ "`git show HEAD`" =~ "`cat data/0001-ex2.patch`" ]]; then
	exit 1
fi

exit 0
