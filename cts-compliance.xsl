<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:tei="http://www.tei-c.org/ns/1.0">
   <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    
        <!-- FILE STRUCTURE  -->
        <xsl:template match="/">
            <TEI xmlns="http://www.tei-c.org/ns/1.0" 
                 xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:xml="http://www.w3.org/XML/1998/namespace" xml:lang="eng">              
                <teiHeader xml:lang="eng">
                    <fileDesc>
                        <titleStmt>
                            <xsl:apply-templates/>
                        </titleStmt>
                    </fileDesc>                    
                </teiHeader>    
                                   
            </TEI>
        </xsl:template>

        <!-- HEADER Templates -->
        <xsl:template match="tei:title">
            <xsl:element name="title">
                <xsl:attribute name="xml:lang">span</xsl:attribute>
               <xsl:value-of select="tei:title"></xsl:value-of>
            </xsl:element>
           
            <!-- <title xml:lang="spa">            
             </title> -->
        </xsl:template>                       

        

</xsl:stylesheet>