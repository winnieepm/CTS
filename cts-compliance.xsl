<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:tei="http://www.tei-c.org/ns/1.0">
   <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    
        <!-- make more specific -->
        <xsl:template match="/">
            <body>
                <xsl:apply-templates/>
            </body>
        </xsl:template> 

        <!-- HEADER -->
        <xsl:template match="tei:teiheader" >
            <teiHeader xml:lang="eng">
            </teiHeader>
        </xsl:template>

                        <title xml:lang="spa">
                        </title>

                        
                        <author xml:lang="quc"></author>
                        <author>
                            <!-- same as pnums -->
                        </author>
                        <author>
                            <!-- same as pnums -->
                        </author>

                        <respStmt>
                            <resp>Worked on transitioning the TEI paragraphs edition to be CTS-compliant</resp>

                            <orgName ref="http://multepal.spanitalport.virginia.edu/">Multepal</orgName>

                            <persName role="principal">Aldo Barriente</persName> 
                            <persName role="editor">Allison Bigelow</persName>
                            <persName role="editor">Rafael Alvarado</persName>
                        </respStmt>
                        <!-- Aldo: I believe we can add another respStmt for all the people who have worked on the site creating temas and such.-->

                    
                    <publicationStmt>
                        <availability>
                            <license><!-- Aldo: Still being resolved --></license>
                        </availability>
                    </publicationStmt>

                <encodingDesc>
                    <editorialDecl>
                    <p>This text is the K'iche' column of the Ximenez edition of the Popol Wuj. Because of nature of CTS's unique identifiers
                    us to separate it from the Castellano column, which is stored as another "edition" of the text according to CTS structure.</p>
                    </editorialDecl>
                
                    <p>The following text is encoded in accordance with TEI standards and with the CTS/CITE Architecture</p>

                    <refsDecl n="CTS">
                        <cRefPattern n="paragraph" 
                                    matchPattern="(\w+)" 
                                    replacementPattern="#xpath(/tei:TEI/tei:text/tei:body/tei:div/tei:div[@n='$1'])">
                        <p>pointer pattern extracting paragraph</p>
                        </cRefPattern>
                    </refsDecl>
                    <refsDecl>
                        <refState unit="paragraph"/>
                    </refsDecl>
                </encodingDesc>

                <profileDesc>
                    <langUsage>
                        <language ident="quc">K'iche'</language>
                    </langUsage>
                    <creation>
                        <!-- Contains information about the creation of a text, e.g. phrases describing 
                        the origin of the text, e.g. the date and place of its composition. -->
                        <date instant="false">Spring 2017</date>
                    </creation>
                </profileDesc>
            </teiHeader>
        </xsl:template>

        <!-- CONTENT BODY -->
        <xsl:template match="tei:text[@xml:id='MS1515v2']">      
            <text n="urn:cts:mayaLit:lit0001.pw0001.popolwuj-quc" xml:id="MS1515v2">
                <body xml:lang="quc" n="urn:cts:mayaLit:lit0001.pw0001.popolwuj-quc">
                    <div type="translation">
                        <xsl:apply-templates/>
                    </div>
                </body>
            </text>       
        </xsl:template>

</xsl:stylesheet>