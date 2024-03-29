<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
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
                    <a class="navbar-brand" href="#">PermissionSet</a>
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
                                    <xsl:value-of select="sf:PermissionSet/sf:label" />
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>

                <!-- p><xsl:value-of select="document-uri()"/></p -->
                <div class='container'>
                <table  style='width:640px;'
                class="table table-light table-bordered table-striped table-hover">
                    <tr>
                    <th>description</th>
                    <th>hasActivationRequired</th>
                    <th>license</th>
                    </tr>

                    <tr>
                        <td><xsl:value-of select="sf:PermissionSet/sf:description" /></td>
                        <td><xsl:value-of select="sf:PermissionSet/sf:hasActivationRequired" /></td>
                        <td> <xsl:value-of select="sf:PermissionSet/sf:license" /></td>
                    </tr>
                </table>

                <ul class='list-group list-group-flush' style="width:400px;">
                    <li class='list-group-item'>
                        <a href="#applicationVisibilities">applicationVisibilities</a>
                    </li>
                    <li class='list-group-item'>
                        <a href="#tabSettings">tabSettings</a>
                    </li>
                    <li class='list-group-item'>
                        <a href="#tabVisibilities">tabVisibilities</a>
                    </li>

                    <li class='list-group-item'>
                        <a href="#classAccesses">classAccesses</a>
                    </li>
                    <li class='list-group-item'>
                        <a href="#layoutAssignments">layoutAssignments</a>
                    </li>
                    <li class='list-group-item'>
                        <a href="#fieldPermissions">fieldPermissions</a>
                    </li>

                    <li class='list-group-item'>
                        <a href="#objectPermissions">objectPermissions</a>
                    </li>

                    <li class='list-group-item'>
                        <a href="#userPermissions">userPermissions</a>
                    </li>

                    <li class='list-group-item'>
                        <a href="#recordTypeVisibilities">recordTypeVisibilities</a>
                    </li>

                    <li class='list-group-item'>
                        <a href="#customMetadataTypeAccesses">customMetadataTypeAccesses</a>
                    </li>

                    <li class='list-group-item'>
                        <a href="#customSettingAccesses">customSettingAccesses</a>
                    </li>

                    <li class='list-group-item'>
                        <a href="#customPermissions">customPermissions</a>
                    </li>

                    <li class='list-group-item'>
                        <a href="#pageAccesses">pageAccesses</a>
                    </li>


                </ul>

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
                        <th> <xsl:value-of select="count(sf:PermissionSet/sf:applicationVisibilities)" /> 
                        
                            / <xsl:value-of select="count(sf:PermissionSet/sf:applicationVisibilities[not(.=preceding::*)])" />
                        </th>
                    </tr>
                    <xsl:apply-templates select="sf:PermissionSet/sf:applicationVisibilities" />
                </table>


                <!-- tabSettings -->
                <a name="tabSettings"></a>
                <h3>tabSettings</h3>
                <table style='width:400px;'
                    class="table table-light table-bordered table-striped table-hover">

                        <tr>
                        <th>tab</th>
                        <th>visibility</th>
                        <th> <xsl:value-of select="count(sf:PermissionSet/sf:tabSettings)" />
                            / <xsl:value-of select="count(sf:PermissionSet/sf:tabSettings[not(.=preceding::*)])" />
                        </th>
                    </tr>
                    <xsl:apply-templates select="sf:PermissionSet/sf:tabSettings" />
                </table>


                <!-- tabVisibilities -->
                <a name="tabVisibilities"></a>
                <h3>tabVisibilities</h3>
                <table style='width:400px;'
                    class="table table-light table-bordered table-striped table-hover">

                        <tr>
                        <th>tab</th>
                        <th>visibility</th>
                        <th> <xsl:value-of select="count(sf:PermissionSet/sf:tabVisibilities)" />
                            / <xsl:value-of select="count(sf:PermissionSet/sf:tabVisibilities[not(.=preceding::*)])" />
                        </th>
                    </tr>
                    <xsl:apply-templates select="sf:PermissionSet/sf:tabVisibilities" />
                </table>


                <!-- classAccesses -->
                <a name="classAccesses"></a>
                <h3>classAccesses</h3>
                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>apexClass</th>
                        <th>enabled</th>
                        <th> <xsl:value-of select="count(sf:PermissionSet/sf:classAccesses)" />
                            / <xsl:value-of select="count(sf:PermissionSet/sf:classAccesses[not(.=preceding::*)])" />
                        </th>
                    </tr>
                    <xsl:apply-templates select="sf:PermissionSet/sf:classAccesses" />
                </table>

                <!-- layoutAssignments -->
                <a name="layoutAssignments"></a>
                <h3>layoutAssignments</h3>
                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>layout</th>
                        <th> <xsl:value-of select="count(sf:PermissionSet/sf:layoutAssignments)" />
                            / <xsl:value-of select="count(sf:PermissionSet/sf:layoutAssignments[not(.=preceding::*)])" />
                        </th>
                    </tr>
                    <xsl:apply-templates select="sf:PermissionSet/sf:layoutAssignments" />
                </table>

                <!-- fieldPermissions -->
                <a name="fieldPermissions"></a>
                <h3>fieldPermissions</h3>
                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>field</th>
                        <th>readable</th>
                        <th>editable</th>
                        <th> <xsl:value-of select="count(sf:PermissionSet/sf:fieldPermissions)" />
                            / <xsl:value-of select="count(sf:PermissionSet/sf:fieldPermissions[not(.=preceding::*)])" />
                        </th>
                    </tr>
                    <xsl:apply-templates select="sf:PermissionSet/sf:fieldPermissions" />
                </table>


                <!-- objectPermissions -->
                <a name="objectPermissions"></a>
                <h3>objectPermissions</h3>
                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>object</th>
                        <th>allowCreate</th>
                        <th>allowDelete</th>
                        <th>allowEdit</th>
                        <th>allowRead</th>
                        <th>viewAllRecords</th>
                        <th>modifyAllRecords</th>
                        <th> <xsl:value-of select="count(sf:PermissionSet/sf:objectPermissions)" />
                            / <xsl:value-of select="count(sf:PermissionSet/sf:objectPermissions[not(.=preceding::*)])" />
                        </th>
                    </tr>
                    <xsl:apply-templates select="sf:PermissionSet/sf:objectPermissions" />
                </table>


                <!-- userPermissions -->
                <a name="userPermissions"></a>
                <h3>userPermissions</h3>
                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>name</th>
                        <th>enabled</th>
                        <th> <xsl:value-of select="count(sf:PermissionSet/sf:userPermissions)" />
                            / <xsl:value-of select="count(sf:PermissionSet/sf:userPermissions[not(.=preceding::*)])" />
                           
                        </th>
                    </tr>
                    <xsl:apply-templates select="sf:PermissionSet/sf:userPermissions" />
                </table>


                  <!-- recordTypeVisibilities -->
                  <a name="recordTypeVisibilities"></a>
                  <h3>recordTypeVisibilities</h3>
                  <table
                      style='width:640px;'
                      class="table table-light table-bordered table-striped table-hover">
                      <tr>
                          <th>recordType</th>
                          <th>visible</th>
                          <th> <xsl:value-of select="count(sf:PermissionSet/sf:recordTypeVisibilities)" />
                            / <xsl:value-of select="count(sf:PermissionSet/sf:recordTypeVisibilities[not(.=preceding::*)])" />
                        </th>
                      </tr>
                      <xsl:apply-templates select="sf:PermissionSet/sf:recordTypeVisibilities" />
                  </table>



                     <!-- customMetadataTypeAccesses -->
                     <a name="customMetadataTypeAccesses"></a>
                     <h3>customMetadataTypeAccesses</h3>
                     <table
                         style='width:640px;'
                         class="table table-light table-bordered table-striped table-hover">
                         <tr>
                             <th>name</th>
                             <th>enabled</th>
                             <th> <xsl:value-of select="count(sf:PermissionSet/sf:customMetadataTypeAccesses)" />
                            
                                / <xsl:value-of select="count(sf:PermissionSet/sf:customMetadataTypeAccesses[not(.=preceding::*)])" />
                            </th>
                         </tr>
                         <xsl:apply-templates select="sf:PermissionSet/sf:customMetadataTypeAccesses" />
                     </table>

                     
                     <!-- customSettingAccesses -->
                     <a name="customSettingAccesses"></a>
                     <h3>customSettingAccesses</h3>
                     <table
                         style='width:640px;'
                         class="table table-light table-bordered table-striped table-hover">
                         <tr>
                             <th>name</th>
                             <th>enabled</th>
                             <th> <xsl:value-of select="count(sf:PermissionSet/sf:customSettingAccesses)" />
                                / <xsl:value-of select="count(sf:PermissionSet/sf:customSettingAccesses[not(.=preceding::*)])" />
                            </th>
                         </tr>
                         <xsl:apply-templates select="sf:PermissionSet/sf:customSettingAccesses" />
                     </table>

                    <!-- customPermissions -->
                    <a name="customPermissions"></a>
                    <h3>customPermissions</h3>
                    <table
                        style='width:640px;'
                        class="table table-light table-bordered table-striped table-hover">
                        <tr>
                            <th>name</th>
                            <th>enabled</th>
                            <th> <xsl:value-of select="count(sf:PermissionSet/sf:customPermissions)" />
                                / <xsl:value-of select="count(sf:PermissionSet/sf:customPermissions[not(.=preceding::*)])" />
                            </th>
                        </tr>
                        <xsl:apply-templates select="sf:PermissionSet/sf:customPermissions" />
                    </table>

                       <!-- pageAccesses -->
                       <a name="pageAccesses"></a>
                       <h3>pageAccesses</h3>
                       <table
                           style='width:640px;'
                           class="table table-light table-bordered table-striped table-hover">
                           <tr>
                               <th>apexPage</th>
                               <th>enabled </th>
                               <th> <xsl:value-of select="count(sf:PermissionSet/sf:pageAccesses)" />
                                / <xsl:value-of select="count(sf:PermissionSet/sf:pageAccesses[not(.=preceding::*)])" />

                             </th>
                           </tr>
                           <xsl:apply-templates select="sf:PermissionSet/sf:pageAccesses" />
                       </table>


   

                </div>
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


    <xsl:template match="sf:classAccesses">
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="sf:apexClass" />
                </td>
                <td>
                    <xsl:value-of select="sf:enabled" />
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="sf:layoutAssignments">
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="sf:layout" />
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="sf:fieldPermissions">
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="sf:field" />
                </td>
                <td>
                    <xsl:value-of select="sf:readable" />
                </td>
                <td>
                    <xsl:value-of select="sf:editable" />
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>


    <xsl:template match="sf:objectPermissions">
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="sf:object" />
                </td>
                <td>
                    <xsl:value-of select="sf:allowCreate" />
                </td>
                <td>
                    <xsl:value-of select="sf:allowDelete" />
                </td>
                <td>
                    <xsl:value-of select="sf:allowEdit" />
                </td>
                <td>
                    <xsl:value-of select="sf:allowRead" />
                </td>
                <td>
                    <xsl:value-of select="sf:viewAllRecords" />
                </td>
                <td>
                    <xsl:value-of select="sf:modifyAllRecords" />
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="sf:userPermissions">
        <xsl:for-each select=".">
            <xsl:sort select="sf:name"/>

            <tr>
                <td> <xsl:value-of select="sf:name" /> </td>
                <td> <xsl:value-of select="sf:enabled" /> </td>
            </tr>
        </xsl:for-each>
    </xsl:template>


    <xsl:template match="sf:tabSettings">
        <xsl:for-each select=".">
            <tr>
                <td> <xsl:value-of select="sf:tab" /> </td>
                <td> <xsl:value-of select="sf:visibility" /> </td>
            </tr>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="sf:tabVisibilities">
        <xsl:for-each select=".">
            <tr>
                <td> <xsl:value-of select="sf:tab" /> </td>
                <td> <xsl:value-of select="sf:visibility" /> </td>
            </tr>
        </xsl:for-each>
    </xsl:template>


    <xsl:template match="sf:recordTypeVisibilities">
        <xsl:for-each select=".">
            <tr>
                <td> <xsl:value-of select="sf:recordType" /> </td>
                <td> <xsl:value-of select="sf:visible" /> </td>
            </tr>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="sf:customMetadataTypeAccesses">
        <xsl:for-each select=".">
            <tr>
                <td> <xsl:value-of select="sf:name" /> </td>
                <td> <xsl:value-of select="sf:enabled  " /> </td>
            </tr>
        </xsl:for-each>
    </xsl:template>


    <xsl:template match="sf:customSettingAccesses">
        <xsl:for-each select=".">
            <tr>
                <td> <xsl:value-of select="sf:name" /> </td>
                <td> <xsl:value-of select="sf:enabled  " /> </td>
            </tr>
        </xsl:for-each>
    </xsl:template>


    <xsl:template match="sf:customPermissions">
        <xsl:for-each select=".">
            <tr>
                <td> <xsl:value-of select="sf:name" /> </td>
                <td> <xsl:value-of select="sf:enabled  " /> </td>
            </tr>
        </xsl:for-each>
    </xsl:template>


    <xsl:template match="sf:pageAccesses">
        <xsl:for-each select=".">
            <tr>
                <td> <xsl:value-of select="sf:apexPage" /> </td>
                <td> <xsl:value-of select="sf:enabled  " /> </td>
            </tr>
        </xsl:for-each>
    </xsl:template>




</xsl:stylesheet>