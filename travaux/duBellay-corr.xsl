<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" version="2.0">

    <xsl:template match="TEI">
        <html>
            <head>
                <title>
                    <xsl:value-of select="teiHeader/fileDesc/titleStmt/title"/>
                </title>
            </head>
            <body>
                <xsl:apply-templates select="text"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="l">
        <xsl:apply-templates/>
        <br/>
    </xsl:template>

    <xsl:template match="head">
        <h2>
            <xsl:apply-templates/>
        </h2>
    </xsl:template>

    <xsl:template match="lg">

        <p> [<xsl:number/><xsl:text>] </xsl:text>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <xsl:template match="reg"/>

</xsl:stylesheet>
