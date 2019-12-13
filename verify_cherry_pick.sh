#!/bin/bash

if [ "$#" -eq  "2" ] ; then
  COMMIT="$2"
  ORIG="$1"
elif [ "$#" -eq  "1" ] ; then
  COMMIT="HEAD"
  ORIG="$1"
else
  COMMIT="HEAD"
  BODY=`git show -s --format=%b $COMMIT`
  ORIG=`echo $BODY | sed 's/.*from commit \(.*\))/\1/g'`
fi

echo "Comparing $COMMIT to $ORIG"
git diff $COMMIT~1 $COMMIT > after.txt
git diff $ORIG~1 $ORIG > before.txt
kdiff3 before.txt after.txt
