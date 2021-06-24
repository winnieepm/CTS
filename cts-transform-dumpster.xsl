<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:tei="http://www.tei-c.org/ns/1.0">
   <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    
        <xsl:element name="div">
            <xsl:attribute name="type">translation</xsl:attribute>
            <div type="textpart" subtype="paragraph" n="1">
                <xsl:copy-of select="tei:p[@xml:id='p01']/tei:lb[]"/> 
            </div>

            <div type="textpart" subtype="paragraph" n="2"></div>
        </xsl:element>


</xsl:stylesheet>