<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
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
                                    <xsl:value-of select="Profile/fullName" />
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
                        <td><xsl:value-of select="Profile/description" /></td>
                        <td><xsl:value-of select="Profile/hasActivationRequired" /></td>
                        <td> <xsl:value-of select="Profile/license" /></td>
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
                        <th> <xsl:value-of select="count(Profile/applicationVisibilities)" /> </th>
                    </tr>
                    <xsl:apply-templates select="Profile/applicationVisibilities" />
                </table>


                <!-- tabSettings -->
                <a name="tabSettings"></a>
                <h3>tabSettings</h3>
                <table style='width:400px;'
                    class="table table-light table-bordered table-striped table-hover">

                        <tr>
                        <th>tab</th>
                        <th>visibility</th>
                        <th> <xsl:value-of select="count(Profile/tabSettings)" /> </th>
                    </tr>
                    <xsl:apply-templates select="Profile/tabSettings" />
                </table>


                <!-- tabVisibilities -->
                <a name="tabVisibilities"></a>
                <h3>tabVisibilities</h3>
                <table style='width:400px;'
                    class="table table-light table-bordered table-striped table-hover">

                        <tr>
                        <th>tab</th>
                        <th>visibility</th>
                        <th> <xsl:value-of select="count(Profile/tabVisibilities)" /> </th>
                    </tr>
                    <xsl:apply-templates select="Profile/tabVisibilities" />
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
                        <th> <xsl:value-of select="count(Profile/classAccesses)" /> </th>
                    </tr>
                    <xsl:apply-templates select="Profile/classAccesses" />
                </table>

                <!-- layoutAssignments -->
                <a name="layoutAssignments"></a>
                <h3>layoutAssignments</h3>
                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>layout</th>
                        <th> <xsl:value-of select="count(Profile/layoutAssignments)" /> </th>
                    </tr>
                    <xsl:apply-templates select="Profile/layoutAssignments" />
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
                        <th> <xsl:value-of select="count(Profile/fieldPermissions)" /> </th>
                    </tr>
                    <xsl:apply-templates select="Profile/fieldPermissions" />
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
                        <th> <xsl:value-of select="count(Profile/objectPermissions)" /> </th>
                    </tr>
                    <xsl:apply-templates select="Profile/objectPermissions" />
                </table>


                <!-- userPermissions -->
                <a name="userPermissions"></a>
                <h3>userPermissions</h3>
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
                        <th> <xsl:value-of select="count(Profile/userPermissions)" />
                        </th>
                    </tr>
                    <xsl:apply-templates select="Profile/userPermissions" />
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
                          <th> <xsl:value-of select="count(Profile/recordTypeVisibilities)" /> </th>
                      </tr>
                      <xsl:apply-templates select="Profile/recordTypeVisibilities" />
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
                             <th> <xsl:value-of select="count(Profile/customMetadataTypeAccesses)" /> </th>
                         </tr>
                         <xsl:apply-templates select="Profile/customMetadataTypeAccesses" />
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
                             <th> <xsl:value-of select="count(Profile/customSettingAccesses)" /> </th>
                         </tr>
                         <xsl:apply-templates select="Profile/customSettingAccesses" />
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
                            <th> <xsl:value-of select="count(Profile/customPermissions)" /> </th>
                        </tr>
                        <xsl:apply-templates select="Profile/customPermissions" />
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
                               <th> <xsl:value-of select="count(Profile/pageAccesses)" /> </th>
                           </tr>
                           <xsl:apply-templates select="Profile/pageAccesses" />
                       </table>


   

                </div>
            </body>
        </html>
    </xsl:template>

    <!-- templates -->
    <xsl:template match="applicationVisibilities">
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="application" />
                </td>
                <td>
                    <xsl:value-of select="default" />
                </td>
                <td>
                    <xsl:value-of select="visible" />
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>


    <xsl:template match="classAccesses">
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="apexClass" />
                </td>
                <td>
                    <xsl:value-of select="enabled" />
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="layoutAssignments">
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="layout" />
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="fieldPermissions">
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="field" />
                </td>
                <td>
                    <xsl:value-of select="readable" />
                </td>
                <td>
                    <xsl:value-of select="editable" />
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>


    <xsl:template match="objectPermissions">
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="object" />
                </td>
                <td>
                    <xsl:value-of select="allowCreate" />
                </td>
                <td>
                    <xsl:value-of select="allowDelete" />
                </td>
                <td>
                    <xsl:value-of select="allowEdit" />
                </td>
                <td>
                    <xsl:value-of select="allowRead" />
                </td>
                <td>
                    <xsl:value-of select="viewAllRecords" />
                </td>
                <td>
                    <xsl:value-of select="modifyAllRecords" />
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="userPermissions">
        <xsl:for-each select=".">
            <tr>
                <td> <xsl:value-of select="name" /> </td>
                <td> <xsl:value-of select="enabled" /> </td>
                <td> <xsl:value-of select="modifyAllRecords" /> </td>
            </tr>
        </xsl:for-each>
    </xsl:template>


    <xsl:template match="tabSettings">
        <xsl:for-each select=".">
            <tr>
                <td> <xsl:value-of select="tab" /> </td>
                <td> <xsl:value-of select="visibility" /> </td>
            </tr>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="tabVisibilities">
        <xsl:for-each select=".">
            <tr>
                <td> <xsl:value-of select="tab" /> </td>
                <td> <xsl:value-of select="visibility" /> </td>
            </tr>
        </xsl:for-each>
    </xsl:template>


    <xsl:template match="recordTypeVisibilities">
        <xsl:for-each select=".">
            <tr>
                <td> <xsl:value-of select="recordType" /> </td>
                <td> <xsl:value-of select="visible" /> </td>
            </tr>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="customMetadataTypeAccesses">
        <xsl:for-each select=".">
            <tr>
                <td> <xsl:value-of select="name" /> </td>
                <td> <xsl:value-of select="enabled  " /> </td>
            </tr>
        </xsl:for-each>
    </xsl:template>


    <xsl:template match="customSettingAccesses">
        <xsl:for-each select=".">
            <tr>
                <td> <xsl:value-of select="name" /> </td>
                <td> <xsl:value-of select="enabled  " /> </td>
            </tr>
        </xsl:for-each>
    </xsl:template>


    <xsl:template match="customPermissions">
        <xsl:for-each select=".">
            <tr>
                <td> <xsl:value-of select="name" /> </td>
                <td> <xsl:value-of select="enabled  " /> </td>
            </tr>
        </xsl:for-each>
    </xsl:template>


    <xsl:template match="pageAccesses">
        <xsl:for-each select=".">
            <tr>
                <td> <xsl:value-of select="apexPage" /> </td>
                <td> <xsl:value-of select="enabled  " /> </td>
            </tr>
        </xsl:for-each>
    </xsl:template>




</xsl:stylesheet>