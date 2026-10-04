<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="Culture[@id='saikai']"/>
    <xsl:template match="Culture[@id='nankai']"/>
    <xsl:template match="Culture[@id='sanyo']"/>
    <xsl:template match="Culture[@id='kinai']"/>
    <xsl:template match="Culture[@id='hokuriku']"/>
    <xsl:template match="Culture[@id='tosan']"/>
    <xsl:template match="Culture[@id='tokai']"/>
    <xsl:template match="Culture[@id='kanto']"/>
    <xsl:template match="Culture[@id='ou']"/>
</xsl:stylesheet>