# bash parsebook.sh bookstores.xml
xmlstarlet sel -t -m "//book/title" -v "." -n $1 

