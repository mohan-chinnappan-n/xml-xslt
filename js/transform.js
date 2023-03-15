// Load the XML document
const xmlHttp = new XMLHttpRequest();
xmlHttp.open("GET", "path/to/xml", false);
xmlHttp.send(null);
const xmlDoc = xmlHttp.responseXML;

// Load the XSLT stylesheet
const xslHttp = new XMLHttpRequest();
xslHttp.open("GET", "path/to/xslt", false);
xslHttp.send(null);
const xsltDoc = xslHttp.responseXML;

// Apply the XSLT stylesheet to the XML document
const processor = new XSLTProcessor();
processor.importStylesheet(xsltDoc);
const resultDoc = processor.transformToDocument(xmlDoc);

// Insert the HTML output into the DOM
const htmlOutput = new XMLSerializer().serializeToString(resultDoc);
document.getElementById("output").innerHTML = htmlOutput;
