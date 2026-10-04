<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="MBPartyTemplate[@id='kingdom_hero_party_saikai_template']"/>
    <xsl:template match="MBPartyTemplate[@id='kingdom_hero_party_nankai_template']"/>
    <xsl:template match="MBPartyTemplate[@id='kingdom_hero_party_sanyo_template']"/>
    <xsl:template match="MBPartyTemplate[@id='kingdom_hero_party_kinai_template']"/>
    <xsl:template match="MBPartyTemplate[@id='kingdom_hero_party_hokuriku_template']"/>
    <xsl:template match="MBPartyTemplate[@id='kingdom_hero_party_tosan_template']"/>
    <xsl:template match="MBPartyTemplate[@id='kingdom_hero_party_tokai_template']"/>
    <xsl:template match="MBPartyTemplate[@id='kingdom_hero_party_kanto_template']"/>
    <xsl:template match="MBPartyTemplate[@id='kingdom_hero_party_ou_template']"/>
</xsl:stylesheet>