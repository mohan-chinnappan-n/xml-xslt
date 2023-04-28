<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:sf="http://soap.sforce.com/2006/04/metadata"
>
    <!-- Author: mchinnappan (c) copyright -->
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet"
                    href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
                    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
                    crossorigin="anonymous"></link>


            </head>
            <body style='min-height: 75rem; padding-top: 3.5rem;'>
                <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
                    <a class="navbar-brand" href="#">WaveXmd</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item active">
                                <a class="nav-link" href="#">Home</a>
                            </li>
                            <li class="nav-item active">
                               <a class="nav-link" href="#"> </a>
                            </li>
                        </ul>
                    </div>
                </nav>


                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>Dataset</th>
                        <th>type</th>
                        <th>waveVisualization</th>
                    </tr>
                    <tr>
                     <td> <xsl:value-of select="sf:WaveXmd/sf:dataset" /></td>
                     <td><xsl:value-of select="sf:WaveXmd/sf:type" /></td>
                     <td> <xsl:value-of select="sf:WaveXmd/sf:waveVisualization" /></td>
                    </tr>
                </table>



                <!-- dimensions -->
                <a name="dimensions"></a>
                <h3>dimensions</h3>
                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>field</th>
                        <th>referenceField</th>
                        <th>sortIndex</th>
                        <th>linkTemplateEnabled</th>
                        <th>salesforceActionsEnabled</th>
                        <th>showInExplorer</th>
                        <th>members</th>
                        <th>conditionalFormatting</th>

                    </tr>
                    <xsl:apply-templates select="sf:WaveXmd/sf:dimensions"> </xsl:apply-templates>
                </table>


                    <!-- measures -->
                <a name="measures"></a>
                <h3>measures</h3>
                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>field</th>
                        <th>isDerived</th>
                        <th>label</th>
                        <th>sortIndex</th>

                    </tr>
                    <xsl:apply-templates select="sf:WaveXmd/sf:measures"> </xsl:apply-templates>
                </table>


            </body>
        </html>
    </xsl:template>

    <!-- templates -->
    <xsl:template match="sf:dimensions">
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="sf:field" />
                </td>
                <td>
                    <xsl:value-of select="sf:isDerived" />
                </td>
                <td>
                    <xsl:value-of select="sf:sortIndex" />
                </td>

                <td>
                    <xsl:value-of select="sf:linkTemplateEnabled" />
                </td>
                <td>
                    <xsl:value-of select="sf:salesforceActionsEnabled" />
                </td>
                <td>
                    <xsl:value-of select="sf:showInExplorer" />
                </td>
                <td>
                    <xsl:apply-templates select="sf:members">
                    </xsl:apply-templates>
                </td>
                <td>
                    <xsl:apply-templates select="sf:conditionalFormatting">
                    </xsl:apply-templates>
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>


    <xsl:template match="sf:dimensions/sf:members">
        <table style='width:640px;'
            class="table table-light table-bordered table-striped table-hover">
            <tr>
                <th>label</th>
                <th>member</th>
                <th>sortIndex</th>
            </tr>
            <xsl:for-each select=".">
                <tr>
                    <td>
                        <xsl:value-of select="sf:label" />
                    </td>
                    <td>
                        <xsl:value-of select="sf:member" />
                    </td>
                    <td>
                        <xsl:value-of select="sf:sortIndex" />
                    </td>
                </tr>


            </xsl:for-each>
        </table>
    </xsl:template>

    <xsl:template match="sf:dimensions/sf:conditionalFormatting">
        <table style='width:640px;'
            class="table table-light table-bordered table-striped table-hover">
            <tr>
                <th>property</th>
                <th>referenceField</th>
                <th>sortIndex</th>
                <th>type</th>
                <th>formattingBins</th>
            </tr>
            <xsl:for-each select=".">
                <tr>
                    <td>
                        <xsl:value-of select="sf:property" />
                    </td>
                    <td>
                        <xsl:value-of select="sf:referenceField" />
                    </td>
                    <td>
                        <xsl:value-of select="sf:sortIndex" />
                    </td>
                    <td>
                        <xsl:value-of select="sf:type" />
                    </td>
                    <td>
                        <xsl:apply-templates select="sf:formattingBins">
                        </xsl:apply-templates>
                    </td>
                </tr>


            </xsl:for-each>
        </table>
    </xsl:template>


    <xsl:template match="sf:dimensions/sf:conditionalFormatting/sf:formattingBins">
        <table style='width:640px;'
            class="table table-light table-bordered table-striped table-hover">
            <tr>
                <th>bin</th>
                <th>formatValue</th>
                <th>sortIndex</th>
                <th>label</th>
            </tr>
            <xsl:for-each select=".">
                <tr>
                    <td>
                        <xsl:value-of select="sf:bin" />
                    </td>
                    <td>
                        <xsl:value-of select="sf:formatValue" />
                    </td>
                    <td>
                        <xsl:value-of select="sf:sortIndex" />
                    </td>
                    <td>
                        <xsl:value-of select="sf:label" />
                    </td>
                </tr>


            </xsl:for-each>
        </table>
    </xsl:template>



   <!-- measures -->
    <xsl:template match="sf:measures">
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="sf:field" />
                </td>
                <td>
                    <xsl:value-of select="sf:isDerived" />
                </td>
                <td>
                    <xsl:value-of select="sf:label" />
                </td>

                <td>
                    <xsl:value-of select="sf:sortIndex" />
                </td>
                
            </tr>
        </xsl:for-each>
    </xsl:template>


</xsl:stylesheet>