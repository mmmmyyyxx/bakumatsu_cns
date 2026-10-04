<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="Item[@id='sho_pistol_teppo_a']"/>
    <xsl:template match="Item[@id='sho_pistol_teppo_b']"/>
	<xsl:template match="Item[@id='sho_pistol_teppo_c']"/>
    <xsl:template match="Item[@id='sho_pistol_teppo_d']"/>
    <xsl:template match="Item[@id='sho_pistol_teppo_g']"/>
    <xsl:template match="Item[@id='sho_pistol_teppo_h']"/>
	<xsl:template match="Item[@id='tanegashima_pistol']"/>
    <xsl:template match="Item[@id='sho_tanegashima_musket']"/>
    <xsl:template match="Item[@id='sho_tanegashima_musket_2']"/>
    <xsl:template match="Item[@id='sho_tanegashima_musket_3']"/>
    <xsl:template match="Item[@id='tanegashima_musket']"/>
    <xsl:template match="Item[@id='tanegashima_musket_2']"/>
    <xsl:template match="Item[@id='tanegashima_musket_3']"/>
	<xsl:template match="Item[@id='sho_ozutsu_cannon']"/>
	<xsl:template match="Item[@id='sho_ozutsu_hand_cannon']"/>
	<xsl:template match="Item[@id='naval_cannon_siege_ammo']"/>
</xsl:stylesheet>