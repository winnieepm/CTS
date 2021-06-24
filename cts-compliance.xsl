<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:tei="http://www.tei-c.org/ns/1.0">
   <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

<!-- OUTPUT STRUCTURE -->
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

                </fileDesc>
            </teiHeader>

            <text n="urn:cts:mayaLit:lit0001.pw0001.popolwuj-quc" xml:id="MS1515v2">
                <body xml:lang="quc" n="urn:cts:mayaLit:lit0001.pw0001.popolwuj-quc">
                        <xsl:apply-templates select="//tei:body/node()"/>
                </body>
            </text>
        </TEI>
    </xsl:template>
<!-- END OF OUTPUT STRUCTURE -->
    
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
            <!-- separate these templates in the future -->
        </xsl:template>

        <!-- incomplete template pending header structure
        <xsl:template match="tei:sourceDesc">
            <xsl:copy-of select="node ()"/>
        </xsl:template> -->
        
<!-- dev halted until header elements are decided -->
<!-- END OF HEADER TEMPLATES -->

<!-- BODY TEMPLATES -->
    <!-- p01 -->
    <xsl:template match="node()|@*">
      <xsl:copy>
         <xsl:apply-templates select="node()|@*"/>
      </xsl:copy>
    </xsl:template>

    <xsl:template match="tei:div[@type='column']">
        <div type="translation">
            <xsl:apply-templates/> 
        </div>
    </xsl:template>

    <xsl:template match="tei:p[@xml:id='p01']">
        <div type="textpart" subtype="paragraph" n="1">
            <xsl:apply-templates/> 
        </div>
    </xsl:template>

    <xsl:template match="tei:pb[@xml:id='xom-f01-s1']| tei:p[@xml:id='p01']/tei:note"/>

    <!-- p02 -->
    

    

    

  

<!-- END OF BODY TEMPLATES -->


</xsl:stylesheet>