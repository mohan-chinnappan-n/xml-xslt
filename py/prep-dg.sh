xsl=delegategroup.xslt
type=delegateGroups

# Check for the args
if [ $# -eq 0 ]
  then
    echo "=== No arguments supplied: for the $type folder === "
    echo -n "Enter $type folder here: "
    read -r FOLDER 
  else
   FOLDER=$1 
fi

# counter
i=0
outfolder=/tmp/_viz_$type
rm -r $outfolder 
mkdir -p $outfolder


files=$FOLDER/*.xml
echo $files
for f in $files;
do 
  ((i=i+1))
  echo "=== $i: Processing $f file..."; 
  filename=`basename "$f"`
  outfile="$outfolder/$filename.html"
  ./py/xmlutil_local.py transform --xml="$f" --xsl=$xsl --out="$outfile"
  echo "-------------------------------------------"
done
echo "=== $i  processed ==="
zipfile="_viz_${type}_files.zip"
zip -r $zipfile $outfolder/*
echo "=== $zipfile created ==="
