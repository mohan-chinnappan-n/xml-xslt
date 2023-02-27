<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:param name="file1" select="'file1.xml'" />
<xsl:param name="file2" select="'file2.xml'" />

  
  <!-- Compare the two XML files -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Comparison Report</title>
      </head>
      <body>
        <h1>Comparison Report</h1>
        <table>
          <tr>
            <th>Node Path</th>
            <th>File 1 Value</th>
            <th>File 2 Value</th>
          </tr>
          <xsl:apply-templates select="*" />
        </table>
      </body>
    </html>
  </xsl:template>
  
  <!-- Compare elements -->
  <xsl:template match="*">
    <xsl:if test="not(. = /../$file1/*[name()=name(current())])">
      <tr>
        <td><xsl:value-of select="name()" /></td>
        <td><xsl:value-of select="." /></td>
        <td><xsl:value-of select="/../$file2/*[name()=name(current())]" /></td>
      </tr>
    </xsl:if>
    <xsl:apply-templates select="*" />
  </xsl:template>
  
  <!-- Compare attributes -->
  <xsl:template match="@*">
    <xsl:if test="not(. = /../$file1/@*[name()=name(current())])">
      <tr>
        <td><xsl:value-of select="concat(name(..),'/',name())" /></td>
        <td><xsl:value-of select="." /></td>
        <td><xsl:value-of select="/../$file2/@*[name()=name(current())]" /></td>
      </tr>
    </xsl:if>
  </xsl:template>
  
</xsl:stylesheet>
