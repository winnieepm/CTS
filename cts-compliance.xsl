<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:tei="http://www.tei-c.org/ns/1.0">
   <xsl:output method="xml" encoding="UTF-8" indent="yes">
    
    <!-- make template that targets base body; do I need that? idk
        xmlns:xs="http://www.w3.org/2001/XMLSchema" -->
    
        <xsl:template match="/">
           <body>
                <xsl:apply-templates/>
            </body>
        </xsl:template>

        <!-- HEADER -->
        <xsl:template match="tei:teiHeader">
            <fileDesc>
                <titleStmt>
                    <title xml:lang="spa">Arte de las tres lenguas kakchiquel, quiché y ꜩutuhil, 
                    v.2 Popol vuh; and Escolios a la historia de el origen de los Indios.</title>
                    <author>Ximénez, Francisco</author>
                    <author xml:lang="quc">Nim CH'OKOJ k'ut chuwach Kaweqib' (gran maestro de la palabra ante los Kaweq)</author>
                    <author>chuwach Nija'ib', ukab' k'u ri' (gran maestro de la palabra ante los Nija'ib era el segundo)</author>
                    <author>Nim CH'OKOJ Ajaw chuwach Ajaw K'iche', rox Nim CH'OKOJ (gran maestro de la palabra era el tercer Señor ante los Ajaw K'iche)</author>
                    <respStmt>
                        <resp>Worked on transitioning the TEI paragraphs edition to be CTS-compliant</resp>
                        <orgName ref="http://multepal.spanitalport.virginia.edu/">Multepal</orgName>
                        <persName role="principal">Aldo Barriente</persName> 
                        <persName role="editor">Allison Bigelow</persName>
                        <persName role="editor">Rafael Alvarado</persName>
                    </respStmt>
                    <!-- Aldo: I believe we can add another respStmt for all the people who have worked on the site creating temas and such.-->
                </titleStmt>
                
                <publicationStmt>
                    <publisher>The Newberry Library</publisher>
                    <publisher>Le winaq</publisher>
                    <pubPlace>Chicago, Illinois, USA</pubPlace>
                    <pubPlace>Iximulew</pubPlace>
                    <availability>
                        <license><!-- Still being resolved --></license>
                    </availability>
                </publicationStmt>
                <sourceDesc>
                    <p>An encoded transciption of the Newberry Library's VAULT Ayer MS 1515, volume 2, Folio , Side .
                    Based on the transcription provided by online edition of the Popol Wuj hosted by The Ohio State University Libraries at 
                    https://library.osu.edu/projects/popolwujs and contained in the PDF document available at
                    https://library.osu.edu/projects/popolwuj/pdfs/NotesOnTransPW_Jn_Jl_2007.</p>
                </sourceDesc>
            </fileDesc>

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
        <xsl:apply-templates/>
    
        <!-- BODY -->
        <xsl:template match="tei:text[@xml:id='MS1515v2']">      
            <text n="urn:cts:mayaLit:lit0001.pw0001.popolwuj-quc" xml:id="MS1515v2">
                <body xml:lang="quc" n="urn:cts:mayaLit:lit0001.pw0001.popolwuj-quc">
                    <div type="translation">   
                    </div>
                </body>
            </text>       
        <xsl:apply-templates/>
         
        </xsl:template>
    
    
</xsl:stylesheet>