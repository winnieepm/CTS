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
                             <xsl:apply-templates select="//tei:titleStmt"/> 
                        </titleStmt>

                        <publicationStmt>
                            <xsl:apply-templates select="//tei:publicationStmt[node()]"/>
                        </publicationStmt>

                        <sourceDesc>
                            <xsl:apply-templates select="//tei:sourceDesc"/>
                        </sourceDesc>
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

        <xsl:template match="tei:titleStmt/tei:author[position() = 4]">
            <xsl:element name="respStmt">
                <p> PRINT NODE TYPES FROM CTS XML</p>
            </xsl:element>
        </xsl:template>

                <!-- Doesn't work. It should pull & print the respStmt tag from the CTS xml file:
                
                <xsl:template match="tei:resptStmt/p">
                    <xsl:apply-templates select="document('lit0001.pw0001.popolwuj-quc.xml')//tei:titleStmt"/>
                    <xsl:value-of select="//tei:respStmt"></xsl:value-of>
                </xsl:template> -->

        <xsl:template match="tei:publicationStmt">
            <xsl:copy-of select="node()"/>

            <xsl:element name="availability">
                <license>
                    <xsl:comment> Still being resolved (Aldo) </xsl:comment> 
                 </license>
            </xsl:element>
        </xsl:template>

        <xsl:template match="tei:sourceDesc">
            <xsl:copy-of select="node ()"/>
        </xsl:template>

</xsl:stylesheet>