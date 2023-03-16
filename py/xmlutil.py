#!/usr/local/bin/python3

from lxml import etree
import fire
import requests


"""
XML Util 
- transform xml into html with xslt

similar to this sfdx command

sfdx mohanc:xml:transform -i xml -t xslt 

author: mchinnappan 

"""

class XMLUtil(object):
    """ XML Utils for transformation using xlst. 
    """
    def __init__(self, xml, xsl, out):
        
        self.xml = xml # The xml input file
        self.xsl = xsl # The xsl input file
        self.out = out # The html input file

    def transform(self):
        """ Transforms given xml with xsl to html """
        try:
            # Load the XSLT stylesheet

            xsl_url = f"https://raw.githubusercontent.com/mohan-chinnappan-n/xml-xslt/main/{self.xsl.lower()}.xslt"
            xsl_content = requests.get(xsl_url)

            xslt_doc = etree.fromstring(xsl_content.text.encode())
            xslt_transformer = etree.XSLT(xslt_doc)

            # Load the XML input document
            input_doc = etree.parse(self.xml)

            # Transform the input document using the XSLT stylesheet
            output_doc = xslt_transformer(input_doc)

            # Output the result to a file
            with open(self.out, 'wb') as f:
                f.write(output_doc)
                print (f"=== Output is written into {self.out}, view this file in your web browser: open {self.out} ===")
        except Exception as err:
        	print(f"Unexpected {err=}, {type(err)=}")


if __name__ == '__main__':
    fire.Fire(XMLUtil)
