#!/bin/bash
COMMIT=$1

BODY=`git show -s --format=%b $COMMIT`
ORIG=`echo $BODY | sed 's/.*from commit \(.*\))/\1/g'`

echo "Comparing $1 to $ORIG"
git diff $1~1 $1 > after.txt
git diff $ORIG~1 $ORIG > before.txt
kdiff3 before.txt after.txt
