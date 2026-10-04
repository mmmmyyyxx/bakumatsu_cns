<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="NPCCharacter[@id='portuguese_tier_1']"/>
    <xsl:template match="NPCCharacter[@id='portuguese_tier_2']"/>
    <xsl:template match="NPCCharacter[@id='portuguese_tier_3']"/>
    <xsl:template match="NPCCharacter[@id='peasant_farmer']/upgrade_targets">
        <upgrade_targets>
            <upgrade_target id="NPCCharacter.bak_base_traditional_yari_ashigaru"/>
            <upgrade_target id="NPCCharacter.bak_base_traditional_yumi_ashigaru"/>
            <upgrade_target id="NPCCharacter.bak_base_traditional_battogumi"/>
        </upgrade_targets>
    </xsl:template>
</xsl:stylesheet>