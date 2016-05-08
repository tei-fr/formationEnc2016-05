<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei"
    version="2.0">
    <xsl:template match="tei:body/tei:head"/>
    <xsl:template match="tei:teiHeader"/>
    
    <xsl:template match="tei:body/tei:div">
        <div rend="slide">
            <head>
                <xsl:value-of select="tei:head"/>
            </head>
            <list><xsl:apply-templates select="tei:div[@xml:id]"/></list>
        </div>
    </xsl:template>
   
   <xsl:template match="tei:div/tei:div">
       <label>
           <xsl:value-of select='substring-before(tei:head,  ":")'/>
        </label>
       <item> 
           <xsl:value-of select='substring-after(tei:head,  ":")'/>
           <xsl:apply-templates select="tei:p/tei:ref[1]"/></item>
       
   </xsl:template>
    
    <xsl:template match="tei:ref">
        <xsl:element name="ref">
            <xsl:attribute name="target">
                <xsl:value-of select="@target"/>
            </xsl:attribute>
            <xsl:value-of select="."/>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>