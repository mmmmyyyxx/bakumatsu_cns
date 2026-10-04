<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="NPCCharacter[@id='gangster_2']/upgrade_targets">
        <upgrade_targets>
            <upgrade_target id="NPCCharacter.gangster_3"/>
            <upgrade_target id="NPCCharacter.bak_shinsengumi_roshigumi"/>
            <upgrade_target id="NPCCharacter.bak_shinchogumi_roshigumi"/>
        </upgrade_targets>
    </xsl:template>
</xsl:stylesheet>