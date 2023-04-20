#!/bin/bash
# bash parse.sh ../cdmusic.xml

xml_file=$1

# Get the value of the "title" element in the XML file
title=$(xmllint --xpath  "//catalog/cd/title/text()" $xml_file)
artist=$(xmllint --xpath "//catalog/cd/artist/text()" $xml_file)


# Print the title
echo "Title: $title"
# Print the artist
echo "Artist: $artist"

