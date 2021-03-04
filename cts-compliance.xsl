<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:tei="http://www.tei-c.org/ns/1.0">
   <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    
    <!-- make template that targets base body; do I need that? 
        xmlns:xs="http://www.w3.org/2001/XMLSchema"
    
        <xsl:template match="/">
           <body>
                <xsl:apply-emplates/>
            </body>
        </xsl:template> -->
    
        <xsl:template match="tei:text[@xml:id='MS1515v2']">      
            <text n="urn:cts:mayaLit:lit0001.pw0001.popolwuj-quc" xml:id="MS1515v2">
                <body xml:lang="quc" n="urn:cts:mayaLit:lit0001.pw0001.popolwuj-quc">
                    <div type="translation">
                       <xsl:apply-templates/>      
                    </div>
                </body>
            </text>       
             
            <!-- non-cts
                <text xml:id="MS1515v2" n="1515.2">
                    <body>
                        <div xml:lang="quc" type="column"> -->
        </xsl:template>
    
        
        
    
<xsl:stylesheet/>
    