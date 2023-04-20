#!/bin/bash
# bash parse2.sh bookstores.xml title
xml_file=$1
xpath_expr="//$2"
while read -r node; do
  echo "$node"
done < <(xmllint --xpath "$xpath_expr" "$xml_file")

