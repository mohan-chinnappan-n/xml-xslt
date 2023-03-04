<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="text" encoding="iso-8859-1"/>

<!-- Author: mchinnappan -->
<xsl:template match="/">
<xsl:text>fullName|value|shortDescription|categories|language|protected</xsl-text>
<xsl:text>
</xsl:text>
<xsl:for-each select="CustomLabels/labels">
<xsl:for-each select="."> 
<xsl:value-of select="concat(fullName,'|',value,'|',shortDescription,'|',categories,'|',language,'|',protected,'&#xA;')"/>
</xsl:for-each>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
