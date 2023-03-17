#!/bin/bash
#----- bulk process of Profiles to create html viz
#- mchinnappan

type=Profile
xsl=Profile3

# Check for the args
if [ $# -eq 0 ]
  then
    echo "=== No arguments supplied: for the $type folder === "
    echo -n "Enter $type folder here: "
    read -r FOLDER 
  else
   FOLDER=$1 
fi

if [ ! -d $FOLDER ];
  then
   echo "=== Folder: $FOLDER is not a valid one === "
   exit 1
fi

# counter
i=0
outfolder=/tmp/_viz_$type
rm -r $outfolder 
mkdir -p $outfolder


files=$FOLDER/*.xml
for f in $files; 
do 
  ((i=i+1))
  echo "=== $i: Processing $f file..."; 
  filename=`basename "$f"`
  outfile="$outfolder/${filename}.html"
  xmlutil transform --xml="$f" --xsl=$xsl --out="$outfile"
  echo "-------------------------------------------"
done
echo "=== $i  processed ==="
zipfile="_viz_${type}_files.zip"
zip -r $zipfile $outfolder/*
echo "=== $zipfile created ==="
