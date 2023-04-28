<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"

    xmlns:sf="http://soap.sforce.com/2006/04/metadata"     
    >
    <!-- Author: mchinnappan -->
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
                    <a class="navbar-brand" href="#">Profile</a>
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
                                <a class="nav-link" href="#">
                                    <xsl:value-of select="sf:Profile/sf:fullName    " />
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>

                
                <!-- applicationVisibilities -->
                <a name="applicationVisibilities"></a>
                <h3>applicationVisibilities</h3>
                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>application</th>
                        <th>default</th>
                        <th>visible</th>
                        <th> <xsl:value-of select="count(sf:Profile/sf:applicationVisibilities)" /> 
                        
                            / <xsl:value-of select="count(sf:Profile/sf:applicationVisibilities[not(.=preceding::*)])" />
                        </th>
                    </tr>
                    <xsl:apply-templates select="sf:Profile/sf:applicationVisibilities" >
                    <xsl:sort select="sf:application"/>
                     </xsl:apply-templates>
                </table>


                


   

            </body>
        </html>
    </xsl:template>

    <!-- templates -->
    <xsl:template match="sf:applicationVisibilities">
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="sf:application" />
                </td>
                <td>
                    <xsl:value-of select="sf:default" />
                </td>
                <td>
                    <xsl:value-of select="sf:visible" />
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>


     



</xsl:stylesheet>
