<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="NPCCharacter[@id='commander_13']"/>
    <xsl:template match="NPCCharacter[@id='commander_14']"/>
    <xsl:template match="NPCCharacter[@id='commander_16']"/>
    <xsl:template match="NPCCharacter[@id='commander_15']"/>
    <xsl:template match="NPCCharacter[@id='commander_17']"/>
    <xsl:template match="NPCCharacter[@id='commander_18']"/>
    <xsl:template match="NPCCharacter[@id='commander_19']"/>
    <xsl:template match="NPCCharacter[@id='commander_20']"/>
    <xsl:template match="NPCCharacter[@id='commander_21']"/>
    <xsl:template match="NPCCharacter[@id='commander_22']"/>
</xsl:stylesheet>