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
                    <a class="navbar-brand" href="#">Flow</a>
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
                               <xsl:value-of select="sf:Flow/sf:label" /> </a>
                            </li>
                        </ul>
                    </div>
                </nav>


                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>apiVersion</th>
                        <th>status</th>
                        <th>description</th>
                        <th>environments</th>
                        <th>interviewLabel</th>
                        <th>label</th>
                        <th>processType</th>
                        <th>isAdditionalPermissionRequiredToRun</th>
                        <th>isTemplate</th>
                    </tr>
                    <tr>
                     <td> <xsl:value-of select="sf:Flow/sf:apiVersion" /></td>
                     <td><xsl:value-of select="sf:Flow/sf:status" /></td>
                     <td><xsl:value-of select="sf:Flow/sf:description" /></td>
                     <td><xsl:value-of select="sf:Flow/sf:environments" /></td>
                    <td><xsl:value-of select="sf:Flow/sf:interviewLabel" /></td>
                    <td><xsl:value-of select="sf:Flow/sf:label" /></td>
                    <td><xsl:value-of select="sf:Flow/sf:processType" /></td>
                    <td><xsl:value-of select="sf:Flow/sf:isAdditionalPermissionRequiredToRun" /></td>
                    <td><xsl:value-of select="sf:Flow/sf:isTemplate" /></td>






                    </tr>
                </table>



                <!-- start -->
                <a name="start"></a>
                <h3>start</h3>
                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>locationX</th>
                        <th>locationY</th>
                        <th>connector</th>
                        <th>object</th>
                        <th>recordTriggerType</th>
                        <th>triggerType</th>
 
                    </tr>
                    <xsl:apply-templates select="sf:Flow/sf:start"> </xsl:apply-templates>
                </table>



                <!-- decisions -->
                <a name="decisions"></a>
                <h3>decisions</h3>
                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>description</th>
                        <th>name</th>
                        <th>label</th>
                        <th>locationX</th>
                        <th>locationY</th>
                        <th>defaultConnectorLabel</th>
                        <th>rules</th>

                    </tr>
                    <xsl:apply-templates select="sf:Flow/sf:decisions"> </xsl:apply-templates>
                </table>


                 <!-- processMetadataValues -->
                <a name="processMetadataValues"></a>
                <h3>processMetadataValues</h3>
                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>name</th>
                        <th>value</th>

                    </tr>
                    <xsl:apply-templates select="sf:Flow/sf:processMetadataValues"> </xsl:apply-templates>
                </table>




                  <!-- actionCalls -->
                <a name="actionCalls"></a>
                <h3>actionCalls</h3>
                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>name</th>
                        <th>label</th>
                        <th>locationX</th>
                        <th>locationY</th>
                        <th>actionName</th>
                        <th>actionType</th>
                        <th>storeOutputAutomatically</th>
                        <th>dataTypeMappings</th>
                        <th>inputParameters</th>

  
                    </tr>
                    <xsl:apply-templates select="sf:Flow/sf:actionCalls"> </xsl:apply-templates>
                </table>



                  <!-- assignments -->
                <a name="assignments"></a>
                <h3>assignments</h3>
                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>name</th>
                        <th>label</th>
                        <th>locationX</th>
                        <th>locationY</th>
                        <th>assignmentItems</th>
                        <th>connector</th>
                       

  
                    </tr>
                    <xsl:apply-templates select="sf:Flow/sf:assignments"> </xsl:apply-templates>
                </table>


                  <!-- subflows -->
                <a name="subflows"></a>
                <h3>subflows</h3>
                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>name</th>
                        <th>label</th>
                        <th>locationX</th>
                        <th>locationY</th>
                        <th>flowName</th>
                        <th>storeOutputAutomatically</th>
                        <th>inputAssignments</th>
  
                    </tr>
                    <xsl:apply-templates select="sf:Flow/sf:subflows"> </xsl:apply-templates>
                </table>


 

            </body>
        </html>
    </xsl:template>

    <!-- templates -->

    <xsl:template match="sf:start">
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="sf:locationX" />
                </td>
                <td>
                    <xsl:value-of select="sf:locationY" />
                </td>
                <td>
                    <xsl:value-of select="sf:connector" />
                </td>

                <td>
                    <xsl:value-of select="sf:object" />
                </td>
                <td>
                    <xsl:value-of select="sf:recordTriggerType" />
                </td>
                <td>
                    <xsl:value-of select="sf:triggerType" />
                </td>
               
                </tr>
        </xsl:for-each>
    </xsl:template>


 <xsl:template match="sf:actionCalls">
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="sf:name" />
                </td>
                <td>
                    <xsl:value-of select="sf:label" />
                </td>
                <td>
                    <xsl:value-of select="sf:locationX" />
                </td>

                <td>
                    <xsl:value-of select="sf:locationY" />
                </td>
                <td>
                    <xsl:value-of select="sf:actionName" />
                </td>
                 <td>
                    <xsl:value-of select="sf:actionType" />
                </td>
                <td>
                    <xsl:value-of select="sf:storeOutputAutomatically" />
                </td>

                   <td>
                   <xsl:apply-templates select="sf:dataTypeMappings">
                    </xsl:apply-templates>
                </td>

                 <td>
                      <xsl:apply-templates select="sf:inputParameters">
                    </xsl:apply-templates>
                </td>
                 
              
                </tr>
        </xsl:for-each>
    </xsl:template>


    <xsl:template match="sf:assignments">
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="sf:name" />
                </td>
                <td>
                    <xsl:value-of select="sf:label" />
                </td>
                <td>
                    <xsl:value-of select="sf:locationX" />
                </td>

                <td>
                    <xsl:value-of select="sf:locationY" />
                </td>
                <td>

                    <xsl:apply-templates select="sf:assignmentItems">
                    </xsl:apply-templates>
                </td>
                 <td>
                    <xsl:value-of select="sf:connector" />
                </td>
                
                
              
                </tr>
        </xsl:for-each>
    </xsl:template>




     <xsl:template match="sf:subflows">
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="sf:name" />
                </td>
                <td>
                    <xsl:value-of select="sf:label" />
                </td>
                <td>
                    <xsl:value-of select="sf:locationX" />
                </td>

                <td>
                    <xsl:value-of select="sf:locationY" />
                </td>
                <td>
                    <xsl:value-of select="sf:flowName" />
                </td>
                <td>
                    <xsl:value-of select="sf:storeOutputAutomatically" />
                </td>
                <td>
                    <xsl:apply-templates select="sf:inputAssignments">
                    </xsl:apply-templates>
                </td>
               
                </tr>
        </xsl:for-each>
    </xsl:template>


    <!-- templates -->
    <xsl:template match="sf:decisions">
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="sf:description" />
                </td>
                <td>
                    <xsl:value-of select="sf:name" />
                </td>
                <td>
                    <xsl:value-of select="sf:label" />
                </td>

                <td>
                    <xsl:value-of select="sf:locationX" />
                </td>
                <td>
                    <xsl:value-of select="sf:locationY" />
                </td>
                <td>
                    <xsl:value-of select="sf:defaultConnectorLabel" />
                </td>
                <td>
                    <xsl:apply-templates select="sf:rules">
                    </xsl:apply-templates>
                </td>
                </tr>
        </xsl:for-each>
    </xsl:template>


    <xsl:template match="sf:dataTypeMappings">
      <table style='width:640px;'
            class="table table-light table-bordered table-striped table-hover">
            <tr>
                <th>typeName</th>
                <th>typeValue</th>
            </tr>
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="sf:typeName" />
                </td>
                <td>
                    <xsl:value-of select="sf:typeValue" />
                </td>
                
            </tr>
        </xsl:for-each>
        </table>
    </xsl:template>


    <xsl:template match="sf:inputAssignments">
      <table style='width:640px;'
            class="table table-light table-bordered table-striped table-hover">
            <tr>
                <th>name</th>
                <th>value</th>
            </tr>
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="sf:name" />
                </td>
                <td>
                    <xsl:value-of select="sf:value" />
                </td>
                
            </tr>
        </xsl:for-each>
        </table>
    </xsl:template>

     <xsl:template match="sf:inputParameters">
      <table style='width:640px;'
            class="table table-light table-bordered table-striped table-hover">
            <tr>
                <th>name</th>
                <th>value</th>
            </tr>
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="sf:name" />
                </td>
                <td>
                    <xsl:value-of select="sf:value" />
                </td>
                
            </tr>
        </xsl:for-each>
        </table>
    </xsl:template>


    <xsl:template match="sf:assignmentItems">
      <table style='width:640px;'
            class="table table-light table-bordered table-striped table-hover">
            <tr>
                <th>assignToReference</th>
                <th>operator</th>
                <th>value</th>
            </tr>
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="sf:assignToReference" />
                </td>
                <td>
                    <xsl:value-of select="sf:operator" />
                </td>

                <td>
                    <xsl:value-of select="sf:value" />
                </td>
                
            </tr>
        </xsl:for-each>
        </table>
    </xsl:template>


    <xsl:template match="sf:decisions/sf:rules">
        <table style='width:640px;'
            class="table table-light table-bordered table-striped table-hover">
            <tr>
                <th>name</th>
                <th>conditionLogic</th>
                <th>conditions</th>
                <th>connector</th>
            </tr>
            <xsl:for-each select=".">
                <tr>
                    <td>
                        <xsl:value-of select="sf:name" />
                    </td>
                    <td>
                        <xsl:value-of select="sf:conditionLogic" />
                    </td>
                    <td>
                    <xsl:apply-templates select="sf:conditions">
                    </xsl:apply-templates>                   
                     </td>
                     <td>
                       <xsl:value-of select="sf:connector/sf:targetReference" />
                     </td>
                </tr>


            </xsl:for-each>
        </table>
    </xsl:template>


    <xsl:template match="sf:decisions/sf:rules/sf:conditions">
        <table style='width:640px;'
            class="table table-light table-bordered table-striped table-hover">
            <tr>
                <th>leftValueReference</th>
                <th>operator</th>
                <th>rightValue</th>
            </tr>
            <xsl:for-each select=".">
                <tr>
                    <td>
                        <xsl:value-of select="sf:leftValueReference" />
                    </td>
                    <td>
                        <xsl:value-of select="sf:operator" />
                    </td>
                    <td>
                        <xsl:value-of select="sf:rightValue" />
                    </td>
                </tr>


            </xsl:for-each>
        </table>
    </xsl:template>


    <xsl:template match="sf:Flow/sf:processMetadataValues">
        
                 <tr>
                    <td>
                        <xsl:value-of select="sf:name" />
                    </td>
                    <td>
                        <xsl:value-of select="sf:value" />
                    </td>
                     
                </tr>


 
     </xsl:template>

   


</xsl:stylesheet>