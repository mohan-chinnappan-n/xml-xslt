<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!-- Author: mchinnappan -->
<xsl:template match="/">
fullName,value,shortDescription,categories,language,protected 
<xsl:for-each select="CustomLabels/labels">
        <xsl:for-each select="."> 
        "<xsl:value-of select="fullName"/>",<xsl:value-of select="value"/>"<xsl:value-of select="shortDescription"/>","<xsl:value-of select="categories"/>" <xsl:value-of select="language"/>," <xsl:value-of select="protected"/>"
        </xsl:for-each>
    </xsl:for-each>
</xsl:template>
</xsl:stylesheet>
