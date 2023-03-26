<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:samlp="urn:oasis:names:tc:SAML:2.0:protocol"
xmlns:saml="urn:oasis:names:tc:SAML:2.0:assertion"    >

<xsl:output method="html" />


<!-- Author: mchinnappan -->
<xsl:template match="/">

<html>
<head>
   <link rel="icon" type="image/x-icon" href="https://mohan-chinnappan-n5.github.io/dfv/img/mc_favIcon.ico" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"></link>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css"
        href="https://cdn.datatables.net/v/dt/jszip-2.5.0/dt-1.12.1/b-2.2.3/b-colvis-2.2.3/b-html5-2.2.3/b-print-2.2.3/datatables.min.css" />

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
    <script type="text/javascript"
        src="https://cdn.datatables.net/v/dt/jszip-2.5.0/dt-1.12.1/b-2.2.3/b-colvis-2.2.3/b-html5-2.2.3/b-print-2.2.3/datatables.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/d3/7.6.1/d3.min.js"
        integrity="sha512-MefNfAGJ/pEy89xLOFs3V6pYPs6AmUhXJrRlydI/9wZuGrqxmrdQ80zKHUcyadAcpH67teDZcBeS6oMJLPtTqw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</head>
<body style='min-height: 75rem; padding-top: 3.5rem;'>
  <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
      <a class="navbar-brand" href="#">SAML Response</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home</a>
          </li>
        </ul>
      </div>
    </nav>


  <div class='container'>

        <table style="width:640px"  class="table table-light table-bordered table-striped table-hover">
        <thead>
        <tr>
          <th>ID</th>
          <th>Version</th>
          <th>IssueInstant</th>
          <th>InResponseTo</th>
          <th>Destination</th>
         </tr>
        </thead>
    
        <tbody>

            <tr>
                <td><xsl:value-of select="samlp:Response/@ID"/></td>
                <td><xsl:value-of select="samlp:Response/@Version"/></td>
                <td><xsl:value-of select="samlp:Response/@IssueInstant"/></td>
                <td><xsl:value-of select="samlp:Response/@InResponseTo"/></td>
                <td><xsl:value-of select="samlp:Response/@Destination"/></td>

            </tr>
    
       </tbody>
      </table>


      <table style="width:640px"  class="table table-light table-bordered table-striped table-hover">
        <thead>
        <tr>
          <th>Issuer</th>
         </tr>
        </thead>
    
        <tbody>
            <xsl:apply-templates select="samlp:Response/saml:Issuer" />
        </tbody>
    </table>

    <h5>Assertion</h5>

    <table style="width:640px"  class="table table-light table-bordered table-striped table-hover">
        <thead>
        <tr>
          <th>ID</th>
          <th>Version</th>
          <th>IssueInstant</th>
          <th>Issuer</th>
          <th>NameID</th>
          

       
          <th>AudienceRestriction - Audience</th>


       






         </tr>
        </thead>
    
        <tbody>
            <xsl:apply-templates select="samlp:Response/saml:Assertion" />
        </tbody>
    </table>

 


</div>

  </body>
  </html>
</xsl:template>



     <!-- templates -->

     <xsl:template match="samlp:Response/saml:Issuer">
            <tr>
                <td> <xsl:value-of select="." /> </td>
            </tr>
    </xsl:template>


    <xsl:template match="samlp:Response/saml:Assertion">
    <tr>
        <td> <xsl:value-of select="@ID" /> </td>
        <td> <xsl:value-of select="@Version" /> </td>
        <td> <xsl:value-of select="@IssueInstant" /> </td>
        <td> <xsl:value-of select="saml:Issuer" /> </td>
        <td> <xsl:value-of select="saml:Subject/saml:NameID" /> </td>
        <td> <xsl:value-of select="saml:Conditions/saml:AudienceRestriction/saml:Audience" /> </td>


        <table class="table table-light table-bordered table-striped table-hover">
            <tr>
                <th>SubjectConfirmation</th>
                <th>SubjectConfirmationData - InResponseTo</th>
                <th>SubjectConfirmationData - NotOnOrAfter</th>
                <th>SubjectConfirmationData - Recipient</th>
            </tr>
        <tr>

        <td> <xsl:value-of select="saml:Subject/saml:SubjectConfirmation/@Method" /> </td>
        <td> <xsl:value-of select="saml:Subject/saml:SubjectConfirmation/saml:SubjectConfirmationData/@InResponseTo" /> </td>
        <td> <xsl:value-of select="saml:Subject/saml:SubjectConfirmation/saml:SubjectConfirmationData/@NotOnOrAfter" /> </td>
        <td> <xsl:value-of select="saml:Subject/saml:SubjectConfirmation/saml:SubjectConfirmationData/@Recipient" /> </td>
            </tr>
        </table>

        <table class="table table-light table-bordered table-striped table-hover">
            <tr>
                <th>Conditions - NotBefore</th>
                <th>Conditions - NotOnOrAfter</th>
      
            </tr>
        
        <tr>


            <td> <xsl:value-of select="saml:Conditions/@NotBefore" /> </td>
            <td> <xsl:value-of select="saml:Conditions/@NotOnOrAfter" /> </td>
        </tr>
    </table>


        <table class="table table-light table-bordered table-striped table-hover">
            <tr>
        <th>AuthnStatement - AuthnInstant</th>
        <th>AuthnStatement - SessionIndex</th>


        <th>AuthnStatement - AuthnContext - AuthnContextClassRef</th>


            </tr>
        <tr>

        <td> <xsl:value-of select="saml:AuthnStatement/@AuthnInstant" /> </td>
        <td> <xsl:value-of select="saml:AuthnStatement/@SessionIndex" /> </td>

        <td> <xsl:value-of select="saml:AuthnStatement/saml:AuthnContext/saml:AuthnContextClassRef" /> </td>
        </tr>
    </table>


         









    </tr>
    </xsl:template>

  

     
     


</xsl:stylesheet>
