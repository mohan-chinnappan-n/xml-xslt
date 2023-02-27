from lxml import etree

# Load the XML files to compare
xml1 = etree.parse("file1.xml")
xml2 = etree.parse("file2.xml")

# Compare the XML files
if etree.tostring(xml1) == etree.tostring(xml2):
    print("The XML files are identical")
else:
    print("The XML files are different")
