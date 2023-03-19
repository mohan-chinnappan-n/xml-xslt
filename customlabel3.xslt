<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sf="http://soap.sforce.com/2006/04/metadata" >
<xsl:output method="text" encoding="iso-8859-1"/>
<!-- Author: mchinnappan -->
<!--
    Renders TSV version for the given CustomLabel
-->

<xsl:template match="/">
    <xsl:text>fullName&#x9;value&#x9;shortDescription&#x9;categories&#x9;language&#x9;protected</xsl:text>
    <xsl:text>&#10;</xsl:text>
    <xsl:for-each select="sf:CustomLabels/sf:labels">
            <xsl:value-of select="concat(sf:fullName,'&#x9;',sf:value,'&#x9;',sf:shortDescription,'&#x9;',sf:categories,'&#x9;',sf:language,'&#x9;',sf:protected,'&#xA;')"/>
    </xsl:for-each>
</xsl:template>

</xsl:stylesheet>
