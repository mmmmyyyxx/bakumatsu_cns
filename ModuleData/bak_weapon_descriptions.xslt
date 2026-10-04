<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="WeaponDescription[@id='SHO_Yari']/AvailablePieces">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" />
            <AvailablePiece id="bak_spear_handle"/>
            <AvailablePiece id="bak_spear_blade"/>
            <AvailablePiece id="bak_spear_banner"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="WeaponDescription[@id='SHO_Yari_Couch']"/>
</xsl:stylesheet>