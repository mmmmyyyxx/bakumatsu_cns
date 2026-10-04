<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="CraftingTemplate[@id='SHO_Yari']/WeaponDescriptions">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" />
            <WeaponDescription id="SHO_Yari_CouchA"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="CraftingTemplate[@id='SHO_Yari']/UsablePieces">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" />
            <UsablePiece piece_id="bak_spear_handle"/>
            <UsablePiece piece_id="bak_spear_blade"/>
            <UsablePiece piece_id="bak_spear_banner"/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>