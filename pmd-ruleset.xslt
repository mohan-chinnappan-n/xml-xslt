<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"></link>
</head>
<body style='min-height: 75rem; padding-top: 3.5rem;'>
  <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
      <a class="navbar-brand" href="#">PMD Ruleset</a>
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

    <h4>
        <xsl:value-of select="ruleset/description"/>
    </h4>
  
  <table style="width:640px" class="table table-light table-bordered table-striped table-hover">
    <tr>
      <th>priority</th>
      <th>message</th>
      <th>ref</th>
      <th>name_value</th>

    </tr>
    <xsl:for-each select="ruleset/rule">
    <tr>
      <td><xsl:value-of select="priority"/>
        <td><xsl:value-of select="@message"/></td>
        <td><xsl:value-of select="@ref"/></td>
    
    </td>
    <td>
        <ul class="list-group">


      
        <xsl:for-each select="properties/property"> 
        <li class="list-group-item">

            <i><xsl:value-of select="@name"/></i>:
           
            <b><xsl:value-of select="@value"/></b>
        </li>


        </xsl:for-each>
    </ul>
    </td>
        

      </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
