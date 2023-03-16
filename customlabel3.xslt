<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sf="http://soap.sforce.com/2006/04/metadata" >

<xsl:output method="text" encoding="iso-8859-1"/>

<!-- Author: mchinnappan -->
<xsl:template match="/">
    <xsl:text>fullName|value|shortDescription|categories|language|protected&#xA;</xsl:text>
    <xsl:for-each select="sf:CustomLabels/sf:labels">
            <xsl:value-of select="concat(sf:fullName,'|',sf:value,'|',sf:shortDescription,'|',sf:categories,'|',sf:language,'|',sf:protected,'&#xA;')"/>
    </xsl:for-each>
</xsl:template>

</xsl:stylesheet>
