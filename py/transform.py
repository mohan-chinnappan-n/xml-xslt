from lxml import etree
import sys


# Load the XSLT stylesheet
xslt_doc = etree.parse(sys.argv[2])
xslt_transformer = etree.XSLT(xslt_doc)

# Load the XML input document
input_doc = etree.parse(sys.argv[1])

# Transform the input document using the XSLT stylesheet
output_doc = xslt_transformer(input_doc)

# Output the result to a file
with open(sys.argv[3], 'wb') as f:
    f.write(output_doc)
