<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="race[@id='human']/skin[@gender='0']/hair_meshes">
        <xsl:copy>
            <!-- copy all existing hair meshes first -->
            <xsl:apply-templates select="@*|node()" />

            <hair_mesh
                name="bak_chonmage"
                cover_type1="bak_chonmage_reduced"
                cover_type2="bak_chonmage_no_knot"
                cover_type3="bak_chonmage_no_knot"
                cover_type4="bak_chonmage">
                <style_tags>
                    <style_tag
                        name="Chonmage" />
                </style_tags>
            </hair_mesh>

            <hair_mesh
                name="bak_chonmage_2"
                cover_type1="bak_chonmage_2_reduced"
                cover_type2="bak_chonmage_2_no_knot"
                cover_type3="bak_chonmage_2_no_knot_reduced"
                cover_type4="bak_chonmage_2">
                <style_tags>
                    <style_tag
                        name="Chonmage" />
                </style_tags>
            </hair_mesh>

            <hair_mesh
                name="bak_hondamage"
                cover_type1="bak_hondamage_reduced"
                cover_type2="bak_hondamage_no_knot"
                cover_type3="bak_hondamage_no_knot"
                cover_type4="bak_hondamage">
                <style_tags>
                    <style_tag
                        name="Hondamage" />
                </style_tags>
            </hair_mesh>

            <hair_mesh
                name="bak_hondamage_2"
                cover_type1="bak_hondamage_2_reduced"
                cover_type2="bak_hondamage_2_no_knot"
                cover_type3="bak_hondamage_2_no_knot"
                cover_type4="bak_hondamage_2">
                <style_tags>
                    <style_tag
                        name="Hondamage" />
                </style_tags>
            </hair_mesh>

            <hair_mesh
                name="bak_sakayaki"
                cover_type1="bak_sakayaki_reduced"
                cover_type2="bak_sakayaki"
                cover_type3="bak_sakayaki"
                cover_type4="bak_sakayaki">
                <style_tags>
                    <style_tag
                        name="Sakayaki" />
                </style_tags>
            </hair_mesh>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="race[@id='human']/skin[@gender='1']/hair_meshes">
        <xsl:copy>
            <!-- copy all existing hair meshes first -->
            <xsl:apply-templates select="@*|node()" />

            <hair_mesh
                name="bak_shimada"
                cover_type1="bak_shimada_reduced_1"
                cover_type2="bak_shimada_reduced"
                cover_type3="bak_shimada_reduced_1">
                <style_tags>
                    <style_tag
                        name="Shimada" />
                </style_tags>
            </hair_mesh>
            
            <hair_mesh
                name="taka_shimada"
                cover_type1="bak_shimada_reduced_1"
                cover_type2="bak_shimada_reduced"
                cover_type3="bak_shimada_reduced_1">
                <style_tags>
                    <style_tag
                        name="Taka Shimada" />
                </style_tags>
            </hair_mesh>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>