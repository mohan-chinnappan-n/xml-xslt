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

                 <ul class='list-group list-group-flush' style="width:400px;">
                    <li class='list-group-item'>
                        <a href="#start">start</a>
                    </li>
                    <li class='list-group-item'>
                        <a href="#screens">screens</a>
                    </li>
                    <li class='list-group-item'>
                        <a href="#decisions">decisions</a>
                    </li>

                    <li class='list-group-item'>
                        <a href="#variables">variables</a>
                    </li>
                    <li class='list-group-item'>
                        <a href="#formulas">formulas</a>
                    </li>
                    <li class='list-group-item'>
                        <a href="#textTemplates">textTemplates</a>
                    </li>

                    <li class='list-group-item'>
                        <a href="#dynamicChoiceSets">dynamicChoiceSets</a>
                    </li>

                    <li class='list-group-item'>
                        <a href="#recordCreates">recordCreates</a>
                    </li>

                    <li class='list-group-item'>
                        <a href="#recordUpdates">recordUpdates</a>
                    </li>

                    <li class='list-group-item'>
                        <a href="#recordLookups">recordLookups</a>
                    </li>

                    <li class='list-group-item'>
                        <a href="#processMetadataValues">processMetadataValues</a>
                    </li>

                    <li class='list-group-item'>
                        <a href="#actionCalls">actionCalls</a>
                    </li>

                    <li class='list-group-item'>
                        <a href="#assignments">assignments</a>
                    </li>


                    <li class='list-group-item'>
                        <a href="#subflows">subflows</a>
                    </li>



                </ul>



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

                    <!-- screens -->
                <a name="screens"></a>
                <h3>screens</h3>
                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                         <th>label</th>
                        <th>locationX</th>
                        <th>locationY</th>
                        <th>allowBack</th>
                        <th>allowFinish</th>
                        <th>allowPause</th>
                        <th>connector</th>
                        <th>fields</th>
                        <th>showFooter</th>
                        <th>showHeader</th>
 
                    </tr>
                    <xsl:apply-templates select="sf:Flow/sf:screens"> </xsl:apply-templates>
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

                   <!-- variables -->
                <a name="variables"></a>
                <h3>variables</h3>
                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>name</th>
                        <th>dataType</th>
                        <th>isCollection</th>
                        <th>isInput</th>
                        <th>isOutput</th>

                    </tr>
                    <xsl:apply-templates select="sf:Flow/sf:variables"> </xsl:apply-templates>
                </table>



                 <!-- formulas -->
                <a name="formulas"></a>
                <h3>formulas</h3>
                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>name</th>
                        <th>dataType</th>
                        <th>expression</th>

                    </tr>
                    <xsl:apply-templates select="sf:Flow/sf:formulas"> </xsl:apply-templates>
                </table>


                 <!-- textTemplates -->
                <a name="textTemplates"></a>
                <h3>textTemplates</h3>
                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>name</th>
                        <th>text</th>

                    </tr>
                    <xsl:apply-templates select="sf:Flow/sf:textTemplates"> </xsl:apply-templates>
                </table>

                 <!-- dynamicChoiceSets -->
                <a name="dynamicChoiceSets"></a>
                <h3>dynamicChoiceSets</h3>
                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>name</th>
                        <th>dataType</th>
                        <th>displayField</th>
                        <th>object</th>
                        <th>outputAssignments</th>
                        <th>valueField</th>

                    </tr>
                    <xsl:apply-templates select="sf:Flow/sf:dynamicChoiceSets"> </xsl:apply-templates>
                </table>


                <!-- recordCreates -->
                <a name="recordCreates"></a>
                <h3>recordCreates</h3>
                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>name</th>
                        <th>label</th>
                        <th>locationX</th>
                        <th>locationY</th>
                        <th>connector</th>
                        <th>valueFieinputReferenceld</th>
                        <th>inputReference</th>

                    </tr>
                    <xsl:apply-templates select="sf:Flow/sf:recordCreates"> </xsl:apply-templates>
                </table>



                <!-- recordUpdates -->
                <a name="recordUpdates"></a>
                <h3>recordUpdates</h3>
                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>name</th>
                        <th>label</th>
                        <th>locationX</th>
                        <th>locationY</th>
                        <th>connector</th>
                        <th>valueFieinputReferenceld</th>
                        <th>inputReference</th>

                    </tr>
                    <xsl:apply-templates select="sf:Flow/sf:recordUpdates"> </xsl:apply-templates>
                </table>

                  <!-- recordLookups -->
                <a name="recordLookups"></a>
                <h3>recordLookups</h3>
                <table
                    style='width:640px;'
                    class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>name</th>
                        <th>label</th>
                        <th>object</th>
                        <th>locationX</th>
                        <th>locationY</th>
                        <th>connector</th>
                        <th>assignNullValuesIfNoRecordsFound</th>
                        <th>filters</th>
                        <th>outputAssignments</th>
                        <th>storeOutputAutomatically</th>

                    </tr>
                    <xsl:apply-templates select="sf:Flow/sf:recordLookups"> </xsl:apply-templates>
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


      <xsl:template match="sf:Flow/sf:formulas  ">
                 <tr>
                    <td>
                        <xsl:value-of select="sf:name" />
                    </td>
                    <td>
                        <xsl:value-of select="sf:dataType" />
                    </td>
                       <td>
                        <xsl:value-of select="sf:expression" />
                    </td>
                     
                </tr>
     </xsl:template>


       <xsl:template match="sf:Flow/sf:dynamicChoiceSets  ">
                 <tr>
                    <td>
                        <xsl:value-of select="sf:name" />
                    </td>
                    <td>
                        <xsl:value-of select="sf:dataType" />
                    </td>
                       <td>
                        <xsl:value-of select="sf:displayField" />
                    </td>
                        <td>
                        <xsl:value-of select="sf:object" />
                    </td>
                        <td>
                                <xsl:apply-templates select="sf:outputAssignments">
                                </xsl:apply-templates>                      
                        </td>

                        <td>
                        <xsl:value-of select="sf:valueField" />
                    </td>
                     
                </tr>
     </xsl:template>


     <xsl:template match="sf:outputAssignments">
      <table style='width:640px;'
            class="table table-light table-bordered table-striped table-hover">
            <tr>
                <th>assignToReference</th>
                <th>field</th>
            </tr>
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="sf:assignToReference" />
                </td>
                <td>
                    <xsl:value-of select="sf:field" />
                </td>
                
            </tr>
        </xsl:for-each>
        </table>
    </xsl:template>


    <xsl:template match="sf:recordCreates">
     
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
                    <xsl:value-of select="sf:connector" />
                </td>

                 <td>
                    <xsl:value-of select="sf:inputReference" />
                </td>

                   <td>
                    <xsl:value-of select="sf:storeOutputAutomatically" />
                </td>
              
                
            </tr>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="sf:recordUpdates">
     
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
                    <xsl:value-of select="sf:connector" />
                </td>

                 <td>
                    <xsl:value-of select="sf:inputReference" />
                </td>

                   <td>
                    <xsl:value-of select="sf:storeOutputAutomatically" />
                </td>
              
                
            </tr>
        </xsl:for-each>
    </xsl:template>


    <xsl:template match="sf:recordLookups">
     
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="sf:name" />
                </td>
                <td>
                    <xsl:value-of select="sf:label" />
                </td>

                  <td>
                    <xsl:value-of select="sf:object" />
                </td>
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
                    <xsl:value-of select="sf:assignNullValuesIfNoRecordsFound" />
                </td>

                   <td>
                    <xsl:value-of select="sf:filters" />
                </td>

                    <td>
                    <xsl:value-of select="sf:outputAssignments" />
                </td>


                    <td>
                    <xsl:value-of select="sf:storeOutputAutomatically" />
                </td>
              
                
            </tr>
        </xsl:for-each>
    </xsl:template>



  <xsl:template match="sf:variables">
   
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="sf:name" />
                </td>
                <td>
                    <xsl:value-of select="sf:dataType" />
                </td>

                   <td>
                    <xsl:value-of select="sf:dataType" />
                </td>
                  <td>
                    <xsl:value-of select="sf:isInput" />
                </td>

                  <td>
                    <xsl:value-of select="sf:isOutput" />
                </td>
                
            </tr>
        </xsl:for-each>
    </xsl:template>




  <xsl:template match="sf:textTemplates">
   
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="sf:name" />
                </td>
                <td>
                    <xsl:value-of select="sf:text" />
                </td>

                                
            </tr>
        </xsl:for-each>
    </xsl:template>


      <xsl:template match="sf:screens">
   
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
                    <xsl:value-of select="sf:allowBack" />
                </td>

                   <td>
                    <xsl:value-of select="sf:allowPause" />
                </td>


                   <td>
                    <xsl:value-of select="sf:connector" />
                </td>

                  <td>
                    <xsl:apply-templates select="sf:fields"> </xsl:apply-templates>

                </td>

                  <td>
                    <xsl:value-of select="sf:showFooter" />
                </td>

                  <td>
                    <xsl:value-of select="sf:showHeader" />
                </td>

                                
            </tr>
        </xsl:for-each>
    </xsl:template>


     <xsl:template match="sf:fields">
     <table style='width:640px;'
            class="table table-light table-bordered table-striped table-hover">
            <tr>
                <th>name</th>
                <th>extensionName</th>
                <th>fieldText</th>
                <th>fieldType</th>
                <th>isRequired</th>
                <th>outputParameters</th>
            </tr>
   
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:value-of select="sf:name" />
                </td>
                <td>
                    <xsl:value-of select="sf:extensionName" />
                </td>
                  <td>
                    <xsl:value-of select="sf:fieldText" />
                </td>

                <td>
                    <xsl:value-of select="sf:fieldType" />
                </td>
                   <td>
                    <xsl:value-of select="sf:isRequired" />
                </td>

                  <td>
                    <xsl:value-of select="sf:outputParameters" />
                </td>

                 


                
                                
            </tr>
        </xsl:for-each>
        </table>
    </xsl:template>

   


</xsl:stylesheet>