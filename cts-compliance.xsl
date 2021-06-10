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

                        <publicationStmt>
                            <xsl:apply-templates/>
                        </publicationStmt>
                    </fileDesc>                    
                </teiHeader>    
                                   
            </TEI>
        </xsl:template>

        <!-- HEADER Templates -->
        <xsl:template match="tei:titleStmt/tei:title | tei:author[1]">
            <xsl:copy>
                <xsl:attribute name="xml:lang">span</xsl:attribute>
                <xsl:apply-templates/>
            </xsl:copy>
        </xsl:template>

        <xsl:template match="tei:titleStmt/tei:author[position() >= 2]">
            <xsl:copy>
                <xsl:attribute name="xml:lang">quc</xsl:attribute>
                <xsl:apply-templates/>
            </xsl:copy>
        </xsl:template>


<!-- copy from one XSML to another, the respStmt -->
        <xsl:template match="tei:titleStmt">
            <xsl:element name="respStmt">
                
            </xsl:element>
        </xsl:template>

                <!-- <xsl:choose>
                     <xsl:when test="document('xom-all-flat-mod-pnums.xml')/tei:teiHeader/fileDesc/titleStmt/respStmt">
                        
                    </xsl:when>
                 </xsl:choose>  -->


</xsl:stylesheet>