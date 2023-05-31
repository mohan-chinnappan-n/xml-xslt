<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tst="test">
    <xsl:output method="xml" encoding="UTF-8" indent="yes" />

    <!--
        It just uses the identity template in combination with a template to use the (not by all XSLT processors supported) 
        disable-output-escaping="yes" option to comment-out the relevant <types> element. 
        The formally correct way would have been using the <xsl:comment> element, 
        but unfortunately it doesn't support an element tree as sub-element (only text nodes). 
        So the hack with the disable-output-escaping is the only choice in this case.
       - https://stackoverflow.com/questions/57716829/how-to-comment-out-a-parent-xml-tag-with-a-specific-child-tag-using-sed
    -->


<xsl:strip-space elements="*" />

    <!-- Identity template --> 
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*" />
        </xsl:copy>
    </xsl:template> 

    <xsl:template match="tst:types[tst:name='xyz']">
        <xsl:text disable-output-escaping="yes">
            &lt;!--
          </xsl:text>
           <xsl:copy-of select="." />
                <xsl:text disable-output-escaping="yes">
            -->
            </xsl:text>
    </xsl:template>


</xsl:stylesheet>
