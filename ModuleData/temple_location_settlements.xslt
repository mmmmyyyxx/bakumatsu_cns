<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="Settlement[Components/TempleLocationComponent]">
    <xsl:copy>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates select="node()"/>
      <Locations complex_template="LocationComplexTemplate.dojo_complex">
        <Location id="arena" scene_name="sho_arena_b" />
      </Locations>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>