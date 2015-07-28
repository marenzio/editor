<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:mei="http://www.music-encoding.org/ns/mei" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" exclude-result-prefixes="xs xd" version="2.0">
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p>
                <xd:b>Created on:</xd:b> July 28, 2015</xd:p>
            <xd:p>
                <xd:b>Author:</xd:b> Michael McMillan</xd:p>
            <xd:p/>
        </xd:desc>
    </xd:doc>
    <xsl:param name="voice">1</xsl:param>
    
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="mei:staff[@n=$voice]//mei:note/@oct">
        <xsl:attribute name="oct">
            <xsl:value-of select="number(.) + 1"/>
        </xsl:attribute>
    </xsl:template>

</xsl:stylesheet>