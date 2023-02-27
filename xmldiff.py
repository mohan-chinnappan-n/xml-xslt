from lxml import etree
from xmldiff import main, formatting

diff = main.diff_files('file1.xml', 'file2.xml',
                       formatter=formatting.XMLFormatter())
