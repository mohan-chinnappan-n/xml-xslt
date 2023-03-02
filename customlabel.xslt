<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!-- Author: mchinnappan -->
<xsl:template match="/">
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"></link>
</head>
<body style='min-height: 75rem; padding-top: 3.5rem;'>
  <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
      <a class="navbar-brand" href="#">CustomLabel</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home</a>
          </li>
        </ul>
      </div>
    </nav>
  
  <table style="width:640px" class="table table-light table-bordered table-striped table-hover">
    <tr>
      <th>fullName</th>
      <th>value</th>
      <th>shortDescription</th>
      <th>categories</th>
      <th>language</th>
      <th>protected</th>
    </tr>
    <xsl:for-each select="CustomLabels/labels">
    <tr>
        <xsl:for-each select="."> 
             <td><xsl:value-of select="fullName"/></td>
             <td><xsl:value-of select="value"/></td>
             <td><xsl:value-of select="shortDescription"/></td>

             <td><xsl:value-of select="categories"/></td>
             <td><xsl:value-of select="language"/></td>
             <td><xsl:value-of select="protected"/></td>
             
        </xsl:for-each>
      </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
