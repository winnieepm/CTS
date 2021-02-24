<!-- apply structure from CTS-compliant version to content in xom-all-flats-pnums.xml -->

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    
<!-- create base template that targets root element -->
    <xsl:template match="/">
      <html>
         <body>
             <xsl:apply-templates/>
         </body>
      </html>    
    </xsl:template>

<!-- create template that adds cts-identifying data to the first paragraphs for kiche --> 
    <xsl:template match="">
        
    </xsl:template>
    
    
    
</xsl:stylesheet>