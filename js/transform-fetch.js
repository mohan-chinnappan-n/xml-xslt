// Load the XML document using fetch
fetch('path/to/xml')
  .then(response => response.text())
  .then(xml => {
    const parser = new DOMParser();
    const xmlDoc = parser.parseFromString(xml, 'application/xml');
    
    // Load the XSLT stylesheet using fetch
    fetch('path/to/xslt')
      .then(response => response.text())
      .then(xslt => {
        const xsltDoc = parser.parseFromString(xslt, 'application/xml');
        
        // Apply the XSLT stylesheet to the XML document
        const processor = new XSLTProcessor();
        processor.importStylesheet(xsltDoc);
        const resultDoc = processor.transformToDocument(xmlDoc);
        
        // Insert the HTML output into the DOM
        const htmlOutput = new XMLSerializer().serializeToString(resultDoc);
        document.getElementById('output').innerHTML = htmlOutput;
      })
      .catch(error => console.error(error));
  })
  .catch(error => console.error(error));

