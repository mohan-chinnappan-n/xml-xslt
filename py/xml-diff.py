from lxml import etree
from lxml.html.diff import htmldiff

# Load the XML files to compare
xml1 = etree.parse("file1.xml")
xml2 = etree.parse("file2.xml")

# Compare the XML files
diff = etree.XMLDiff(xml1, xml2)

# Print the differences
for action, node in diff:
    if action == "insert":
        print("Insert:", etree.tostring(node))
    elif action == "delete":
        print("Delete:", etree.tostring(node))
    elif action == "change":
        print("Change:")
        print(htmldiff(etree.tostring(node[0]), etree.tostring(node[1])))

