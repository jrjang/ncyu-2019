#!/bin/bash
set -e

if [ `diff ex4-graph.txt data/ex4-graph.txt | wc -l` -ne 0 ]; then
	exit 1
fi

if [ `diff ex4.txt data/ex4-data.txt | wc -l` -ne 0 ]; then
	exit 1
fi

exit 0
