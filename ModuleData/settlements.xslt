<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <!-- KYUSHU -->
    <!-- Satsuma -->
    <!-- Most probably weren't castles but Satsuma had a lot of Tojo outer castle fortifications -->
    <xsl:template match="Settlement[@id='town_KY2']/@name">
        <xsl:attribute name='name'>{=DvfCu92X}Kagoshima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_KY2']/@prosperity">
        <xsl:attribute name="prosperity">4615</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY2_1']/@hearth">
        <xsl:attribute name="hearth">600</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY2_2']/@hearth">
        <xsl:attribute name="hearth">600</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY2_3']/@hearth">
        <xsl:attribute name="hearth">600</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY16']/@owner">
        <xsl:attribute name='owner'>Faction.clan_shimazu_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY16']/@prosperity">
        <xsl:attribute name="prosperity">2098</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY16_1']/@hearth">
        <xsl:attribute name="hearth">373</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY16_2']/@hearth">
        <xsl:attribute name="hearth">373</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KY1']/@owner">
        <xsl:attribute name='owner'>Faction.clan_shimazu_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_KY1']/@prosperity">
        <xsl:attribute name="prosperity">4615</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY1_1']/@hearth">
        <xsl:attribute name="hearth">600</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY1_2']/@hearth">
        <xsl:attribute name="hearth">600</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY1_3']/@hearth">
        <xsl:attribute name="hearth">600</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY12']/@owner">
        <xsl:attribute name='owner'>Faction.clan_shimazu_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY12']/@prosperity">
        <xsl:attribute name="prosperity">2098</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY12_1']/@hearth">
        <xsl:attribute name="hearth">373</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY12_2']/@hearth">
        <xsl:attribute name="hearth">373</xsl:attribute>
    </xsl:template>
    <!-- Kawakami-shi -->
    <xsl:template match="Settlement[@id='castle_KY4']/@owner">
        <xsl:attribute name='owner'>Faction.clan_kawakami_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY4']/@prosperity">
        <xsl:attribute name="prosperity">2098</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY4_1']/@hearth">
        <xsl:attribute name="hearth">373</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY4_2']/@hearth">
        <xsl:attribute name="hearth">373</xsl:attribute>
    </xsl:template>
    <!-- Okubo-shi (not landed historically) -->
    <xsl:template match="Settlement[@id='castle_KY2']/@owner">
        <xsl:attribute name='owner'>Faction.clan_b_okubo_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY2']/@prosperity">
        <xsl:attribute name="prosperity">2098</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY2_1']/@hearth">
        <xsl:attribute name="hearth">373</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY2_2']/@hearth">
        <xsl:attribute name="hearth">373</xsl:attribute>
    </xsl:template>
    <!-- Saigo-shi (not landed historically) -->
    <xsl:template match="Settlement[@id='castle_KY1']/@owner">
        <xsl:attribute name='owner'>Faction.clan_b_saigo_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY1']/@prosperity">
        <xsl:attribute name="prosperity">2098</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY1_1']/@hearth">
        <xsl:attribute name="hearth">373</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY1_2']/@hearth">
        <xsl:attribute name="hearth">373</xsl:attribute>
    </xsl:template>
    <!-- Katsura-shi -->
    <xsl:template match="Settlement[@id='castle_KY11']/@owner">
        <xsl:attribute name='owner'>Faction.clan_hongo_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY11']/@prosperity">
        <xsl:attribute name="prosperity">270</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY11_1']/@hearth">
        <xsl:attribute name="hearth">373</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY11_2']/@hearth">
        <xsl:attribute name="hearth">373</xsl:attribute>
    </xsl:template>
    <!-- Kajiki Shimazu-shi -->
    <xsl:template match="Settlement[@id='castle_KY5']/@owner">
        <xsl:attribute name='owner'>Faction.clan_niro_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY5']/@prosperity">
        <xsl:attribute name="prosperity">1459</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY5_1']/@hearth">
        <xsl:attribute name="hearth">373</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY5_2']/@hearth">
        <xsl:attribute name="hearth">373</xsl:attribute>
    </xsl:template>
    <!-- Imaizumi Shimazu-shi -->
    <xsl:template match="Settlement[@id='castle_KY7']/@owner">
        <xsl:attribute name='owner'>Faction.clan_b_imaizumi_shimazu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY7']/@name">
        <xsl:attribute name='name'>{=YlHG1uim}Imaizumi Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY7']/@prosperity">
        <xsl:attribute name="prosperity">1188</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY7_1']/@hearth">
        <xsl:attribute name="hearth">373</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY7_2']/@hearth">
        <xsl:attribute name="hearth">373</xsl:attribute>
    </xsl:template>
    <!-- Miyakonojo Shimazu-shi -->
    <xsl:template match="Settlement[@id='castle_KY4']/@owner">
        <xsl:attribute name='owner'>Faction.clan_b_miyakonojo_shimazu_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY4']/@prosperity">
        <xsl:attribute name="prosperity">1762</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY4_1']/@hearth">
        <xsl:attribute name="hearth">373</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY4_2']/@hearth">
        <xsl:attribute name="hearth">373</xsl:attribute>
    </xsl:template>
    <!-- Shigetomi Shimazu-shi -->
    <xsl:template match="Settlement[@id='castle_KY9']/@owner">
        <xsl:attribute name='owner'>Faction.clan_uwai_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY9']/@name">
        <xsl:attribute name='name'>{=kQ3nFXBb}Shigetomi Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY9']/@prosperity">
        <xsl:attribute name="prosperity">1261</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY9_1']/@hearth">
        <xsl:attribute name="hearth">373</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY9_2']/@hearth">
        <xsl:attribute name="hearth">373</xsl:attribute>
    </xsl:template>
    <!-- Kimotsuki-shi -->
    <xsl:template match="Settlement[@id='castle_KY6']/@owner">
        <xsl:attribute name='owner'>Faction.clan_b_kimotsuki_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY6']/@name">
        <xsl:attribute name='name'>{=V4l3uOOV}Kiire Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY6']/@prosperity">
        <xsl:attribute name="prosperity">938</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY6_1']/@hearth">
        <xsl:attribute name="hearth">373</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY6_2']/@hearth">
        <xsl:attribute name="hearth">373</xsl:attribute>
    </xsl:template>
    <!-- Tarumi Shimazu-shi -->
    <xsl:template match="Settlement[@id='castle_KY3']/@owner">
        <xsl:attribute name='owner'>Faction.clan_b_tarumi_shimazu_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY3']/@name">
        <xsl:attribute name='name'>{=72CP6gNY}Tarumi Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY3']/@prosperity">
        <xsl:attribute name="prosperity">1363</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY3_1']/@hearth">
        <xsl:attribute name="hearth">373</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY3_2']/@hearth">
        <xsl:attribute name="hearth">373</xsl:attribute>
    </xsl:template>
    <!-- Sadowara-han -->
    <!-- Sadowara Shimazu-shi -->
    <xsl:template match="Settlement[@id='town_KY3']/@owner">
        <xsl:attribute name='owner'>Faction.clan_ijuin_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_KY3']/@prosperity">
        <xsl:attribute name="prosperity">2688</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY3_1']/@hearth">
        <xsl:attribute name="hearth">150</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY3_2']/@hearth">
        <xsl:attribute name="hearth">150</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY3_3']/@hearth">
        <xsl:attribute name="hearth">150</xsl:attribute>
    </xsl:template>
    <!-- Kumamoto (From Aso) -->
    <xsl:template match="Settlement[@id='town_KY8']/@owner">
        <xsl:attribute name='owner'>Faction.clan_nishi_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KY8']/@culture">
        <xsl:attribute name='culture'>Culture.kumamoto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KY8_1']/@culture">
        <xsl:attribute name='culture'>Culture.kumamoto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KY8_2']/@culture">
        <xsl:attribute name='culture'>Culture.kumamoto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KY8_3']/@culture">
        <xsl:attribute name='culture'>Culture.kumamoto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_KY8']/@prosperity">
        <xsl:attribute name="prosperity">5404</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY8_1']/@hearth">
        <xsl:attribute name="hearth">1000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY8_2']/@hearth">
        <xsl:attribute name="hearth">1000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY8_3']/@hearth">
        <xsl:attribute name="hearth">1000</xsl:attribute>
    </xsl:template>
    <!-- Takase-han -->
    <xsl:template match="Settlement[@id='castle_KY23']/@owner">
        <xsl:attribute name='owner'>Faction.clan_nawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY23']/@name">
        <xsl:attribute name='name'>{=EOUbYBPk}Takase Jin'ya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY23']/@culture">
        <xsl:attribute name='culture'>Culture.kumamoto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY23_1']/@culture">
        <xsl:attribute name='culture'>Culture.kumamoto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY23_2']/@culture">
        <xsl:attribute name='culture'>Culture.kumamoto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY23']/@prosperity">
        <xsl:attribute name="prosperity">1762</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY23_1']/@hearth">
        <xsl:attribute name="hearth">264</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY23_2']/@hearth">
        <xsl:attribute name="hearth">264</xsl:attribute>
    </xsl:template>
    <!-- Uto-han -->
    <xsl:template match="Settlement[@id='castle_KY31']/@owner">
        <xsl:attribute name='owner'>Faction.clan_kai_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY31']/@name">
        <xsl:attribute name='name'>{=DhFnievF}Udo Jin'ya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY31']/@culture">
        <xsl:attribute name='culture'>Culture.kumamoto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY31_1']/@culture">
        <xsl:attribute name='culture'>Culture.kumamoto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY31_2']/@culture">
        <xsl:attribute name='culture'>Culture.kumamoto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY31']/@prosperity">
        <xsl:attribute name="prosperity">1682</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY31_1']/@hearth">
        <xsl:attribute name="hearth">224</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY31_2']/@hearth">
        <xsl:attribute name="hearth">224</xsl:attribute>
    </xsl:template>
    <!-- Matsui-shi -->
    <xsl:template match="Settlement[@id='castle_KY17']/@owner">
        <xsl:attribute name='owner'>Faction.clan_aso_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY17']/@name">
        <xsl:attribute name='name'>{=dENmoFnW}Yatsushiro Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY17']/@culture">
        <xsl:attribute name='culture'>Culture.kumamoto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY17_1']/@culture">
        <xsl:attribute name='culture'>Culture.kumamoto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY17_2']/@culture">
        <xsl:attribute name='culture'>Culture.kumamoto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY17']/@prosperity">
        <xsl:attribute name="prosperity">1682</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY17_1']/@hearth">
        <xsl:attribute name="hearth">1000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY17_2']/@hearth">
        <xsl:attribute name="hearth">1000</xsl:attribute>
    </xsl:template>

    <!-- Hitoyoshi -->
    <xsl:template match="Settlement[@id='town_KY4']/@culture">
        <xsl:attribute name='culture'>Culture.hitoyoshi</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KY4_1']/@culture">
        <xsl:attribute name='culture'>Culture.hitoyoshi</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KY4_2']/@culture">
        <xsl:attribute name='culture'>Culture.hitoyoshi</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KY4_3']/@culture">
        <xsl:attribute name='culture'>Culture.hitoyoshi</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_KY4']/@prosperity">
        <xsl:attribute name="prosperity">2545</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY4_1']/@hearth">
        <xsl:attribute name="hearth">109</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY4_2']/@hearth">
        <xsl:attribute name="hearth">109</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY4_3']/@hearth">
        <xsl:attribute name="hearth">109</xsl:attribute>
    </xsl:template>

    <!-- Kurume -->
    <xsl:template match="Settlement[@id='castle_KY22']/@owner">
        <xsl:attribute name='owner'>Faction.clan_arima_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY22']/@name">
        <xsl:attribute name='name'>{=MfCOiZMx}Kurume Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY22']/@culture">
        <xsl:attribute name='culture'>Culture.kurume</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY22_1']/@culture">
        <xsl:attribute name='culture'>Culture.kurume</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY22_2']/@culture">
        <xsl:attribute name='culture'>Culture.kurume</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY22']/@prosperity">
        <xsl:attribute name="prosperity">2044</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY22_1']/@hearth">
        <xsl:attribute name="hearth">663</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY22_2']/@hearth">
        <xsl:attribute name="hearth">663</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KY7']/@owner">
        <xsl:attribute name='owner'>Faction.clan_arima_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KY7']/@culture">
        <xsl:attribute name='culture'>Culture.kurume</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KY7_1']/@culture">
        <xsl:attribute name='culture'>Culture.kurume</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KY7_2']/@culture">
        <xsl:attribute name='culture'>Culture.kurume</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KY7_3']/@culture">
        <xsl:attribute name='culture'>Culture.kurume</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_KY7']/@prosperity">
        <xsl:attribute name="prosperity">4495</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY7_1']/@hearth">
        <xsl:attribute name="hearth">663</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY7_2']/@hearth">
        <xsl:attribute name="hearth">663</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY7_3']/@hearth">
        <xsl:attribute name="hearth">663</xsl:attribute>
    </xsl:template>

    <!-- Kokura -->
    <xsl:template match="Settlement[@id='town_KY6']/@owner">
        <xsl:attribute name='owner'>Faction.clan_ito_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KY6']/@name">
        <xsl:attribute name='name'>{=HHWkdmFT}Buzen</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KY6']/@culture">
        <xsl:attribute name='culture'>Culture.kokura</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KY6_1']/@culture">
        <xsl:attribute name='culture'>Culture.kokura</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KY6_2']/@culture">
        <xsl:attribute name='culture'>Culture.kokura</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KY6_3']/@culture">
        <xsl:attribute name='culture'>Culture.kokura</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_KY6']/@prosperity">
        <xsl:attribute name="prosperity">4179</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY6_1']/@hearth">
        <xsl:attribute name="hearth">477</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY6_2']/@hearth">
        <xsl:attribute name="hearth">477</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY6_3']/@hearth">
        <xsl:attribute name="hearth">477</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY25']/@owner">
        <xsl:attribute name='owner'>Faction.clan_ito_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY25']/@name">
        <xsl:attribute name='name'>{=Eux6uT73}Kokura Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY25']/@culture">
        <xsl:attribute name='culture'>Culture.kokura</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY25_1']/@culture">
        <xsl:attribute name='culture'>Culture.kokura</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY25_2']/@culture">
        <xsl:attribute name='culture'>Culture.kokura</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY25']/@prosperity">
        <xsl:attribute name="prosperity">1900</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY25_1']/@hearth">
        <xsl:attribute name="hearth">477</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY25_2']/@hearth">
        <xsl:attribute name="hearth">477</xsl:attribute>
    </xsl:template>

    <!-- Fukuoka -->
    <xsl:template match="Settlement[@id='town_KY9']/@owner">
        <xsl:attribute name='owner'>Faction.clan_kuroda_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KY9']/@name">
        <xsl:attribute name='name'>{=tfwfgbGr}Fukuoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KY9']/@culture">
        <xsl:attribute name='culture'>Culture.fukuoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KY9_1']/@culture">
        <xsl:attribute name='culture'>Culture.fukuoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KY9_2']/@culture">
        <xsl:attribute name='culture'>Culture.fukuoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KY9_3']/@culture">
        <xsl:attribute name='culture'>Culture.fukuoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_KY9']/@prosperity">
        <xsl:attribute name="prosperity">5348</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY9_1']/@hearth">
        <xsl:attribute name="hearth">1000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY9_2']/@hearth">
        <xsl:attribute name="hearth">1000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY9_3']/@hearth">
        <xsl:attribute name="hearth">1000</xsl:attribute>
    </xsl:template>
    <!-- Kato-shi -->
    <xsl:template match="Settlement[@id='castle_KY24']/@owner">
        <xsl:attribute name='owner'>Faction.clan_bessho_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY24']/@name">
        <xsl:attribute name='name'>{=LKUxUR8Y}Iizuka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY24']/@culture">
        <xsl:attribute name='culture'>Culture.fukuoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY24_1']/@culture">
        <xsl:attribute name='culture'>Culture.fukuoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY24_2']/@culture">
        <xsl:attribute name='culture'>Culture.fukuoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY24']/@prosperity">
        <xsl:attribute name="prosperity">788</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY24_1']/@hearth">
        <xsl:attribute name="hearth">1000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY24_2']/@hearth">
        <xsl:attribute name="hearth">1000</xsl:attribute>
    </xsl:template>
    <!-- Akizuki-han -->
    <xsl:template match="Settlement[@id='castle_KY21']/@owner">
        <xsl:attribute name='owner'>Faction.clan_b_akizuki_kuroda_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY21']/@name">
        <xsl:attribute name='name'>{=HrvBj1b6}Akizuki Jin'ya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY21']/@culture">
        <xsl:attribute name='culture'>Culture.fukuoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY21_1']/@culture">
        <xsl:attribute name='culture'>Culture.fukuoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY21_2']/@culture">
        <xsl:attribute name='culture'>Culture.fukuoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY21']/@prosperity">
        <xsl:attribute name="prosperity">1928</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY21_1']/@hearth">
        <xsl:attribute name="hearth">389</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY21_2']/@hearth">
        <xsl:attribute name="hearth">389</xsl:attribute>
    </xsl:template>

    <!-- Making Nagasaki a city, not modding map yet -->
    <!-- <xsl:template match="Settlement[@id='castle_village_KY29_2']/@posX">
        <xsl:attribute name="posX">281.414</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY29_2']/@posY">
        <xsl:attribute name="posY">322.358</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY29_2']/@name">
        <xsl:attribute name="posY">{=NjWKX8LI}Hinoe</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KY11']/@posX">
        <xsl:attribute name="posX">237.517</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KY11']/@posY">
        <xsl:attribute name="posY">326.026</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KY11']/@gate_posX">
        <xsl:attribute name="gate_posX">237.3803</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KY11']/@gate_posY">
        <xsl:attribute name="gate_posY">326.1872</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KY11']/@name">
        <xsl:attribute name="posX">{=b7yO79tn}Nagasaki</xsl:attribute>
    </xsl:template> -->

    <!-- Saga-han -->
    <!-- Nabeshima-shi -->
    <xsl:template match="Settlement[@id='town_KY11']/@owner">
        <xsl:attribute name='owner'>Faction.clan_nabeshima_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KY11']/@culture">
        <xsl:attribute name='culture'>Culture.saga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KY11_1']/@culture">
        <xsl:attribute name='culture'>Culture.saga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KY11_2']/@culture">
        <xsl:attribute name='culture'>Culture.saga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KY11_3']/@culture">
        <xsl:attribute name='culture'>Culture.saga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_KY11']/@prosperity">
        <xsl:attribute name="prosperity">4701</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY11_1']/@hearth">
        <xsl:attribute name="hearth">582</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY11_2']/@hearth">
        <xsl:attribute name="hearth">582</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY11_3']/@hearth">
        <xsl:attribute name="hearth">582</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KY10']/@owner">
        <xsl:attribute name='owner'>Faction.clan_nabeshima_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KY10']/@name">
        <xsl:attribute name='name'>{=eL3o2vmZ}Saga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KY10']/@culture">
        <xsl:attribute name='culture'>Culture.saga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KY10_1']/@culture">
        <xsl:attribute name='culture'>Culture.saga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KY10_2']/@culture">
        <xsl:attribute name='culture'>Culture.saga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KY10_3']/@culture">
        <xsl:attribute name='culture'>Culture.saga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_KY10']/@prosperity">
        <xsl:attribute name="prosperity">4701</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY10_1']/@hearth">
        <xsl:attribute name="hearth">582</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY10_2']/@hearth">
        <xsl:attribute name="hearth">582</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY10_3']/@hearth">
        <xsl:attribute name="hearth">582</xsl:attribute>
    </xsl:template>
    <!-- Shiraishi Nabeshima-shi -->
    <xsl:template match="Settlement[@id='castle_KY28']/@owner">
        <xsl:attribute name='owner'>Faction.clan_b_shiraishi_nabeshima_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY28']/@name">
        <xsl:attribute name='name'>{=bsA0vCZ7}Shiraishi</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY28']/@culture">
        <xsl:attribute name='culture'>Culture.saga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY28_1']/@culture">
        <xsl:attribute name='culture'>Culture.saga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY28_2']/@culture">
        <xsl:attribute name='culture'>Culture.saga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY28']/@prosperity">
        <xsl:attribute name="prosperity">1467</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY28_1']/@hearth">
        <xsl:attribute name="hearth">582</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY28_2']/@hearth">
        <xsl:attribute name="hearth">582</xsl:attribute>
    </xsl:template>
    <!-- Isahaya Ryuzoji-shi -->
    <xsl:template match="Settlement[@id='castle_KY29']/@owner">
        <xsl:attribute name='owner'>Faction.clan_b_isahaya_ryuzoji_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY29']/@name">
        <xsl:attribute name='name'>{=MBqlRZU5}Isahaya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY29']/@culture">
        <xsl:attribute name='culture'>Culture.saga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY29_1']/@culture">
        <xsl:attribute name='culture'>Culture.saga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY29_2']/@culture">
        <xsl:attribute name='culture'>Culture.saga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY29']/@prosperity">
        <xsl:attribute name="prosperity">1611</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY29_1']/@hearth">
        <xsl:attribute name="hearth">582</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY29_2']/@hearth">
        <xsl:attribute name="hearth">582</xsl:attribute>
    </xsl:template>
    <!-- Hasuike-han -->
    <!-- Hasuike Nabeshima-shi -->
    <xsl:template match="Settlement[@id='castle_KY26']/@owner">
        <xsl:attribute name='owner'>Faction.clan_ryuzoji_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY26']/@name">
        <xsl:attribute name='name'>{=lJKoL9IH}Hasuike Jin'ya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY26']/@culture">
        <xsl:attribute name='culture'>Culture.saga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY26_1']/@culture">
        <xsl:attribute name='culture'>Culture.saga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY26_2']/@culture">
        <xsl:attribute name='culture'>Culture.saga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY26']/@prosperity">
        <xsl:attribute name="prosperity">1944</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY26_1']/@hearth">
        <xsl:attribute name="hearth">406</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY26_2']/@hearth">
        <xsl:attribute name="hearth">406</xsl:attribute>
    </xsl:template>
    <!-- Ogi-han -->
    <!-- Ogi Nabeshima-shi -->
    <xsl:template match="Settlement[@id='castle_KY27']/@owner">
        <xsl:attribute name='owner'>Faction.clan_b_ogi_nabeshima_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY27']/@name">
        <xsl:attribute name='name'>{=Qhvj6XO9}Ogi Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY27']/@culture">
        <xsl:attribute name='culture'>Culture.saga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY27_1']/@culture">
        <xsl:attribute name='culture'>Culture.saga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY27_2']/@culture">
        <xsl:attribute name='culture'>Culture.saga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY27']/@prosperity">
        <xsl:attribute name="prosperity">2094</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY27_1']/@hearth">
        <xsl:attribute name="hearth">600</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY27_2']/@hearth">
        <xsl:attribute name="hearth">600</xsl:attribute>
    </xsl:template>
    <!-- Kashima-han -->
    <!-- Kashima Nabeshima-shi -->
    <xsl:template match="Settlement[@id='castle_KY30']/@owner">
        <xsl:attribute name='owner'>Faction.clan_b_kashima_nabeshima_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY30']/@name">
        <xsl:attribute name='name'>{=40woqJi6}Kashima Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY30']/@culture">
        <xsl:attribute name='culture'>Culture.saga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY30_1']/@culture">
        <xsl:attribute name='culture'>Culture.saga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY30_2']/@culture">
        <xsl:attribute name='culture'>Culture.saga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY30']/@prosperity">
        <xsl:attribute name="prosperity">1459</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY30_1']/@hearth">
        <xsl:attribute name="hearth">150</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY30_2']/@hearth">
        <xsl:attribute name="hearth">150</xsl:attribute>
    </xsl:template>
    
    <!-- CHUGOKU -->
    <!-- Choshu -->
    <xsl:template match="Settlement[@id='town_CHU2']/@owner">
        <xsl:attribute name='owner'>Faction.clan_mori_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHU2']/@name">
        <xsl:attribute name='name'>{=DvfCu92X}Hagi</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_CHU2']/@prosperity">
        <xsl:attribute name="prosperity">4772</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHU2_1']/@hearth">
        <xsl:attribute name="hearth">776</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHU2_2']/@hearth">
        <xsl:attribute name="hearth">776</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHU2_3']/@hearth">
        <xsl:attribute name="hearth">776</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU2']/@owner">
        <xsl:attribute name='owner'>Faction.clan_mori_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU2']/@name">
        <xsl:attribute name='name'>{=ggBeWjpi}Yamaguchi Jin'ya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHU2']/@prosperity">
        <xsl:attribute name="prosperity">2170</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU2_1']/@hearth">
        <xsl:attribute name="hearth">776</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU2_2']/@hearth">
        <xsl:attribute name="hearth">776</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU3']/@owner">
        <xsl:attribute name='owner'>Faction.clan_b_seigi_ha_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHU3']/@prosperity">
        <xsl:attribute name="prosperity">2170</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU3_1']/@hearth">
        <xsl:attribute name="hearth">776</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU3_2']/@hearth">
        <xsl:attribute name="hearth">776</xsl:attribute>
    </xsl:template>
    <!-- Tokuyama Domain (Choshu) -->
    <xsl:template match="Settlement[@id='castle_CHU4']/@owner">
        <xsl:attribute name='owner'>Faction.clan_kawano_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU4']/@name">
        <xsl:attribute name='name'>{=CKaQktOo}Tokuyama Jin'ya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHU4']/@prosperity">
        <xsl:attribute name="prosperity">1828</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU4_1']/@hearth">
        <xsl:attribute name="hearth">304</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU4_2']/@hearth">
        <xsl:attribute name="hearth">304</xsl:attribute>
    </xsl:template>
    <!-- Chofu Domain (Choshu) -->
    <!-- While they do rule Kushizaki, Shimonoseki is in the area and more important -->
    <xsl:template match="Settlement[@id='town_CHU1']/@owner">
        <xsl:attribute name='owner'>Faction.clan_murakami_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHU1']/@name">
        <xsl:attribute name='name'>{=UvTpCUpH}Shimonoseki</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_CHU1']/@prosperity">
        <xsl:attribute name="prosperity">3370</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHU1_1']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHU1_2']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHU1_3']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>
    <!-- Iwakuni Domain (Choshu) -->
    <xsl:template match="Settlement[@id='castle_CHU5']/@owner">
        <xsl:attribute name='owner'>Faction.clan_yoshimi_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU5']/@name">
        <xsl:attribute name='name'>{=xkmklOPf}Iwakuni Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHU5']/@prosperity">
        <xsl:attribute name="prosperity">2001</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU5_1']/@hearth">
        <xsl:attribute name="hearth">477</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU5_2']/@hearth">
        <xsl:attribute name="hearth">477</xsl:attribute>
    </xsl:template>
    <!-- Kiyosue Domain (Choshu) -->
    <xsl:template match="Settlement[@id='castle_CHU1']/@owner">
        <xsl:attribute name='owner'>Faction.clan_misawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU1']/@name">
        <xsl:attribute name='name'>{=sZfJiRtF}Kiyosue Jin'ya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHU1']/@prosperity">
        <xsl:attribute name="prosperity">1157</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU1_1']/@hearth">
        <xsl:attribute name="hearth">74</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU1_2']/@hearth">
        <xsl:attribute name="hearth">74</xsl:attribute>
    </xsl:template>

    <!-- Matsue Domain -->
    <xsl:template match="Settlement[@id='town_CHU5']/@owner">
        <xsl:attribute name='owner'>Faction.clan_amago_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHU5']/@name">
        <xsl:attribute name='name'>{=5CN8ewVp}Matsue</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHU5']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHU5_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHU5_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHU5_3']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_CHU5']/@prosperity">
        <xsl:attribute name="prosperity">4739</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHU5_1']/@hearth">
        <xsl:attribute name="hearth">863</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHU5_2']/@hearth">
        <xsl:attribute name="hearth">863</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHU5_3']/@hearth">
        <xsl:attribute name="hearth">863</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU9']/@owner">
        <xsl:attribute name='owner'>Faction.clan_yamanaka_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU9']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHU9_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHU9_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHU9']/@prosperity">
        <xsl:attribute name="prosperity">1157</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU9_1']/@hearth">
        <xsl:attribute name="hearth">74</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU9_2']/@hearth">
        <xsl:attribute name="hearth">74</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHU4']/@owner">
        <xsl:attribute name='owner'>Faction.clan_ochi_matsudaira_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHU4']/@name">
        <xsl:attribute name='name'>{=ihU3yZM0}Masuda</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHU4']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHU4_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHU4_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHU4_3']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_CHU4']/@prosperity">
        <xsl:attribute name="prosperity">3610</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHU4_1']/@hearth">
        <xsl:attribute name="hearth">310</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHU4_2']/@hearth">
        <xsl:attribute name="hearth">310</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHU4_3']/@hearth">
        <xsl:attribute name="hearth">310</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_AMA1']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tatsuhara_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_AMA1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_AMA1_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_AMA1_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_AMA1']/@prosperity">
        <xsl:attribute name="prosperity">1682</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_AMA1_1']/@hearth">
        <xsl:attribute name="hearth">224</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_AMA1_2']/@hearth">
        <xsl:attribute name="hearth">224</xsl:attribute>
    </xsl:template>

    <!-- Hiroshima Domain -->
    <xsl:template match="Settlement[@id='castle_CHU7']/@owner">
        <xsl:attribute name='owner'>Faction.clan_uragami_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU7']/@name">
        <xsl:attribute name='name'>{=rQfnY5ul}Hiroshima Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU7']/@culture">
        <xsl:attribute name='culture'>Culture.hiroshima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHU7_1']/@culture">
        <xsl:attribute name='culture'>Culture.hiroshima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHU7_2']/@culture">
        <xsl:attribute name='culture'>Culture.hiroshima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHU7']/@prosperity">
        <xsl:attribute name="prosperity">2142</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU7_1']/@hearth">
        <xsl:attribute name="hearth">626</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU7_2']/@hearth">
        <xsl:attribute name="hearth">626</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHU3']/@owner">
        <xsl:attribute name='owner'>Faction.clan_uragami_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHU3']/@name">
        <xsl:attribute name='name'>{=NSAkQv1M}Yoshida Jin'ya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHU3']/@culture">
        <xsl:attribute name='culture'>Culture.hiroshima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHU3_1']/@culture">
        <xsl:attribute name='culture'>Culture.hiroshima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHU3_2']/@culture">
        <xsl:attribute name='culture'>Culture.hiroshima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHU3_3']/@culture">
        <xsl:attribute name='culture'>Culture.hiroshima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_CHU3']/@prosperity">
        <xsl:attribute name="prosperity">4711</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHU3_1']/@hearth">
        <xsl:attribute name="hearth">626</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHU3_2']/@hearth">
        <xsl:attribute name="hearth">626</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHU3_3']/@hearth">
        <xsl:attribute name="hearth">626</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU13']/@owner">
        <xsl:attribute name='owner'>Faction.clan_uragami_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU13']/@culture">
        <xsl:attribute name='culture'>Culture.hiroshima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHU13_1']/@culture">
        <xsl:attribute name='culture'>Culture.hiroshima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHU13_2']/@culture">
        <xsl:attribute name='culture'>Culture.hiroshima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHU13']/@prosperity">
        <xsl:attribute name="prosperity">2142</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU13_1']/@hearth">
        <xsl:attribute name="hearth">626</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU13_2']/@hearth">
        <xsl:attribute name="hearth">626</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU8']/@owner">
        <xsl:attribute name='owner'>Faction.clan_uragami_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU8']/@culture">
        <xsl:attribute name='culture'>Culture.hiroshima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHU8_1']/@culture">
        <xsl:attribute name='culture'>Culture.hiroshima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHU8_2']/@culture">
        <xsl:attribute name='culture'>Culture.hiroshima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHU8']/@prosperity">
        <xsl:attribute name="prosperity">2142</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU8_1']/@hearth">
        <xsl:attribute name="hearth">626</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU8_2']/@hearth">
        <xsl:attribute name="hearth">626</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU11']/@owner">
        <xsl:attribute name='owner'>Faction.clan_ukita_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU11']/@name">
        <xsl:attribute name='name'>{=D2EylgG7}Mihara Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU11']/@culture">
        <xsl:attribute name='culture'>Culture.hiroshima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHU11_1']/@culture">
        <xsl:attribute name='culture'>Culture.hiroshima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHU11_2']/@culture">
        <xsl:attribute name='culture'>Culture.hiroshima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHU11']/@prosperity">
        <xsl:attribute name="prosperity">1682</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU11_1']/@hearth">
        <xsl:attribute name="hearth">224</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU11_2']/@hearth">
        <xsl:attribute name="hearth">224</xsl:attribute>
    </xsl:template>
    <!-- To east of Yoshida not west -->
    <xsl:template match="Settlement[@id='castle_CHU6']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tojo_asano_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU6']/@name">
        <xsl:attribute name='name'>{=9iUfpjzA}Shobara</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU6']/@culture">
        <xsl:attribute name='culture'>Culture.hiroshima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHU6_1']/@culture">
        <xsl:attribute name='culture'>Culture.hiroshima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHU6_2']/@culture">
        <xsl:attribute name='culture'>Culture.hiroshima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHU6']/@prosperity">
        <xsl:attribute name="prosperity">1157</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU6_1']/@hearth">
        <xsl:attribute name="hearth">74</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU6_2']/@hearth">
        <xsl:attribute name="hearth">74</xsl:attribute>
    </xsl:template>
    <!-- Not historical, the Ueda held no land -->
    <xsl:template match="Settlement[@id='castle_CHU12']/@owner">
        <xsl:attribute name='owner'>Faction.clan_akashi_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU12']/@culture">
        <xsl:attribute name='culture'>Culture.hiroshima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHU12_1']/@culture">
        <xsl:attribute name='culture'>Culture.hiroshima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHU12_2']/@culture">
        <xsl:attribute name='culture'>Culture.hiroshima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHU12']/@prosperity">
        <xsl:attribute name="prosperity">1459</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU12_1']/@hearth">
        <xsl:attribute name="hearth">626</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU12_2']/@hearth">
        <xsl:attribute name="hearth">626</xsl:attribute>
    </xsl:template>

    <!-- Tottori Domain ruled by Tottori Ikeda -->
    <!-- Ikeda-shi -->
    <xsl:template match="Settlement[@id='castle_KIN3']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tamura_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN3']/@name">
        <xsl:attribute name='name'>{=b5ROKqKn}Tottori Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN3']/@culture">
        <xsl:attribute name='culture'>Culture.tottori</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN3_1']/@culture">
        <xsl:attribute name='culture'>Culture.tottori</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN3_2']/@culture">
        <xsl:attribute name='culture'>Culture.tottori</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KIN3']/@prosperity">
        <xsl:attribute name="prosperity">2368</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN3_1']/@hearth">
        <xsl:attribute name="hearth">800</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN3_2']/@hearth">
        <xsl:attribute name="hearth">800</xsl:attribute>
    </xsl:template>
    <!-- Arao-shi -->
    <xsl:template match="Settlement[@id='castle_CHU16']/@owner">
        <xsl:attribute name='owner'>Faction.clan_okada_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU16']/@name">
        <xsl:attribute name='name'>{=6ccxu05w}Yonago Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU16']/@culture">
        <xsl:attribute name='culture'>Culture.tottori</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHU16_1']/@culture">
        <xsl:attribute name='culture'>Culture.tottori</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHU16_2']/@culture">
        <xsl:attribute name='culture'>Culture.tottori</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHU16']/@prosperity">
        <xsl:attribute name="prosperity">2368</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU16_1']/@hearth">
        <xsl:attribute name="hearth">800</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU16_2']/@hearth">
        <xsl:attribute name="hearth">800</xsl:attribute>
    </xsl:template>

    <!-- Himeji-han -->
    <!-- Sakai-shi -->
    <xsl:template match="Settlement[@id='town_KIN1']/@owner">
        <xsl:attribute name='owner'>Faction.clan_takeda_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KIN1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KIN1_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KIN1_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KIN1_3']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_KIN1']/@prosperity">
        <xsl:attribute name="prosperity">4179</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KIN1_1']/@hearth">
        <xsl:attribute name="hearth">477</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KIN1_2']/@hearth">
        <xsl:attribute name="hearth">477</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KIN1_3']/@hearth">
        <xsl:attribute name="hearth">477</xsl:attribute>
    </xsl:template>
    <!-- Kawai-shi -->
    <xsl:template match="Settlement[@id='castle_KIN5']/@owner">
        <xsl:attribute name='owner'>Faction.clan_baba_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN5']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN5_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN5_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KIN5']/@prosperity">
        <xsl:attribute name="prosperity">1900</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN5_1']/@hearth">
        <xsl:attribute name="hearth">477</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN5_2']/@hearth">
        <xsl:attribute name="hearth">477</xsl:attribute>
    </xsl:template>

    <!-- Hikone-han -->
    <!-- Ii-shi -->
    <xsl:template match="Settlement[@id='castle_KIN10']/@owner">
        <xsl:attribute name='owner'>Faction.clan_ii_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN10']/@name">
        <xsl:attribute name='name'>{=XqDclA04}Hikone Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN10']/@culture">
        <xsl:attribute name='culture'>Culture.hikone</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN10_1']/@culture">
        <xsl:attribute name='culture'>Culture.hikone</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN10_2']/@culture">
        <xsl:attribute name='culture'>Culture.hikone</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KIN10']/@prosperity">
        <xsl:attribute name="prosperity">2085</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN10_1']/@hearth">
        <xsl:attribute name="hearth">707</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN10_2']/@hearth">
        <xsl:attribute name="hearth">707</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KIN7']/@owner">
        <xsl:attribute name='owner'>Faction.clan_ii_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KIN7']/@name">
        <xsl:attribute name='name'>{=RL5Xo8fq}Nagahama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KIN7']/@culture">
        <xsl:attribute name='culture'>Culture.hikone</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KIN7_1']/@culture">
        <xsl:attribute name='culture'>Culture.hikone</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KIN7_2']/@culture">
        <xsl:attribute name='culture'>Culture.hikone</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KIN7_3']/@culture">
        <xsl:attribute name='culture'>Culture.hikone</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_KIN7']/@prosperity">
        <xsl:attribute name="prosperity">4587</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KIN7_1']/@hearth">
        <xsl:attribute name="hearth">707</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KIN7_2']/@hearth">
        <xsl:attribute name="hearth">707</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KIN7_3']/@hearth">
        <xsl:attribute name="hearth">707</xsl:attribute>
    </xsl:template>

    <!-- TOHOKU -->
    <!-- Morioka -->
    <xsl:template match="Settlement[@id='castle_TOHO25']/@owner">
        <xsl:attribute name='owner'>Faction.clan_nanbu_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO25']/@name">
        <xsl:attribute name='name'>{=2UZWHWxt}Morioka Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO25']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO25_1']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO25_2']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO25']/@prosperity">
        <xsl:attribute name="prosperity">1907</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO25_1']/@hearth">
        <xsl:attribute name="hearth">230</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO25_2']/@hearth">
        <xsl:attribute name="hearth">230</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_TOHO7']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_TOHO7_1']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_TOHO7_2']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_TOHO7_3']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_TOHO7']/@prosperity">
        <xsl:attribute name="prosperity">4194</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_TOHO7_1']/@hearth">
        <xsl:attribute name="hearth">230</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_TOHO7_2']/@hearth">
        <xsl:attribute name="hearth">230</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_TOHO7_3']/@hearth">
        <xsl:attribute name="hearth">230</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO23']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO23_1']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO23_2']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO23']/@prosperity">
        <xsl:attribute name="prosperity">255</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO23_1']/@hearth">
        <xsl:attribute name="hearth">230</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO23_2']/@hearth">
        <xsl:attribute name="hearth">230</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO24']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO24_1']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO24_2']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO24']/@prosperity">
        <xsl:attribute name="prosperity">1907</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO24_1']/@hearth">
        <xsl:attribute name="hearth">230</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO24_2']/@hearth">
        <xsl:attribute name="hearth">230</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO29']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO29_1']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO29_2']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO29']/@prosperity">
        <xsl:attribute name="prosperity">479</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO29_1']/@hearth">
        <xsl:attribute name="hearth">230</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO29_2']/@hearth">
        <xsl:attribute name="hearth">230</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO30']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO30_1']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO30_2']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO30']/@prosperity">
        <xsl:attribute name="prosperity">479</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO30_1']/@hearth">
        <xsl:attribute name="hearth">230</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO30_2']/@hearth">
        <xsl:attribute name="hearth">230</xsl:attribute>
    </xsl:template>
    <!-- Hachinohe-han (Morioka) -->
    <xsl:template match="Settlement[@id='castle_TOHO31']/@name">
        <xsl:attribute name='name'>{=4gUUbuqA}Hachinohe Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO31']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO31_1']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO31_2']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO31']/@prosperity">
        <xsl:attribute name="prosperity">1157</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO31_1']/@hearth">
        <xsl:attribute name="hearth">74</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO31_2']/@hearth">
        <xsl:attribute name="hearth">74</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO35']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO35_1']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO35_2']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO35']/@prosperity">
        <xsl:attribute name="prosperity">1157</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO35_1']/@hearth">
        <xsl:attribute name="hearth">74</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO35_2']/@hearth">
        <xsl:attribute name="hearth">74</xsl:attribute>
    </xsl:template>
    <!-- Shichinohe-han (Morioka) -->
    <xsl:template match="Settlement[@id='castle_TOHO32']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO32_1']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO32_2']/@culture">
        <xsl:attribute name='culture'>Culture.morioka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO32']/@prosperity">
        <xsl:attribute name="prosperity">1157</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO32_1']/@hearth">
        <xsl:attribute name="hearth">74</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO32_2']/@hearth">
        <xsl:attribute name="hearth">74</xsl:attribute>
    </xsl:template>

    <!-- Hirosaki-han -->
    <xsl:template match="Settlement[@id='castle_TOHO33']/@owner">
        <xsl:attribute name='owner'>Faction.clan_oura_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO33']/@name">
        <xsl:attribute name='name'>{=fVzszw07}Hirosaki Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO33']/@culture">
        <xsl:attribute name='culture'>Culture.hirosaki</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO33_1']/@culture">
        <xsl:attribute name='culture'>Culture.hirosaki</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO33_2']/@culture">
        <xsl:attribute name='culture'>Culture.hirosaki</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO33']/@prosperity">
        <xsl:attribute name="prosperity">1704</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO33_1']/@hearth">
        <xsl:attribute name="hearth">304</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO33_2']/@hearth">
        <xsl:attribute name="hearth">304</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_TOHO8']/@owner">
        <xsl:attribute name='owner'>Faction.clan_oura_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_TOHO8']/@culture">
        <xsl:attribute name='culture'>Culture.hirosaki</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_TOHO8_1']/@culture">
        <xsl:attribute name='culture'>Culture.hirosaki</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_TOHO8_2']/@culture">
        <xsl:attribute name='culture'>Culture.hirosaki</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_TOHO8_3']/@culture">
        <xsl:attribute name='culture'>Culture.hirosaki</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_TOHO8']/@prosperity">
        <xsl:attribute name="prosperity">3748</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_TOHO8_1']/@hearth">
        <xsl:attribute name="hearth">304</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_TOHO8_2']/@hearth">
        <xsl:attribute name="hearth">304</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_TOHO8_3']/@hearth">
        <xsl:attribute name="hearth">304</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO34']/@owner">
        <xsl:attribute name='owner'>Faction.clan_asari_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO34']/@name">
        <xsl:attribute name='name'>{=FHNWihyd}Kuroishi Jin'ya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO34']/@culture">
        <xsl:attribute name='culture'>Culture.hirosaki</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO34_1']/@culture">
        <xsl:attribute name='culture'>Culture.hirosaki</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO34_2']/@culture">
        <xsl:attribute name='culture'>Culture.hirosaki</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO34']/@prosperity">
        <xsl:attribute name="prosperity">1157</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO34_1']/@hearth">
        <xsl:attribute name="hearth">74</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO34_2']/@hearth">
        <xsl:attribute name="hearth">74</xsl:attribute>
    </xsl:template>

    <!-- Akita/Kubota-han -->
    <xsl:template match="Settlement[@id='town_TOHO6']/@owner">
        <xsl:attribute name='owner'>Faction.clan_satake_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_TOHO6']/@name">
        <xsl:attribute name='name'>{=KGp4U6ZT}Kubota</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_TOHO6']/@culture">
        <xsl:attribute name='culture'>Culture.akita</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_TOHO6_1']/@culture">
        <xsl:attribute name='culture'>Culture.akita</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_TOHO6_2']/@culture">
        <xsl:attribute name='culture'>Culture.akita</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_TOHO6_3']/@culture">
        <xsl:attribute name='culture'>Culture.akita</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_TOHO6']/@prosperity">
        <xsl:attribute name="prosperity">4565</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_TOHO6_1']/@hearth">
        <xsl:attribute name="hearth">312</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_TOHO6_2']/@hearth">
        <xsl:attribute name="hearth">312</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_TOHO6_3']/@hearth">
        <xsl:attribute name="hearth">312</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO28']/@owner">
        <xsl:attribute name='owner'>Faction.clan_satake_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO28']/@culture">
        <xsl:attribute name='culture'>Culture.akita</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO28_1']/@culture">
        <xsl:attribute name='culture'>Culture.akita</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO28_2']/@culture">
        <xsl:attribute name='culture'>Culture.akita</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO28']/@prosperity">
        <xsl:attribute name="prosperity">2076</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO28_1']/@hearth">
        <xsl:attribute name="hearth">312</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO28_2']/@hearth">
        <xsl:attribute name="hearth">312</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO27']/@owner">
        <xsl:attribute name='owner'>Faction.clan_daijo_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO27']/@culture">
        <xsl:attribute name='culture'>Culture.akita</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO27_1']/@culture">
        <xsl:attribute name='culture'>Culture.akita</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO27_2']/@culture">
        <xsl:attribute name='culture'>Culture.akita</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO27']/@prosperity">
        <xsl:attribute name="prosperity">740</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO27_1']/@hearth">
        <xsl:attribute name="hearth">312</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO27_2']/@hearth">
        <xsl:attribute name="hearth">312</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO26']/@owner">
        <xsl:attribute name='owner'>Faction.clan_edo_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO26']/@culture">
        <xsl:attribute name='culture'>Culture.akita</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO26_1']/@culture">
        <xsl:attribute name='culture'>Culture.akita</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO26_2']/@culture">
        <xsl:attribute name='culture'>Culture.akita</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO26']/@prosperity">
        <xsl:attribute name="prosperity">1157</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO26_1']/@hearth">
        <xsl:attribute name="hearth">312</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO26_2']/@hearth">
        <xsl:attribute name="hearth">312</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO21']/@owner">
        <xsl:attribute name='owner'>Faction.clan_kashima_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO21']/@name">
        <xsl:attribute name='name'>{=Euog4rMA}Yuzawa Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO21']/@culture">
        <xsl:attribute name='culture'>Culture.akita</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO21_1']/@culture">
        <xsl:attribute name='culture'>Culture.akita</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO21_2']/@culture">
        <xsl:attribute name='culture'>Culture.akita</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO21']/@prosperity">
        <xsl:attribute name="prosperity">1157</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO21_1']/@hearth">
        <xsl:attribute name="hearth">312</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO21_2']/@hearth">
        <xsl:attribute name="hearth">312</xsl:attribute>
    </xsl:template>
    <!-- Kameda-han subdomain -->
    <xsl:template match="Settlement[@id='castle_TOHO19']/@owner">
        <xsl:attribute name='owner'>Faction.clan_nasu_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO19']/@name">
        <xsl:attribute name='name'>{=RDni1NjO}Kameda Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO19']/@culture">
        <xsl:attribute name='culture'>Culture.akita</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO19_1']/@culture">
        <xsl:attribute name='culture'>Culture.akita</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO19_2']/@culture">
        <xsl:attribute name='culture'>Culture.akita</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO19']/@prosperity">
        <xsl:attribute name="prosperity">1459</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO19_1']/@hearth">
        <xsl:attribute name="hearth">148</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO19_2']/@hearth">
        <xsl:attribute name="hearth">148</xsl:attribute>
    </xsl:template>

    <!-- Shonai-han (Main branch of Sakai, also clan of Bakufu) -->
    <xsl:template match="Settlement[@id='town_TOHO5']/@owner">
        <xsl:attribute name='owner'>Faction.clan_daihoji_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_TOHO5']/@name">
        <xsl:attribute name='name'>{=iIBfwKXU}Tsurugaoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_TOHO5']/@culture">
        <xsl:attribute name='culture'>Culture.shonai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_TOHO5_1']/@culture">
        <xsl:attribute name='culture'>Culture.shonai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_TOHO5_2']/@culture">
        <xsl:attribute name='culture'>Culture.shonai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_TOHO5_3']/@culture">
        <xsl:attribute name='culture'>Culture.shonai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_TOHO5']/@prosperity">
        <xsl:attribute name="prosperity">4279</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_TOHO5_1']/@hearth">
        <xsl:attribute name="hearth">369</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_TOHO5_2']/@hearth">
        <xsl:attribute name="hearth">369</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_TOHO5_3']/@hearth">
        <xsl:attribute name="hearth">369</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO17']/@owner">
        <xsl:attribute name='owner'>Faction.clan_daihoji_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO17']/@culture">
        <xsl:attribute name='culture'>Culture.shonai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO17_1']/@culture">
        <xsl:attribute name='culture'>Culture.shonai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO17_2']/@culture">
        <xsl:attribute name='culture'>Culture.shonai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO17']/@prosperity">
        <xsl:attribute name="prosperity">1946</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO17_1']/@hearth">
        <xsl:attribute name="hearth">369</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO17_2']/@hearth">
        <xsl:attribute name="hearth">369</xsl:attribute>
    </xsl:template>
    <!-- Locations entirely off, way closer to Tsurugaoka and
        only a bit to the north of them, but we use what we've got -->
    <xsl:template match="Settlement[@id='castle_TOHO20']/@owner">
        <xsl:attribute name='owner'>Faction.clan_onodera_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO20']/@name">
        <xsl:attribute name='name'>{=v3MePHaA}Kamegasaki Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO20']/@culture">
        <xsl:attribute name='culture'>Culture.shonai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO20_1']/@culture">
        <xsl:attribute name='culture'>Culture.shonai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO20_2']/@culture">
        <xsl:attribute name='culture'>Culture.shonai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO20']/@prosperity">
        <xsl:attribute name="prosperity">373</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO20_1']/@hearth">
        <xsl:attribute name="hearth">369</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO20_2']/@hearth">
        <xsl:attribute name="hearth">369</xsl:attribute>
    </xsl:template>
    <!-- Dewa Matsuyama -->
    <xsl:template match="Settlement[@id='castle_TOHO18']/@owner">
        <xsl:attribute name='owner'>Faction.clan_nikaho_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO18']/@name">
        <xsl:attribute name='name'>{=xyaQJs4i}Matsuyama Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO18']/@culture">
        <xsl:attribute name='culture'>Culture.shonai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO18_1']/@culture">
        <xsl:attribute name='culture'>Culture.shonai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO18_2']/@culture">
        <xsl:attribute name='culture'>Culture.shonai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO18']/@prosperity">
        <xsl:attribute name="prosperity">1585</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO18_1']/@hearth">
        <xsl:attribute name="hearth">185</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO18_2']/@hearth">
        <xsl:attribute name="hearth">185</xsl:attribute>
    </xsl:template>

    <!-- Sendai-han -->
    <xsl:template match="Settlement[@id='town_TOHO4']/@owner">
        <xsl:attribute name='owner'>Faction.clan_date_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_TOHO4']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_TOHO4_1']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_TOHO4_2']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_TOHO4_3']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_TOHO4']/@prosperity">
        <xsl:attribute name="prosperity">5304</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_TOHO4_1']/@hearth">
        <xsl:attribute name="hearth">659</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_TOHO4_2']/@hearth">
        <xsl:attribute name="hearth">659</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_TOHO4_3']/@hearth">
        <xsl:attribute name="hearth">659</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO12']/@owner">
        <xsl:attribute name='owner'>Faction.clan_date_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO12']/@name">
        <xsl:attribute name='name'>{=uUTWektF}Sendai Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO12']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO12_1']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO12_2']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO12']/@prosperity">
        <xsl:attribute name="prosperity">2412</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO12_1']/@hearth">
        <xsl:attribute name="hearth">659</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO12_2']/@hearth">
        <xsl:attribute name="hearth">659</xsl:attribute>
    </xsl:template>
    <!-- Watari Date -->
    <xsl:template match="Settlement[@id='castle_TOHO10']/@owner">
        <xsl:attribute name='owner'>Faction.clan_osaki_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO10']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='No results']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO10_2']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO10']/@prosperity">
        <xsl:attribute name="prosperity">1571</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO10_1']/@hearth">
        <xsl:attribute name="hearth">659</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO10_2']/@hearth">
        <xsl:attribute name="hearth">659</xsl:attribute>
    </xsl:template>
    <!-- Tome Date -->
    <xsl:template match="Settlement[@id='castle_TOHO16']/@name">
        <xsl:attribute name='name'>{=KySQHYm3}Tome Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO16']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO16_1']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO16_2']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO16']/@prosperity">
        <xsl:attribute name="prosperity">1459</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO16_1']/@hearth">
        <xsl:attribute name="hearth">659</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO16_2']/@hearth">
        <xsl:attribute name="hearth">659</xsl:attribute>
    </xsl:template>
    <!-- Wakuya Date -->
    <xsl:template match="Settlement[@id='castle_TOHO13']/@owner">
        <xsl:attribute name='owner'>Faction.clan_watari_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO13']/@name">
        <xsl:attribute name='name'>{=iB14AOiv}Wakuya Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO13']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO13_1']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO13_2']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO13']/@prosperity">
        <xsl:attribute name="prosperity">1530</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO13_1']/@hearth">
        <xsl:attribute name="hearth">659</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO13_2']/@hearth">
        <xsl:attribute name="hearth">659</xsl:attribute>
    </xsl:template>
    <!-- Mizusawa Date -->
    <xsl:template match="Settlement[@id='castle_TOHO22']/@owner">
        <xsl:attribute name='owner'>Faction.clan_rusu_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO22']/@name">
        <xsl:attribute name='name'>{=P9LlpXym}Mizusawa Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO22']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO22_1']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO22_2']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO22']/@prosperity">
        <xsl:attribute name="prosperity">1332</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO22_1']/@hearth">
        <xsl:attribute name="hearth">659</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO22_2']/@hearth">
        <xsl:attribute name="hearth">659</xsl:attribute>
    </xsl:template>
    <!-- Iwadeyama Date -->
    <xsl:template match="Settlement[@id='castle_TOHO14']/@owner">
        <xsl:attribute name='owner'>Faction.clan_iwaki_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO14']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO14_1']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO14_2']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO14']/@prosperity">
        <xsl:attribute name="prosperity">1273</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO14_1']/@hearth">
        <xsl:attribute name="hearth">659</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO14_2']/@hearth">
        <xsl:attribute name="hearth">659</xsl:attribute>
    </xsl:template>
    <!-- Ichinoseki-han -->
    <xsl:template match="Settlement[@id='castle_TOHO15']/@owner">
        <xsl:attribute name='owner'>Faction.clan_oniniwa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO15']/@name">
        <xsl:attribute name='name'>{=eehsgWjf}Ichinoseki Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO15']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO15_1']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO15_2']/@culture">
        <xsl:attribute name='culture'>Culture.sendai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO15']/@prosperity">
        <xsl:attribute name="prosperity">1682</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO15_1']/@hearth">
        <xsl:attribute name="hearth">224</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO15_2']/@hearth">
        <xsl:attribute name="hearth">224</xsl:attribute>
    </xsl:template>

    <!-- Aizu-han -->
    <xsl:template match="Settlement[@id='town_TOHO1']/@owner">
        <xsl:attribute name='owner'>Faction.clan_ashina_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_TOHO1']/@name">
        <xsl:attribute name='name'>{=5avzU4Vd}Aizu Wakamatsu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_TOHO1']/@culture">
        <xsl:attribute name='culture'>Culture.ou</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_TOHO1_1']/@culture">
        <xsl:attribute name='culture'>Culture.ou</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_TOHO1_2']/@culture">
        <xsl:attribute name='culture'>Culture.ou</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_TOHO1_3']/@culture">
        <xsl:attribute name='culture'>Culture.ou</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_TOHO1']/@prosperity">
        <xsl:attribute name="prosperity">4511</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_TOHO1_1']/@hearth">
        <xsl:attribute name="hearth">640</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_TOHO1_2']/@hearth">
        <xsl:attribute name="hearth">640</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_TOHO1_3']/@hearth">
        <xsl:attribute name="hearth">640</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO1']/@owner">
        <xsl:attribute name='owner'>Faction.clan_inawashiro_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO1']/@culture">
        <xsl:attribute name='culture'>Culture.ou</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO1_1']/@culture">
        <xsl:attribute name='culture'>Culture.ou</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO1_2']/@culture">
        <xsl:attribute name='culture'>Culture.ou</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO1']/@prosperity">
        <xsl:attribute name="prosperity">2051</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO1_1']/@hearth">
        <xsl:attribute name="hearth">640</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO1_2']/@hearth">
        <xsl:attribute name="hearth">640</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO2']/@owner">
        <xsl:attribute name='owner'>Faction.clan_saze_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO2']/@culture">
        <xsl:attribute name='culture'>Culture.ou</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO2_1']/@culture">
        <xsl:attribute name='culture'>Culture.ou</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO2_2']/@culture">
        <xsl:attribute name='culture'>Culture.ou</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO2']/@prosperity">
        <xsl:attribute name="prosperity">2051</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO2_1']/@hearth">
        <xsl:attribute name="hearth">640</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO2_2']/@hearth">
        <xsl:attribute name="hearth">640</xsl:attribute>
    </xsl:template>

    <!-- CHUBU -->
    <!-- Ou Reppan Domei, Northern Alliance -->
    <!-- Yonezawa-han -->
    <!-- Uesugi-shi -->
    <xsl:template match="Settlement[@id='town_TOHO2']/@owner">
        <xsl:attribute name='owner'>Faction.clan_uesugi_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_TOHO2']/@culture">
        <xsl:attribute name='culture'>Culture.yonezawa</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_TOHO2_1']/@culture">
        <xsl:attribute name='culture'>Culture.yonezawa</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_TOHO2_2']/@culture">
        <xsl:attribute name='culture'>Culture.yonezawa</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_TOHO2_3']/@culture">
        <xsl:attribute name='culture'>Culture.yonezawa</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_TOHO2']/@prosperity">
        <xsl:attribute name="prosperity">4709</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_TOHO2_1']/@hearth">
        <xsl:attribute name="hearth">845</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_TOHO2_2']/@hearth">
        <xsl:attribute name="hearth">845</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_TOHO2_3']/@hearth">
        <xsl:attribute name="hearth">845</xsl:attribute>
    </xsl:template>
    <!-- Mineyama-han -->
    <!-- Makino-shi -->
    <xsl:template match="Settlement[@id='castle_CHUB11']/@owner">
        <xsl:attribute name='owner'>Faction.clan_irobe_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB11']/@name">
        <xsl:attribute name='name'>{=HwZEw9mI}Mineyama Jin'ya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB11']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB11_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB11_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB11']/@prosperity">
        <xsl:attribute name="prosperity">1188</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB11_1']/@hearth">
        <xsl:attribute name="hearth">81</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB11_2']/@hearth">
        <xsl:attribute name="hearth">81</xsl:attribute>
    </xsl:template>
    <!-- Murakami-han -->
    <!-- Naito-shi Nobunari-ke -->
    <xsl:template match="Settlement[@id='castle_CHUB12']/@owner">
        <xsl:attribute name='owner'>Faction.clan_kakizaki_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB12']/@name">
        <xsl:attribute name='name'>{=BSK7ThAp}Murakami Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB12']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB12_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB12_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB12']/@prosperity">
        <xsl:attribute name="prosperity">1928</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB12_1']/@hearth">
        <xsl:attribute name="hearth">389</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB12_2']/@hearth">
        <xsl:attribute name="hearth">389</xsl:attribute>
    </xsl:template>
    <!-- Yamagata-han -->
    <!-- Mizuno-shi -->
    <xsl:template match="Settlement[@id='town_TOHO3']/@owner">
        <xsl:attribute name='owner'>Faction.clan_jinbo_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_TOHO3']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_TOHO3_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_TOHO3_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_TOHO3_3']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_TOHO3']/@prosperity">
        <xsl:attribute name="prosperity">3370</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_TOHO3_1']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_TOHO3_2']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_TOHO3_3']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>
    <!-- Tendo-han-->
    <!-- Oda-shi -->
    <xsl:template match="Settlement[@id='castle_TOHO11']/@owner">
        <xsl:attribute name='owner'>Faction.clan_shibata_2</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO11']/@culture">
        <xsl:attribute name='culture'>Culture.tosan</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO11_1']/@culture">
        <xsl:attribute name='culture'>Culture.tosan</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO11_2']/@culture">
        <xsl:attribute name='culture'>Culture.tosan</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO11']/@prosperity">
        <xsl:attribute name="prosperity">1459</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO11_1']/@hearth">
        <xsl:attribute name="hearth">148</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO11_2']/@hearth">
        <xsl:attribute name="hearth">148</xsl:attribute>
    </xsl:template>
    <!-- Soma Nakamura-han -->
    <!-- Soma-shi -->
    <xsl:template match="Settlement[@id='castle_TOHO8']/@owner">
        <xsl:attribute name='owner'>Faction.clan_soma_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO8']/@culture">
        <xsl:attribute name='culture'>Culture.tosan</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO8_1']/@culture">
        <xsl:attribute name='culture'>Culture.tosan</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO8_2']/@culture">
        <xsl:attribute name='culture'>Culture.tosan</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO8']/@prosperity">
        <xsl:attribute name="prosperity">2001</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO8_1']/@hearth">
        <xsl:attribute name="hearth">477</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO8_2']/@hearth">
        <xsl:attribute name="hearth">477</xsl:attribute>
    </xsl:template>
    <!-- Nihonmatsu-han -->
    <!-- Niwa-shi -->
    <xsl:template match="Settlement[@id='castle_TOHO3']/@owner">
        <xsl:attribute name='owner'>Faction.clan_nihonmatsu_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO3']/@culture">
        <xsl:attribute name='culture'>Culture.tosan</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO3_1']/@culture">
        <xsl:attribute name='culture'>Culture.tosan</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO3_2']/@culture">
        <xsl:attribute name='culture'>Culture.tosan</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO3']/@prosperity">
        <xsl:attribute name="prosperity">1931</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO3_1']/@hearth">
        <xsl:attribute name="hearth">392</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO3_2']/@hearth">
        <xsl:attribute name="hearth">392</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO7']/@owner">
        <xsl:attribute name='owner'>Faction.clan_nihonmatsu_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO7']/@culture">
        <xsl:attribute name='culture'>Culture.tosan</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO7_1']/@culture">
        <xsl:attribute name='culture'>Culture.tosan</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO7_2']/@culture">
        <xsl:attribute name='culture'>Culture.tosan</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO7']/@prosperity">
        <xsl:attribute name="prosperity">1931</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO7_1']/@hearth">
        <xsl:attribute name="hearth">392</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO7_2']/@hearth">
        <xsl:attribute name="hearth">392</xsl:attribute>
    </xsl:template>
    <!-- Yunagaya-han -->
    <!-- Naito-shi Mikawa-ke -->
    <xsl:template match="Settlement[@id='castle_TOHO6']/@owner">
        <xsl:attribute name='owner'>Faction.clan_naoe_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO6']/@name">
        <xsl:attribute name='name'>{=YYwosnpB}Yunagaya Jin'ya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO6']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO6_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO6_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO6']/@prosperity">
        <xsl:attribute name="prosperity">1288</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO6_1']/@hearth">
        <xsl:attribute name="hearth">111</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO6_2']/@hearth">
        <xsl:attribute name="hearth">111</xsl:attribute>
    </xsl:template>

    <!-- Fukushima-han -->
    <!-- Not quite right location -->
    <xsl:template match="Settlement[@id='castle_TOHO9']/@owner">
        <xsl:attribute name='owner'>Faction.clan_mogami_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO9']/@name">
        <xsl:attribute name='name'>{=2O1LTj6A}Fukushima Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO9']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO9_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO9_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO9']/@prosperity">
        <xsl:attribute name="prosperity">1157</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO9_1']/@hearth">
        <xsl:attribute name="hearth">74</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO9_2']/@hearth">
        <xsl:attribute name="hearth">74</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO5']/@owner">
        <xsl:attribute name='owner'>Faction.clan_mogami_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO5']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO5_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO5_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO5']/@prosperity">
        <xsl:attribute name="prosperity">1157</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO5_1']/@hearth">
        <xsl:attribute name="hearth">74</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO5_2']/@hearth">
        <xsl:attribute name="hearth">74</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA3']/@owner">
        <xsl:attribute name='owner'>Faction.clan_mogami_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA3']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA3_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA3_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA3']/@prosperity">
        <xsl:attribute name="prosperity">1157</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA3_1']/@hearth">
        <xsl:attribute name="hearth">74</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA3_2']/@hearth">
        <xsl:attribute name="hearth">74</xsl:attribute>
    </xsl:template>

    <!-- Jozai-han -->
    <xsl:template match="Settlement[@id='castle_KA5']/@owner">
        <xsl:attribute name='owner'>Faction.clan_satomi_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA5']/@name">
        <xsl:attribute name='name'>{=CfzXQacm}Manube Jin'ya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA5']/@culture">
        <xsl:attribute name='culture'>Culture.jozai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA5_1']/@culture">
        <xsl:attribute name='culture'>Culture.jozai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA5_2']/@culture">
        <xsl:attribute name='culture'>Culture.jozai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA5']/@prosperity">
        <xsl:attribute name="prosperity">899</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA5_1']/@hearth">
        <xsl:attribute name="hearth">74</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA5_2']/@hearth">
        <xsl:attribute name="hearth">74</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA6']/@owner">
        <xsl:attribute name='owner'>Faction.clan_satomi_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA6']/@culture">
        <xsl:attribute name='culture'>Culture.jozai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA6_1']/@culture">
        <xsl:attribute name='culture'>Culture.jozai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA6_2']/@culture">
        <xsl:attribute name='culture'>Culture.jozai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA6']/@prosperity">
        <xsl:attribute name="prosperity">899</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA6_1']/@hearth">
        <xsl:attribute name="hearth">74</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA6_2']/@hearth">
        <xsl:attribute name="hearth">74</xsl:attribute>
    </xsl:template>

    <!-- Kaga-han -->
    <!-- Maeda-shi -->
    <xsl:template match="Settlement[@id='town_CHUB2']/@owner">
        <xsl:attribute name='owner'>Faction.clan_maeda_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHUB2']/@name">
        <xsl:attribute name='name'>{=6PgvlbUT}Kanazawa</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHUB2']/@culture">
        <xsl:attribute name='culture'>Culture.kaga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB2_1']/@culture">
        <xsl:attribute name='culture'>Culture.kaga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB2_2']/@culture">
        <xsl:attribute name='culture'>Culture.kaga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB2_3']/@culture">
        <xsl:attribute name='culture'>Culture.kaga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_CHUB2']/@prosperity">
        <xsl:attribute name="prosperity">5600</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB2_1']/@hearth">
        <xsl:attribute name="hearth">1281</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB2_2']/@hearth">
        <xsl:attribute name="hearth">1281</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB2_3']/@hearth">
        <xsl:attribute name="hearth">1281</xsl:attribute>
    </xsl:template>
    <!-- Honda-shi -->
    <xsl:template match="Settlement[@id='town_CHUB3']/@owner">
        <xsl:attribute name='owner'>Faction.clan_fukuda_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHUB3']/@culture">
        <xsl:attribute name='culture'>Culture.kaga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB3_1']/@culture">
        <xsl:attribute name='culture'>Culture.kaga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB3_2']/@culture">
        <xsl:attribute name='culture'>Culture.kaga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB3_3']/@culture">
        <xsl:attribute name='culture'>Culture.kaga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_CHUB3']/@prosperity">
        <xsl:attribute name="prosperity">3370</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB3_1']/@hearth">
        <xsl:attribute name="hearth">1281</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB3_2']/@hearth">
        <xsl:attribute name="hearth">1281</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB3_3']/@hearth">
        <xsl:attribute name="hearth">1281</xsl:attribute>
    </xsl:template>
    <!-- Cho-shi -->
    <xsl:template match="Settlement[@id='castle_CHUB6']/@owner">
        <xsl:attribute name='owner'>Faction.clan_yoshihiro_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB6']/@culture">
        <xsl:attribute name='culture'>Culture.kaga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB6_1']/@culture">
        <xsl:attribute name='culture'>Culture.kaga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB6_2']/@culture">
        <xsl:attribute name='culture'>Culture.kaga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB6']/@prosperity">
        <xsl:attribute name="prosperity">1732</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB6_1']/@hearth">
        <xsl:attribute name="hearth">1281</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB6_2']/@hearth">
        <xsl:attribute name="hearth">1281</xsl:attribute>
    </xsl:template>
    <!-- Toyama-han -->
    <xsl:template match="Settlement[@id='castle_CHUB5']/@owner">
        <xsl:attribute name='owner'>Faction.clan_b_maeda_toyama_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB5']/@name">
        <xsl:attribute name='name'>{=MXbySYjt}Toyama Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB5']/@culture">
        <xsl:attribute name='culture'>Culture.kaga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB5_1']/@culture">
        <xsl:attribute name='culture'>Culture.kaga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB5_2']/@culture">
        <xsl:attribute name='culture'>Culture.kaga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB5']/@prosperity">
        <xsl:attribute name="prosperity">2328</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB5_1']/@hearth">
        <xsl:attribute name="hearth">930</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB5_2']/@hearth">
        <xsl:attribute name="hearth">930</xsl:attribute>
    </xsl:template>
    <!-- Daishoji-han -->
    <xsl:template match="Settlement[@id='castle_CHUB4']/@owner">
        <xsl:attribute name='owner'>Faction.clan_masaki_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB4']/@name">
        <xsl:attribute name='name'>{=Y7mNSs2D}Daishoji Jin'ya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB4']/@culture">
        <xsl:attribute name='culture'>Culture.kaga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB4_1']/@culture">
        <xsl:attribute name='culture'>Culture.kaga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB4_2']/@culture">
        <xsl:attribute name='culture'>Culture.kaga</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB4']/@prosperity">
        <xsl:attribute name="prosperity">2219</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB4_1']/@hearth">
        <xsl:attribute name="hearth">749</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB4_2']/@hearth">
        <xsl:attribute name="hearth">749</xsl:attribute>
    </xsl:template>

    <!-- Obama-han -->
    <!-- Sakai-shi -->
    <xsl:template match="Settlement[@id='castle_KIN9']/@owner">
        <xsl:attribute name='owner'>Faction.clan_anekouji_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN9']/@name">
        <xsl:attribute name='name'>{=eqwquYnl}Obama Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN9']/@culture">
        <xsl:attribute name='culture'>Culture.obama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN9_1']/@culture">
        <xsl:attribute name='culture'>Culture.obama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN9_2']/@culture">
        <xsl:attribute name='culture'>Culture.obama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KIN9']/@prosperity">
        <xsl:attribute name="prosperity">2231</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN9_1']/@hearth">
        <xsl:attribute name="hearth">767</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN9_2']/@hearth">
        <xsl:attribute name="hearth">767</xsl:attribute>
    </xsl:template>
    <!-- Tsuruga Sakai-shi -->
    <xsl:template match="Settlement[@id='castle_CHUB1']/@owner">
        <xsl:attribute name='owner'>Faction.clan_uchigashima_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB1']/@name">
        <xsl:attribute name='name'>{=HTo81wy6}Tsuruga Jin'ya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB1']/@culture">
        <xsl:attribute name='culture'>Culture.obama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB1_1']/@culture">
        <xsl:attribute name='culture'>Culture.obama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB1_2']/@culture">
        <xsl:attribute name='culture'>Culture.obama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB1']/@prosperity">
        <xsl:attribute name="prosperity">1190</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB1_1']/@hearth">
        <xsl:attribute name="hearth">100</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB1_2']/@hearth">
        <xsl:attribute name="hearth">100</xsl:attribute>
    </xsl:template>

    <!-- Fukui-han -->
    <!-- Yuki Matsudaira-shi -->
    <xsl:template match="Settlement[@id='town_CHUB1']/@owner">
        <xsl:attribute name='owner'>Faction.clan_asakura_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHUB1']/@name">
        <xsl:attribute name='name'>{=VqVNevKA}Fukui</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHUB1']/@culture">
        <xsl:attribute name='culture'>Culture.fukui</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB1_1']/@culture">
        <xsl:attribute name='culture'>Culture.fukui</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB1_2']/@culture">
        <xsl:attribute name='culture'>Culture.fukui</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB1_3']/@culture">
        <xsl:attribute name='culture'>Culture.fukui</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_CHUB1']/@prosperity">
        <xsl:attribute name="prosperity">4880</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB1_1']/@hearth">
        <xsl:attribute name="hearth">580</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB1_2']/@hearth">
        <xsl:attribute name="hearth">580</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB1_3']/@hearth">
        <xsl:attribute name="hearth">580</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB3']/@owner">
        <xsl:attribute name='owner'>Faction.clan_asakura_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB3']/@culture">
        <xsl:attribute name='culture'>Culture.fukui</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB3_1']/@culture">
        <xsl:attribute name='culture'>Culture.fukui</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB3_2']/@culture">
        <xsl:attribute name='culture'>Culture.fukui</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB3']/@prosperity">
        <xsl:attribute name="prosperity">2219</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB3_1']/@hearth">
        <xsl:attribute name="hearth">580</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB3_2']/@hearth">
        <xsl:attribute name="hearth">580</xsl:attribute>
    </xsl:template>
    <!-- Koma-shi -->
    <xsl:template match="Settlement[@id='castle_CHUB28']/@owner">
        <xsl:attribute name='owner'>Faction.clan_mizoe_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB28']/@name">
        <xsl:attribute name='name'>{=d1uSH7Lb}Komayama Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB28']/@culture">
        <xsl:attribute name='culture'>Culture.fukui</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB28_1']/@culture">
        <xsl:attribute name='culture'>Culture.fukui</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB28_2']/@culture">
        <xsl:attribute name='culture'>Culture.fukui</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB28']/@prosperity">
        <xsl:attribute name="prosperity">1288</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB28_1']/@hearth">
        <xsl:attribute name="hearth">580</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB28_2']/@hearth">
        <xsl:attribute name="hearth">580</xsl:attribute>
    </xsl:template>
    <!-- Fukui Honda-shi -->
    <xsl:template match="Settlement[@id='castle_CHUB2']/@owner">
        <xsl:attribute name='owner'>Faction.clan_yamazaki_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB2']/@name">
        <xsl:attribute name='name'>{=bZNGdbFo}Echizen-Fuchu Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB2']/@culture">
        <xsl:attribute name='culture'>Culture.fukui</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB2_1']/@culture">
        <xsl:attribute name='culture'>Culture.fukui</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB2_2']/@culture">
        <xsl:attribute name='culture'>Culture.fukui</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB2']/@prosperity">
        <xsl:attribute name="prosperity">1459</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB2_1']/@hearth">
        <xsl:attribute name="hearth">580</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB2_2']/@hearth">
        <xsl:attribute name="hearth">580</xsl:attribute>
    </xsl:template>

    <!-- Nagaoka-han -->
    <!-- Makino-shi -->
    <xsl:template match="Settlement[@id='castle_CHUB9']/@owner">
        <xsl:attribute name='owner'>Faction.clan_utsunomiya_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB9']/@name">
        <xsl:attribute name='name'>{=fhMckOAE}Nagoaka Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB9']/@culture">
        <xsl:attribute name='culture'>Culture.nagaoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB9_1']/@culture">
        <xsl:attribute name='culture'>Culture.nagaoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB9_2']/@culture">
        <xsl:attribute name='culture'>Culture.nagaoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB9']/@prosperity">
        <xsl:attribute name="prosperity">1384</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB9_1']/@hearth">
        <xsl:attribute name="hearth">150</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB9_2']/@hearth">
        <xsl:attribute name="hearth">150</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA22']/@owner">
        <xsl:attribute name='owner'>Faction.clan_utsunomiya_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA22']/@culture">
        <xsl:attribute name='culture'>Culture.nagaoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA22_1']/@culture">
        <xsl:attribute name='culture'>Culture.nagaoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA22_2']/@culture">
        <xsl:attribute name='culture'>Culture.nagaoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA22']/@prosperity">
        <xsl:attribute name="prosperity">1384</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA22_1']/@hearth">
        <xsl:attribute name="hearth">150</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA22_2']/@hearth">
        <xsl:attribute name="hearth">150</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHUB5']/@owner">
        <xsl:attribute name='owner'>Faction.clan_takahashi_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHUB5']/@culture">
        <xsl:attribute name='culture'>Culture.nagaoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB5_1']/@culture">
        <xsl:attribute name='culture'>Culture.nagaoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB5_2']/@culture">
        <xsl:attribute name='culture'>Culture.nagaoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB5_3']/@culture">
        <xsl:attribute name='culture'>Culture.nagaoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_CHUB5']/@prosperity">
        <xsl:attribute name="prosperity">3045</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB5_1']/@hearth">
        <xsl:attribute name="hearth">201</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB5_2']/@hearth">
        <xsl:attribute name="hearth">201</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB5_3']/@hearth">
        <xsl:attribute name="hearth">201</xsl:attribute>
    </xsl:template>
    <!-- Destroyed at the time -->
    <xsl:template match="Settlement[@id='castle_CHUB13']/@owner">
        <xsl:attribute name='owner'>Faction.clan_haga_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB13']/@culture">
        <xsl:attribute name='culture'>Culture.nagaoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB13_1']/@culture">
        <xsl:attribute name='culture'>Culture.nagaoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB13_2']/@culture">
        <xsl:attribute name='culture'>Culture.nagaoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB13']/@prosperity">
        <xsl:attribute name="prosperity">539</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB13_1']/@hearth">
        <xsl:attribute name="hearth">150</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB13_2']/@hearth">
        <xsl:attribute name="hearth">150</xsl:attribute>
    </xsl:template>

    <!-- SHIKOKU -->
    <!-- Tosa-han -->
    <xsl:template match="Settlement[@id='town_SHI5']/@name">
        <xsl:attribute name='name'>{=BkQ18hKt}Kochi</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_SHI5']/@prosperity">
        <xsl:attribute name="prosperity">3992</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_SHI5_1']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_SHI5_2']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_SHI5_3']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_SHI7']/@owner">
        <xsl:attribute name='owner'>Faction.clan_chosokabe_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_SHI7']/@prosperity">
        <xsl:attribute name="prosperity">1815</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_SHI7_1']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_SHI7_2']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>
    <!-- Inui-shi, technically unlanded -->
    <xsl:template match="Settlement[@id='castle_SHI1']/@owner">
        <xsl:attribute name='owner'>Faction.clan_chosokabe_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_SHI1']/@prosperity">
        <xsl:attribute name="prosperity">1815</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_SHI1_1']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_SHI1_2']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>
    <!-- Goto-shi -->
    <xsl:template match="Settlement[@id='castle_SHI8']/@owner">
        <xsl:attribute name='owner'>Faction.clan_fukudome_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_SHI8']/@prosperity">
        <xsl:attribute name="prosperity">348</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_SHI8_1']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_SHI8_2']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>
    <!-- Iga Yamauchi-shi -->
    <xsl:template match="Settlement[@id='town_SHI1']/@owner">
        <xsl:attribute name='owner'>Faction.clan_kosokabe_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_SHI1']/@name">
        <xsl:attribute name='name'>{=Xycc7oGz}Sukumo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_SHI1']/@prosperity">
        <xsl:attribute name="prosperity">2243</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_SHI1_1']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_SHI1_2']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_SHI1_3']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>
    <!-- Fukao-shi -->
    <xsl:template match="Settlement[@id='castle_SHI5']/@owner">
        <xsl:attribute name='owner'>Faction.clan_kira_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_SHI5']/@name">
        <xsl:attribute name='name'>{=WZE9iw0B}Sagawa Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_SHI5']/@prosperity">
        <xsl:attribute name="prosperity">1157</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_SHI5_1']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_SHI5_2']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>
    <!-- Tosa Shindan-han, technically unlanded -->
    <!-- Azuba Yamauchi-shi -->
    <xsl:template match="Settlement[@id='castle_SHI9']/@owner">
        <xsl:attribute name='owner'>Faction.clan_yoshida_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_SHI9']/@prosperity">
        <xsl:attribute name="prosperity">1815</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_SHI9_1']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_SHI9_2']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>

    <!-- Uwajima-han ruled by Date branch -->
    <xsl:template match="Settlement[@id='town_SHI2']/@owner">
        <xsl:attribute name='owner'>Faction.clan_ichijo_1</xsl:attribute>
    </xsl:template>
    <!-- Technically further west near coast -->
    <xsl:template match="Settlement[@id='town_SHI2']/@name">
        <xsl:attribute name='name'>{=2W7Fq6SK}Uwajima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_SHI2']/@culture">
        <xsl:attribute name='culture'>Culture.uwajima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_SHI2_1']/@culture">
        <xsl:attribute name='culture'>Culture.uwajima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_SHI2_2']/@culture">
        <xsl:attribute name='culture'>Culture.uwajima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_SHI2_3']/@culture">
        <xsl:attribute name='culture'>Culture.uwajima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_SHI2']/@prosperity">
        <xsl:attribute name="prosperity">4149</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_SHI2_1']/@hearth">
        <xsl:attribute name="hearth">538</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_SHI2_2']/@hearth">
        <xsl:attribute name="hearth">538</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_SHI2_3']/@hearth">
        <xsl:attribute name="hearth">538</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_SHI3']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tsuno_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_SHI3']/@name">
        <xsl:attribute name='name'>{=xnMIkc2w}Yoshida Jin'ya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_SHI3']/@culture">
        <xsl:attribute name='culture'>Culture.uwajima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_SHI3_1']/@culture">
        <xsl:attribute name='culture'>Culture.uwajima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_SHI3_2']/@culture">
        <xsl:attribute name='culture'>Culture.uwajima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_SHI3']/@prosperity">
        <xsl:attribute name="prosperity">1682</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_SHI3_1']/@hearth">
        <xsl:attribute name="hearth">224</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_SHI3_2']/@hearth">
        <xsl:attribute name="hearth">224</xsl:attribute>
    </xsl:template>

    <!-- Tokushima-han -->
    <!-- Hachisuka-shi -->
    <xsl:template match="Settlement[@id='town_SHI7']/@owner">
        <xsl:attribute name='owner'>Faction.clan_miyoshi_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_SHI7']/@name">
        <xsl:attribute name='name'>{=0R2n2Ghr}Tokushima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_SHI7']/@culture">
        <xsl:attribute name='culture'>Culture.tokushima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_SHI7_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokushima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_SHI7_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokushima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_SHI7_3']/@culture">
        <xsl:attribute name='culture'>Culture.tokushima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_SHI7']/@prosperity">
        <xsl:attribute name="prosperity">4998</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_SHI7_1']/@hearth">
        <xsl:attribute name="hearth">601</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_SHI7_2']/@hearth">
        <xsl:attribute name="hearth">601</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_SHI7_3']/@hearth">
        <xsl:attribute name="hearth">601</xsl:attribute>
    </xsl:template>
    <!-- Kashima-shi -->
    <xsl:template match="Settlement[@id='castle_SHI11']/@owner">
        <xsl:attribute name='owner'>Faction.clan_shingai_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_SHI11']/@name">
        <xsl:attribute name='name'>{=PaZTWp5t}Ushiki Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_SHI11']/@culture">
        <xsl:attribute name='culture'>Culture.tokushima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_SHI11_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokushima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_SHI11_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokushima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_SHI11']/@prosperity">
        <xsl:attribute name="prosperity">1157</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_SHI11_1']/@hearth">
        <xsl:attribute name="hearth">601</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_SHI11_2']/@hearth">
        <xsl:attribute name="hearth">601</xsl:attribute>
    </xsl:template>
    <!-- Inada-shi -->
    <xsl:template match="Settlement[@id='castle_KIN14']/@owner">
        <xsl:attribute name='owner'>Faction.clan_onishi_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN14']/@culture">
        <xsl:attribute name='culture'>Culture.tokushima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN14_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokushima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN14_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokushima</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KIN14']/@prosperity">
        <xsl:attribute name="prosperity">1261</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN14_1']/@hearth">
        <xsl:attribute name="hearth">601</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN14_2']/@hearth">
        <xsl:attribute name="hearth">601</xsl:attribute>
    </xsl:template>

    <!-- Ozu-han -->
    <xsl:template match="Settlement[@id='castle_SHI2']/@culture">
        <xsl:attribute name='culture'>Culture.ozu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_SHI2_1']/@culture">
        <xsl:attribute name='culture'>Culture.ozu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_SHI2_2']/@culture">
        <xsl:attribute name='culture'>Culture.ozu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_SHI2']/@prosperity">
        <xsl:attribute name="prosperity">2046</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_SHI2_1']/@hearth">
        <xsl:attribute name="hearth">532</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_SHI2_2']/@hearth">
        <xsl:attribute name="hearth">532</xsl:attribute>
    </xsl:template>

    <!-- Iyo-Matsuyama-han -->
    <!-- Hisamatsu Matsudaira-shi -->
    <xsl:template match="Settlement[@id='town_SHI4']/@owner">
        <xsl:attribute name='owner'>Faction.clan_asahina_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_SHI4']/@name">
        <xsl:attribute name='name'>{=buxaDLVS}Matsuyama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_SHI4']/@culture">
        <xsl:attribute name='culture'>Culture.matsuyama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_SHI4_1']/@culture">
        <xsl:attribute name='culture'>Culture.matsuyama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_SHI4_2']/@culture">
        <xsl:attribute name='culture'>Culture.matsuyama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_SHI4_3']/@culture">
        <xsl:attribute name='culture'>Culture.matsuyama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_SHI4']/@prosperity">
        <xsl:attribute name="prosperity">4179</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_SHI4_1']/@hearth">
        <xsl:attribute name="hearth">477</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_SHI4_2']/@hearth">
        <xsl:attribute name="hearth">477</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_SHI4_3']/@hearth">
        <xsl:attribute name="hearth">477</xsl:attribute>
    </xsl:template>
    <!-- Okudaira-shi (unlanded historically) -->
    <xsl:template match="Settlement[@id='castle_CHU10']/@owner">
        <xsl:attribute name='owner'>Faction.clan_okabe_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU10']/@culture">
        <xsl:attribute name='culture'>Culture.matsuyama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHU10_1']/@culture">
        <xsl:attribute name='culture'>Culture.matsuyama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHU10_2']/@culture">
        <xsl:attribute name='culture'>Culture.matsuyama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHU10']/@prosperity">
        <xsl:attribute name="prosperity">1900</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU10_1']/@hearth">
        <xsl:attribute name="hearth">477</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU10_2']/@hearth">
        <xsl:attribute name="hearth">477</xsl:attribute>
    </xsl:template>
    <!-- Imabari-han -->
    <!-- Imabari Matsudaira-shi -->
    <xsl:template match="Settlement[@id='castle_SHI4']/@owner">
        <xsl:attribute name='owner'>Faction.clan_imagawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_SHI4']/@name">
        <xsl:attribute name='name'>{=PLiqyrst}Imabari Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_SHI4']/@culture">
        <xsl:attribute name='culture'>Culture.matsuyama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_SHI4_1']/@culture">
        <xsl:attribute name='culture'>Culture.matsuyama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_SHI4_2']/@culture">
        <xsl:attribute name='culture'>Culture.matsuyama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_SHI4']/@prosperity">
        <xsl:attribute name="prosperity">1762</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_SHI4_1']/@hearth">
        <xsl:attribute name="hearth">264</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_SHI4_2']/@hearth">
        <xsl:attribute name="hearth">264</xsl:attribute>
    </xsl:template>

    <!-- KINKI -->
    <!-- Kishu-han -->
    <!-- Kishu Tokugawa-shi -->
    <xsl:template match="Settlement[@id='castle_KIN13']/@owner">
        <xsl:attribute name='owner'>Faction.clan_hatakeyama_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN13']/@name">
        <xsl:attribute name='name'>{=JHkqe79H}Wakayama Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN13']/@culture">
        <xsl:attribute name='culture'>Culture.kishu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN13_1']/@culture">
        <xsl:attribute name='culture'>Culture.kishu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN13_2']/@culture">
        <xsl:attribute name='culture'>Culture.kishu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KIN13']/@prosperity">
        <xsl:attribute name="prosperity">2308</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN13_1']/@hearth">
        <xsl:attribute name="hearth">667</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN13_2']/@hearth">
        <xsl:attribute name="hearth">667</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN15']/@culture">
        <xsl:attribute name='culture'>Culture.kishu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN15_1']/@culture">
        <xsl:attribute name='culture'>Culture.kishu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN15_2']/@culture">
        <xsl:attribute name='culture'>Culture.kishu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KIN15']/@prosperity">
        <xsl:attribute name="prosperity">2308</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN15_1']/@hearth">
        <xsl:attribute name="hearth">667</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN15_2']/@hearth">
        <xsl:attribute name="hearth">667</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KIN3']/@owner">
        <xsl:attribute name='owner'>Faction.clan_hatakeyama_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KIN3']/@culture">
        <xsl:attribute name='culture'>Culture.kishu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KIN3_1']/@culture">
        <xsl:attribute name='culture'>Culture.kishu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KIN3_2']/@culture">
        <xsl:attribute name='culture'>Culture.kishu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KIN3_3']/@culture">
        <xsl:attribute name='culture'>Culture.kishu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_KIN3']/@prosperity">
        <xsl:attribute name="prosperity">5077</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KIN3_1']/@hearth">
        <xsl:attribute name="hearth">667</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KIN3_2']/@hearth">
        <xsl:attribute name="hearth">667</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KIN3_3']/@hearth">
        <xsl:attribute name="hearth">667</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN24']/@name">
        <xsl:attribute name='name'>{=RmvKSL4R}Tanabe Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN24']/@culture">
        <xsl:attribute name='culture'>Culture.kishu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN24_1']/@culture">
        <xsl:attribute name='culture'>Culture.kishu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN24_2']/@culture">
        <xsl:attribute name='culture'>Culture.kishu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KIN24']/@prosperity">
        <xsl:attribute name="prosperity">1803</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN24_1']/@hearth">
        <xsl:attribute name="hearth">667</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN24_2']/@hearth">
        <xsl:attribute name="hearth">667</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN16']/@owner">
        <xsl:attribute name='owner'>Faction.clan_yasumi_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN16']/@name">
        <xsl:attribute name='name'>{=My5AlIjm}Shingu Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN16']/@culture">
        <xsl:attribute name='culture'>Culture.kishu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN16_1']/@culture">
        <xsl:attribute name='culture'>Culture.kishu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN16_2']/@culture">
        <xsl:attribute name='culture'>Culture.kishu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KIN16']/@prosperity">
        <xsl:attribute name="prosperity">1762</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN16_1']/@hearth">
        <xsl:attribute name="hearth">667</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN16_2']/@hearth">
        <xsl:attribute name="hearth">667</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN17']/@owner">
        <xsl:attribute name='owner'>Faction.clan_cho_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN17']/@name">
        <xsl:attribute name='name'>{=td8qkkz0}Tamaru Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN17']/@culture">
        <xsl:attribute name='culture'>Culture.kishu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN17_1']/@culture">
        <xsl:attribute name='culture'>Culture.kishu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN17_2']/@culture">
        <xsl:attribute name='culture'>Culture.kishu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KIN17']/@prosperity">
        <xsl:attribute name="prosperity">1157</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN17_1']/@hearth">
        <xsl:attribute name="hearth">667</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN17_2']/@hearth">
        <xsl:attribute name="hearth">667</xsl:attribute>
    </xsl:template>
    <!-- Saijo-han (Branch of Kishu) -->
    <xsl:template match="Settlement[@id='castle_SHI6']/@owner">
        <xsl:attribute name='owner'>Faction.clan_notohatakeyama_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_SHI6']/@name">
        <xsl:attribute name='name'>{=mFN2WlLP}Saijo Jin'ya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_SHI6']/@culture">
        <xsl:attribute name='culture'>Culture.kishu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_SHI6_1']/@culture">
        <xsl:attribute name='culture'>Culture.kishu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_SHI6_2']/@culture">
        <xsl:attribute name='culture'>Culture.kishu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_SHI6']/@prosperity">
        <xsl:attribute name="prosperity">1682</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_SHI6_1']/@hearth">
        <xsl:attribute name="hearth">224</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_SHI6_2']/@hearth">
        <xsl:attribute name="hearth">224</xsl:attribute>
    </xsl:template>

    <!-- Kuwana-han -->
    <!-- Hisamatsu Matsudaira-shi -->
    <xsl:template match="Settlement[@id='castle_KIN22']/@owner">
        <xsl:attribute name='owner'>Faction.clan_rokkaku_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN22']/@name">
        <xsl:attribute name='name'>{=tJBWAjyZ}Kuwana Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN22']/@culture">
        <xsl:attribute name='culture'>Culture.kuwana</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN22_1']/@culture">
        <xsl:attribute name='culture'>Culture.kuwana</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN22_2']/@culture">
        <xsl:attribute name='culture'>Culture.kuwana</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KIN22']/@prosperity">
        <xsl:attribute name="prosperity">1799</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN22_1']/@hearth">
        <xsl:attribute name="hearth">285</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN22_2']/@hearth">
        <xsl:attribute name="hearth">285</xsl:attribute>
    </xsl:template>
    <!-- Technically a different domain but Kuwana needs more -->
    <xsl:template match="Settlement[@id='castle_KIN20']/@owner">
        <xsl:attribute name='owner'>Faction.clan_gamou_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN20']/@name">
        <xsl:attribute name='name'>{=5Dg2vkaC}Nishoji Jin'ya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN20']/@culture">
        <xsl:attribute name='culture'>Culture.kuwana</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN20_1']/@culture">
        <xsl:attribute name='culture'>Culture.kuwana</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN20_2']/@culture">
        <xsl:attribute name='culture'>Culture.kuwana</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KIN20']/@prosperity">
        <xsl:attribute name="prosperity">1799</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN20_1']/@hearth">
        <xsl:attribute name="hearth">285</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN20_2']/@hearth">
        <xsl:attribute name="hearth">285</xsl:attribute>
    </xsl:template>
    <!-- They had holdings in Echizen too for some reason -->
    <xsl:template match="Settlement[@id='castle_CHUB8']/@owner">
        <xsl:attribute name='owner'>Faction.clan_rokkaku_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB8']/@culture">
        <xsl:attribute name='culture'>Culture.kuwana</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB8_1']/@culture">
        <xsl:attribute name='culture'>Culture.kuwana</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB8_2']/@culture">
        <xsl:attribute name='culture'>Culture.kuwana</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB8']/@prosperity">
        <xsl:attribute name="prosperity">1799</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB8_1']/@hearth">
        <xsl:attribute name="hearth">285</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB8_2']/@hearth">
        <xsl:attribute name="hearth">285</xsl:attribute>
    </xsl:template>

    <!-- Owari-han -->
    <!-- Owari Tokugawa-shi -->
    <xsl:template match="Settlement[@id='town_CHUB11']/@owner">
        <xsl:attribute name='owner'>Faction.clan_azai_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHUB11']/@name">
        <xsl:attribute name='name'>{=7o6576n8}Nagoya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHUB11']/@culture">
        <xsl:attribute name='culture'>Culture.owari</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB11_1']/@culture">
        <xsl:attribute name='culture'>Culture.owari</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB11_2']/@culture">
        <xsl:attribute name='culture'>Culture.owari</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB11_3']/@culture">
        <xsl:attribute name='culture'>Culture.owari</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_CHUB11']/@prosperity">
        <xsl:attribute name="prosperity">5456</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB11_1']/@hearth">
        <xsl:attribute name="hearth">900</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB11_2']/@hearth">
        <xsl:attribute name="hearth">900</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB11_3']/@hearth">
        <xsl:attribute name="hearth">900</xsl:attribute>
    </xsl:template>
    <!-- Naruse-shi -->
    <xsl:template match="Settlement[@id='town_CHUB13']/@owner">
        <xsl:attribute name='owner'>Faction.clan_todo_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHUB13']/@name">
        <xsl:attribute name='name'>{=2TMu4lC2}Inuyama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHUB13']/@culture">
        <xsl:attribute name='culture'>Culture.owari</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB13_1']/@culture">
        <xsl:attribute name='culture'>Culture.owari</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB13_2']/@culture">
        <xsl:attribute name='culture'>Culture.owari</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB13_3']/@culture">
        <xsl:attribute name='culture'>Culture.owari</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_CHUB13']/@prosperity">
        <xsl:attribute name="prosperity">2910</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB13_1']/@hearth">
        <xsl:attribute name="hearth">900</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB13_2']/@hearth">
        <xsl:attribute name="hearth">900</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB13_3']/@hearth">
        <xsl:attribute name="hearth">900</xsl:attribute>
    </xsl:template>

    <!-- Mito-han -->
    <!-- Mito Tokugawa-shi -->
    <xsl:template match="Settlement[@id='castle_KA12']/@owner">
        <xsl:attribute name='owner'>Faction.clan_hojo_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA12']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA12_1']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA12_2']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA12']/@prosperity">
        <xsl:attribute name="prosperity">2300</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA12_1']/@hearth">
        <xsl:attribute name="hearth">600</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA12_2']/@hearth">
        <xsl:attribute name="hearth">600</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA27']/@owner">
        <xsl:attribute name='owner'>Faction.clan_hojo_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA27']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA27_1']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA27_2']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA27']/@prosperity">
        <xsl:attribute name="prosperity">2300</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA27_1']/@hearth">
        <xsl:attribute name="hearth">600</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA27_2']/@hearth">
        <xsl:attribute name="hearth">600</xsl:attribute>
    </xsl:template>
    <!-- Nakayama-shi -->
    <xsl:template match="Settlement[@id='town_KA3']/@owner">
        <xsl:attribute name='owner'>Faction.clan_didoji_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KA3']/@name">
        <xsl:attribute name='name'>{=aTuhwpl9}Matsuoka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KA3']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KA3_1']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KA3_2']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KA3_3']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_KA3']/@prosperity">
        <xsl:attribute name="prosperity">2636</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KA3_1']/@hearth">
        <xsl:attribute name="hearth">600</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KA3_2']/@hearth">
        <xsl:attribute name="hearth">600</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KA3_3']/@hearth">
        <xsl:attribute name="hearth">600</xsl:attribute>
    </xsl:template>
    <!-- Fuchu-han -->
    <xsl:template match="Settlement[@id='castle_KA11']/@owner">
        <xsl:attribute name='owner'>Faction.clan_matsuda_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA11']/@name">
        <xsl:attribute name='name'>{=kePZsN6S}Fuchu Jin'ya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA11']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA11_1']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA11_2']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA11']/@prosperity">
        <xsl:attribute name="prosperity">1459</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA11_1']/@hearth">
        <xsl:attribute name="hearth">150</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA11_2']/@hearth">
        <xsl:attribute name="hearth">150</xsl:attribute>
    </xsl:template>
    <!-- Takamatsu-han -->
    <xsl:template match="Settlement[@id='castle_SHI10']/@owner">
        <xsl:attribute name='owner'>Faction.clan_toyama_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_SHI10']/@name">
        <xsl:attribute name='name'>{=cvw8Hsv2}Takamatsu Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_SHI10']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_SHI10_1']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_SHI10_2']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_SHI10']/@prosperity">
        <xsl:attribute name="prosperity">1799</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_SHI10_1']/@hearth">
        <xsl:attribute name="hearth">377</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_SHI10_2']/@hearth">
        <xsl:attribute name="hearth">377</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_SHI6']/@owner">
        <xsl:attribute name='owner'>Faction.clan_toyama_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_SHI6']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_SHI6_1']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_SHI6_2']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_SHI6_3']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_SHI6']/@prosperity">
        <xsl:attribute name="prosperity">3958</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_SHI6_1']/@hearth">
        <xsl:attribute name="hearth">377</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_SHI6_2']/@hearth">
        <xsl:attribute name="hearth">377</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_SHI6_3']/@hearth">
        <xsl:attribute name="hearth">377</xsl:attribute>
    </xsl:template>

    <!-- Tengu Revolt -->
    <!-- Shishido-han -->
    <xsl:template match="Settlement[@id='castle_KA20']/@owner">
        <xsl:attribute name='owner'>Faction.clan_kimotsuki_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA20']/@name">
        <xsl:attribute name='name'>{=C8avRQxs}Shishido Jin'ya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA20']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA20_1']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA20_2']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA20']/@prosperity">
        <xsl:attribute name="prosperity">900</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA20_1']/@hearth">
        <xsl:attribute name="hearth">100</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA20_2']/@hearth">
        <xsl:attribute name="hearth">100</xsl:attribute>
    </xsl:template>
    <!-- Tengu Party -->
    <xsl:template match="Settlement[@id='castle_KA23']/@owner">
        <xsl:attribute name='owner'>Faction.clan_yuki_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA23']/@name">
        <xsl:attribute name='name'>{=2nt5o1X2}Mount Tsukuba</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA23']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA23_1']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA23_2']/@culture">
        <xsl:attribute name='culture'>Culture.kanto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA23']/@prosperity">
        <xsl:attribute name="prosperity">900</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA23_1']/@hearth">
        <xsl:attribute name="hearth">100</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA23_2']/@hearth">
        <xsl:attribute name="hearth">100</xsl:attribute>
    </xsl:template>

    <!-- Tsu-han -->
    <xsl:template match="Settlement[@id='castle_KIN18']/@owner">
        <xsl:attribute name='owner'>Faction.clan_oda_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN18']/@culture">
        <xsl:attribute name='culture'>Culture.tsu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN18_1']/@culture">
        <xsl:attribute name='culture'>Culture.tsu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN18_2']/@culture">
        <xsl:attribute name='culture'>Culture.tsu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KIN18']/@prosperity">
        <xsl:attribute name="prosperity">2474</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN18_1']/@hearth">
        <xsl:attribute name="hearth">625</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN18_2']/@hearth">
        <xsl:attribute name="hearth">625</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN19']/@owner">
        <xsl:attribute name='owner'>Faction.clan_takigawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN19']/@culture">
        <xsl:attribute name='culture'>Culture.tsu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN19_1']/@culture">
        <xsl:attribute name='culture'>Culture.tsu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN19_1']/@name">
        <xsl:attribute name='name'>{=WhNyyoAt}Nara</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN19_2']/@culture">
        <xsl:attribute name='culture'>Culture.tsu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KIN19']/@prosperity">
        <xsl:attribute name="prosperity">899</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN19_1']/@hearth">
        <xsl:attribute name="hearth">625</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN19_2']/@hearth">
        <xsl:attribute name="hearth">625</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KIN4']/@owner">
        <xsl:attribute name='owner'>Faction.clan_sakuma_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KIN4']/@name">
        <xsl:attribute name='name'>{=gvK789wT}Nabari</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KIN4']/@culture">
        <xsl:attribute name='culture'>Culture.tsu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KIN4_1']/@culture">
        <xsl:attribute name='culture'>Culture.tsu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KIN4_2']/@culture">
        <xsl:attribute name='culture'>Culture.tsu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KIN4_3']/@culture">
        <xsl:attribute name='culture'>Culture.tsu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_KIN4']/@prosperity">
        <xsl:attribute name="prosperity">2245</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KIN4_1']/@hearth">
        <xsl:attribute name="hearth">625</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KIN4_2']/@hearth">
        <xsl:attribute name="hearth">625</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KIN4_3']/@hearth">
        <xsl:attribute name="hearth">625</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN21']/@owner">
        <xsl:attribute name='owner'>Faction.clan_shibata_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN21']/@name">
        <xsl:attribute name='name'>{=rogs3NNl}Hisai Jin'ya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN21']/@culture">
        <xsl:attribute name='culture'>Culture.tsu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN21_1']/@culture">
        <xsl:attribute name='culture'>Culture.tsu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN21_2']/@culture">
        <xsl:attribute name='culture'>Culture.tsu</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KIN21']/@prosperity">
        <xsl:attribute name="prosperity">1992</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN21_1']/@hearth">
        <xsl:attribute name="hearth">465</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN21_2']/@hearth">
        <xsl:attribute name="hearth">465</xsl:attribute>
    </xsl:template>

    <!-- SHOGUNATE -->
    <!-- BAKUFU RETAINERS -->
    <!-- Okazaki-han -->
    <!-- Heihachiro Honda-shi -->
    <xsl:template match="Settlement[@id='town_CHUB10']/@owner">
        <xsl:attribute name='owner'>Faction.clan_honda_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHUB10']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB10_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB10_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB10_3']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_CHUB10']/@prosperity">
        <xsl:attribute name="prosperity">2886</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB10_1']/@hearth">
        <xsl:attribute name="hearth">148</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB10_2']/@hearth">
        <xsl:attribute name="hearth">148</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB10_3']/@hearth">
        <xsl:attribute name="hearth">148</xsl:attribute>
    </xsl:template>
    <!-- Domain unclear -->
    <!-- Technically taken from them after a few generations but they'll keep it -->
    <xsl:template match="Settlement[@id='castle_KA14']/@owner">
        <xsl:attribute name='owner'>Faction.clan_honda_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA14']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA14_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA14_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA14']/@prosperity">
        <xsl:attribute name="prosperity">1312</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA14_1']/@hearth">
        <xsl:attribute name="hearth">148</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA14_2']/@hearth">
        <xsl:attribute name="hearth">148</xsl:attribute>
    </xsl:template>
    <!-- Zeze-han -->
    <!-- Hikohachiro Honda-shi -->
    <xsl:template match="Settlement[@id='town_KIN6']/@owner">
        <xsl:attribute name='owner'>Faction.clan_kasuga_1</xsl:attribute>
    </xsl:template>
    <!-- Should be to the west nearer Kyoto -->
    <xsl:template match="Settlement[@id='town_KIN6']/@name">
        <xsl:attribute name='name'>{=fxIwAwp3}Zeze</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KIN6']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KIN6_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KIN6_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KIN6_3']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_KIN6']/@prosperity">
        <xsl:attribute name="prosperity">3769</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KIN6_1']/@hearth">
        <xsl:attribute name="hearth">360</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KIN6_2']/@hearth">
        <xsl:attribute name="hearth">360</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KIN6_3']/@hearth">
        <xsl:attribute name="hearth">360</xsl:attribute>
    </xsl:template>
    <!-- Tanaka-han -->
    <!-- Sanyazaemon Honda-shi -->
    <xsl:template match="Settlement[@id='town_CHUB8']/@owner">
        <xsl:attribute name='owner'>Faction.clan_okubo_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHUB8']/@name">
        <xsl:attribute name='name'>{=D5Jcm1JC}Tanaka</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHUB8']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB8_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB8_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB8_3']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_CHUB8']/@prosperity">
        <xsl:attribute name="prosperity">3086</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB8_1']/@hearth">
        <xsl:attribute name="hearth">198</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB8_2']/@hearth">
        <xsl:attribute name="hearth">198</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB8_3']/@hearth">
        <xsl:attribute name="hearth">198</xsl:attribute>
    </xsl:template>
    <!-- Iiyama-han -->
    <!-- Bungo no Kami Honda -->
    <xsl:template match="Settlement[@id='castle_CHUB14']/@owner">
        <xsl:attribute name='owner'>Faction.clan_hattori_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB14']/@name">
        <xsl:attribute name='name'>{=6MHOv64n}Iiyama Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB14']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB14_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB14_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB14']/@prosperity">
        <xsl:attribute name="prosperity">1762</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB14_1']/@hearth">
        <xsl:attribute name="hearth">264</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB14_2']/@hearth">
        <xsl:attribute name="hearth">264</xsl:attribute>
    </xsl:template>
    <!-- Sakakibara-shi -->
    <!-- Takada-han -->
    <xsl:template match="Settlement[@id='town_CHUB4']/@owner">
        <xsl:attribute name='owner'>Faction.clan_sakakibara_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHUB4']/@name">
        <xsl:attribute name='name'>{=O2PYgcG1}Takada</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHUB4']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB4_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB4_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB4_3']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_CHUB4']/@prosperity">
        <xsl:attribute name="prosperity">4534</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB4_1']/@hearth">
        <xsl:attribute name="hearth">749</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB4_2']/@hearth">
        <xsl:attribute name="hearth">749</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB4_3']/@hearth">
        <xsl:attribute name="hearth">749</xsl:attribute>
    </xsl:template>
    <!-- Fujii Matsudaira-shi -->
    <!-- Ueda-han -->
    <xsl:template match="Settlement[@id='castle_CHUB16']/@owner">
        <xsl:attribute name='owner'>Faction.clan_murakami_2</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB16']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB16_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB16_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB16']/@prosperity">
        <xsl:attribute name="prosperity">1952</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB16_1']/@hearth">
        <xsl:attribute name="hearth">415</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB16_2']/@hearth">
        <xsl:attribute name="hearth">415</xsl:attribute>
    </xsl:template>
    <!-- Yuki Matsudaira-shi (Main) -->
    <!-- Tsuyama-han -->
    <xsl:template match="Settlement[@id='castle_CHU15']/@owner">
        <xsl:attribute name='owner'>Faction.clan_b_tsuyama_matsudaira_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU15']/@name">
        <xsl:attribute name='name'>{=aWGi78Ll}Tsuyama Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU15']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHU15_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHU15_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHU15']/@prosperity">
        <xsl:attribute name="prosperity">1928</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU15_1']/@hearth">
        <xsl:attribute name="hearth">389</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU15_2']/@hearth">
        <xsl:attribute name="hearth">389</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN1']/@owner">
        <xsl:attribute name='owner'>Faction.clan_b_tsuyama_matsudaira_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN1_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN1_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KIN1']/@prosperity">
        <xsl:attribute name="prosperity">1928</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN1_1']/@hearth">
        <xsl:attribute name="hearth">389</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN1_2']/@hearth">
        <xsl:attribute name="hearth">389</xsl:attribute>
    </xsl:template>
    <!-- Itoigawa-han -->
    <xsl:template match="Settlement[@id='castle_CHUB7']/@owner">
        <xsl:attribute name='owner'>Faction.clan_b_itoigawa_matsudaira_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB7']/@name">
        <xsl:attribute name='name'>{=4atk7P2g}Itoigawa Jin'ya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB7']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB7_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB7_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB7']/@prosperity">
        <xsl:attribute name="prosperity">1157</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB7_1']/@hearth">
        <xsl:attribute name="hearth">75</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB7_2']/@hearth">
        <xsl:attribute name="hearth">75</xsl:attribute>
    </xsl:template>
    <!-- Akashi-han -->
    <xsl:template match="Settlement[@id='castle_KIN6']/@owner">
        <xsl:attribute name='owner'>Faction.clan_b_akashi_matsudaira_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN6']/@name">
        <xsl:attribute name='name'>{=9HBXGwhM}Akashi Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN6']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN6_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN6_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KIN6']/@prosperity">
        <xsl:attribute name="prosperity">1928</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN6_1']/@hearth">
        <xsl:attribute name="hearth">389</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN6_2']/@hearth">
        <xsl:attribute name="hearth">389</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN7']/@owner">
        <xsl:attribute name='owner'>Faction.clan_b_akashi_matsudaira_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN7']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN7_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN7_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KIN7']/@prosperity">
        <xsl:attribute name="prosperity">1928</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN7_1']/@hearth">
        <xsl:attribute name="hearth">389</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN7_2']/@hearth">
        <xsl:attribute name="hearth">389</xsl:attribute>
    </xsl:template>
    <!-- Maebashi/Kawagoe-han -->
    <xsl:template match="Settlement[@id='town_KA5']/@owner">
        <xsl:attribute name='owner'>Faction.clan_nishina_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KA5']/@name">
        <xsl:attribute name='name'>{=g5NTSS2Y}Maebashi</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KA5']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KA5_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KA5_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KA5_3']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_KA5']/@prosperity">
        <xsl:attribute name="prosperity">4295</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KA5_1']/@hearth">
        <xsl:attribute name="hearth">550</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KA5_2']/@hearth">
        <xsl:attribute name="hearth">550</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KA5_3']/@hearth">
        <xsl:attribute name="hearth">550</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA17']/@owner">
        <xsl:attribute name='owner'>Faction.clan_nishina_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA17']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA17_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA17_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA17']/@prosperity">
        <xsl:attribute name="prosperity">1953</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA17_1']/@hearth">
        <xsl:attribute name="hearth">550</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA17_2']/@hearth">
        <xsl:attribute name="hearth">550</xsl:attribute>
    </xsl:template>
    <!-- Sakai-shi -->
    <!-- Isesaki-han -->
    <xsl:template match="Settlement[@id='castle_KA18']/@owner">
        <xsl:attribute name='owner'>Faction.clan_sakai_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA18']/@name">
        <xsl:attribute name='name'>{=x0qpsNZw}Isesaki Jin'ya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA18']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA18_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA18_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA18']/@prosperity">
        <xsl:attribute name="prosperity">1459</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA18_1']/@hearth">
        <xsl:attribute name="hearth">148</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA18_2']/@hearth">
        <xsl:attribute name="hearth">148</xsl:attribute>
    </xsl:template>
    <!-- Okubo-shi -->
    <!-- Odawara-han -->
    <xsl:template match="Settlement[@id='town_KA1']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tateoka_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KA1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KA1_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KA1_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KA1_3']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_KA1']/@prosperity">
        <xsl:attribute name="prosperity">4265</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KA1_1']/@hearth">
        <xsl:attribute name="hearth">613</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KA1_2']/@hearth">
        <xsl:attribute name="hearth">613</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KA1_3']/@hearth">
        <xsl:attribute name="hearth">613</xsl:attribute>
    </xsl:template>
    <!-- Karasuyama-han -->
    <xsl:template match="Settlement[@id='castle_KA13']/@owner">
        <xsl:attribute name='owner'>Faction.clan_sanada_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA13']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA13_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA13_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA13']/@prosperity">
        <xsl:attribute name="prosperity">1682</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA13_1']/@hearth">
        <xsl:attribute name="hearth">224</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA13_2']/@hearth">
        <xsl:attribute name="hearth">224</xsl:attribute>
    </xsl:template>
    <!-- Yamanaka-han -->
    <xsl:template match="Settlement[@id='castle_CHUB19']/@owner">
        <xsl:attribute name='owner'>Faction.clan_nobesawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB19']/@name">
        <xsl:attribute name='name'>{=ZlC6XmVV}Yamanaka Jin'ya</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB19']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB19_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB19_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB19']/@prosperity">
        <xsl:attribute name="prosperity">1239</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB19_1']/@hearth">
        <xsl:attribute name="hearth">96</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB19_2']/@hearth">
        <xsl:attribute name="hearth">96</xsl:attribute>
    </xsl:template>
    <!-- Ikeda-shi -->
    <!-- Okayama-han -->
    <xsl:template match="Settlement[@id='town_CHU6']/@owner">
        <xsl:attribute name='owner'>Faction.clan_ikeda_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHU6']/@culture">
        <xsl:attribute name='culture'>Culture.okayama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHU6_1']/@culture">
        <xsl:attribute name='culture'>Culture.okayama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHU6_2']/@culture">
        <xsl:attribute name='culture'>Culture.okayama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHU6_3']/@culture">
        <xsl:attribute name='culture'>Culture.okayama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_CHU6']/@prosperity">
        <xsl:attribute name="prosperity">4868</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHU6_1']/@hearth">
        <xsl:attribute name="hearth">872</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHU6_2']/@hearth">
        <xsl:attribute name="hearth">872</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHU6_3']/@hearth">
        <xsl:attribute name="hearth">872</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU14']/@owner">
        <xsl:attribute name='owner'>Faction.clan_ikeda_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHU14']/@culture">
        <xsl:attribute name='culture'>Culture.okayama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHU14_1']/@culture">
        <xsl:attribute name='culture'>Culture.okayama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHU14_2']/@culture">
        <xsl:attribute name='culture'>Culture.okayama</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHU14']/@prosperity">
        <xsl:attribute name="prosperity">2213</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU14_1']/@hearth">
        <xsl:attribute name="hearth">872</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHU14_2']/@hearth">
        <xsl:attribute name="hearth">872</xsl:attribute>
    </xsl:template>
    <!-- Tahara Toda-shi -->
    <!-- Utsonomiya-han -->
    <xsl:template match="Settlement[@id='town_KA4']/@owner">
        <xsl:attribute name='owner'>Faction.clan_oyamada_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KA4']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KA4_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KA4_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KA4_3']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_KA4']/@prosperity">
        <xsl:attribute name="prosperity">3877</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KA4_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KA4_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KA4_3']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <!-- Ogaki-han -->
    <xsl:template match="Settlement[@id='castle_CHUB26']/@owner">
        <xsl:attribute name='owner'>Faction.clan_b_ogaki_toda_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB26']/@name">
        <xsl:attribute name='name'>{=OzxYpqps}Ogaki Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB26']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB26_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB26_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB26']/@prosperity">
        <xsl:attribute name="prosperity">2219</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB26_1']/@hearth">
        <xsl:attribute name="hearth">749</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB26_2']/@hearth">
        <xsl:attribute name="hearth">749</xsl:attribute>
    </xsl:template>
    <!-- Doi-shi -->
    <!-- Koga-han -->
    <xsl:template match="Settlement[@id='castle_KA26']/@owner">
        <xsl:attribute name='owner'>Faction.clan_anayama_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA26']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA26_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA26_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA26']/@prosperity">
        <xsl:attribute name="prosperity">2132</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA26_1']/@hearth">
        <xsl:attribute name="hearth">640</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA26_2']/@hearth">
        <xsl:attribute name="hearth">640</xsl:attribute>
    </xsl:template>
    <!-- Mikawa Doi-shi -->
    <!-- Kariya-han -->
    <xsl:template match="Settlement[@id='castle_CHUB25']/@owner">
        <xsl:attribute name='owner'>Faction.clan_yamagata_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB25']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB25_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB25_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB25']/@prosperity">
        <xsl:attribute name="prosperity">1539</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB25_1']/@hearth">
        <xsl:attribute name="hearth">170</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB25_2']/@hearth">
        <xsl:attribute name="hearth">170</xsl:attribute>
    </xsl:template>
    <!-- Inoue-shi -->
    <!-- Hamamatsu-han -->
    <xsl:template match="Settlement[@id='town_CHUB9']/@owner">
        <xsl:attribute name='owner'>Faction.clan_obata_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHUB9']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB9_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB9_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB9_3']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_CHUB9']/@prosperity">
        <xsl:attribute name="prosperity">3590</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB9_1']/@hearth">
        <xsl:attribute name="hearth">304</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB9_2']/@hearth">
        <xsl:attribute name="hearth">304</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB9_3']/@hearth">
        <xsl:attribute name="hearth">304</xsl:attribute>
    </xsl:template>
    <!-- Ota-shi -->
    <!-- Kakegawa-han -->
    <xsl:template match="Settlement[@id='castle_CHUB23']/@owner">
        <xsl:attribute name='owner'>Faction.clan_yura_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB23']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB23_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB23_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB23']/@prosperity">
        <xsl:attribute name="prosperity">1928</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB23_1']/@hearth">
        <xsl:attribute name="hearth">389</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB23_2']/@hearth">
        <xsl:attribute name="hearth">389</xsl:attribute>
    </xsl:template>
    <!-- Kinoshita-shi -->
    <!-- Hiji-han -->
    <xsl:template match="Settlement[@id='castle_KY20']/@owner">
        <xsl:attribute name='owner'>Faction.clan_kinoshita_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY20']/@name">
        <xsl:attribute name='name'>{=kXl5DF4d}Hiji Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY20']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY20_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY20_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY20']/@prosperity">
        <xsl:attribute name="prosperity">1627</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY20_1']/@hearth">
        <xsl:attribute name="hearth">200</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY20_2']/@hearth">
        <xsl:attribute name="hearth">200</xsl:attribute>
    </xsl:template>
    <!-- Yodo Inaba-shi -->
    <!-- Yodo-han -->
    <xsl:template match="Settlement[@id='castle_KIN23']/@owner">
        <xsl:attribute name='owner'>Faction.clan_otomo_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN23']/@name">
        <xsl:attribute name='name'>{=1VIjjKWB}Yodo Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN23']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN23_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN23_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KIN23']/@prosperity">
        <xsl:attribute name="prosperity">1936</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN23_1']/@hearth">
        <xsl:attribute name="hearth">398</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN23_2']/@hearth">
        <xsl:attribute name="hearth">398</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN8']/@owner">
        <xsl:attribute name='owner'>Faction.clan_otomo_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN8']/@name">
        <xsl:attribute name='name'>{=PKP1FMJk}Yodo Old Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN8']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN8_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN8_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KIN8']/@prosperity">
        <xsl:attribute name="prosperity">1936</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN8_1']/@hearth">
        <xsl:attribute name="hearth">398</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN8_2']/@hearth">
        <xsl:attribute name="hearth">398</xsl:attribute>
    </xsl:template>
    <!-- Toda Matsudaira-shi -->
    <!-- Matsumoto-han -->
    <xsl:template match="Settlement[@id='castle_CHUB32']/@owner">
        <xsl:attribute name='owner'>Faction.clan_ujiie_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB32']/@name">
        <xsl:attribute name='name'>{=NY1GGm2P}Matsumoto Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB32']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB32_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB32_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB32']/@prosperity">
        <xsl:attribute name="prosperity">2001</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB32_1']/@hearth">
        <xsl:attribute name="hearth">477</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB32_2']/@hearth">
        <xsl:attribute name="hearth">477</xsl:attribute>
    </xsl:template>
    <!-- Akita-shi -->
    <!-- Miharu-han -->
    <xsl:template match="Settlement[@id='castle_TOHO4']/@owner">
        <xsl:attribute name='owner'>Faction.clan_ando_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_TOHO4']/@culture">
        <xsl:attribute name='culture'>Culture.tosan</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO4_1']/@culture">
        <xsl:attribute name='culture'>Culture.tosan</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_TOHO4_2']/@culture">
        <xsl:attribute name='culture'>Culture.tosan</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_TOHO4']/@prosperity">
        <xsl:attribute name="prosperity">1928</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO4_1']/@hearth">
        <xsl:attribute name="hearth">389</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_TOHO4_2']/@hearth">
        <xsl:attribute name="hearth">389</xsl:attribute>
    </xsl:template>
    <!-- Tenryo -->
    <xsl:template match="Settlement[@id='castle_CHUB10']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB10']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB10_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB10_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB10']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB10_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB10_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>

    <!-- Tokugawa Heartland -->
    <xsl:template match="Settlement[@id='town_KA2']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KA2']/@culture">
        <xsl:attribute name='culture'>Culture.edo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_KA2']/@prosperity">
        <xsl:attribute name="prosperity">6062</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KA2_1']/@hearth">
        <xsl:attribute name="hearth">1000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KA2_2']/@hearth">
        <xsl:attribute name="hearth">1000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KA2_3']/@hearth">
        <xsl:attribute name="hearth">1000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KA2_1']/@culture">
        <xsl:attribute name='culture'>Culture.edo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KA2_2']/@culture">
        <xsl:attribute name='culture'>Culture.edo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KA2_3']/@culture">
        <xsl:attribute name='culture'>Culture.edo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB24']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB24']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB24_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB24_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB24']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB24_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB24_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KIN2']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KIN2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KIN2_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KIN2_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KIN2_3']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_KIN2']/@prosperity">
        <xsl:attribute name="prosperity">4000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KIN2_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KIN2_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KIN2_3']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <!-- Gosankyo -->
    <xsl:template match="Settlement[@id='castle_KA2']/@owner">
        <xsl:attribute name='owner'>Faction.clan_b_tayasu_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA2_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA2_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA2']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA2_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA2_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA25']/@owner">
        <xsl:attribute name='owner'>Faction.clan_b_hitotsubashi_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA25']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA25_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA25_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA25']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA25_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA25_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <!-- Tatsuoka-han -->
    <xsl:template match="Settlement[@id='castle_CHUB17']/@owner">
        <xsl:attribute name='owner'>Faction.clan_b_toku_ret_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB17']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB17_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB17_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB17']/@name">
        <xsl:attribute name='name'>{=Hd7GiElO}Tatsuoka Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB17']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB17_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB17_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <!-- Tokugawa Kyushu -->
    <!-- Naito-shi -->
    <!-- Nobeoka-han -->
    <xsl:template match="Settlement[@id='castle_KY14']/@owner">
        <xsl:attribute name='owner'>Faction.clan_hoketsu_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY14']/@name">
        <xsl:attribute name='name'>{=0LHvahhd}Nobeoka Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY14']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY14_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY14_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY14']/@prosperity">
        <xsl:attribute name="prosperity">2073</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY14_1']/@hearth">
        <xsl:attribute name="hearth">569</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY14_2']/@hearth">
        <xsl:attribute name="hearth">569</xsl:attribute>
    </xsl:template>
    <!-- Nakagawa-shi -->
    <!-- Oka-han -->
    <xsl:template match="Settlement[@id='castle_KY19']/@owner">
        <xsl:attribute name='owner'>Faction.clan_b_nakagawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY19']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY19_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY19_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY19']/@prosperity">
        <xsl:attribute name="prosperity">2073</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY19_1']/@hearth">
        <xsl:attribute name="hearth">569</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY19_2']/@hearth">
        <xsl:attribute name="hearth">569</xsl:attribute>
    </xsl:template>
    <!-- Nomi Matsudaira-shi -->
    <!-- Kitsuki-han -->
    <xsl:template match="Settlement[@id='castle_KY18']/@owner">
        <xsl:attribute name='owner'>Faction.clan_honma_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY18']/@name">
        <xsl:attribute name='name'>{=6weMf3aJ}Kitsuki Castle</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY18']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY18_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY18_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY18']/@prosperity">
        <xsl:attribute name="prosperity">1715</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY18_1']/@hearth">
        <xsl:attribute name="hearth">240</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY18_2']/@hearth">
        <xsl:attribute name="hearth">240</xsl:attribute>
    </xsl:template>
    <!-- Inaba-shi -->
    <!-- Usuki-han -->
    <xsl:template match="Settlement[@id='town_KY5']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tendo_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KY5']/@name">
        <xsl:attribute name='name'>{=sgEq01Iv}Usuki</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KY5']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KY5_1']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KY5_2']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KY5_3']/@culture">
        <xsl:attribute name='culture'>Culture.tokai</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_KY5']/@prosperity">
        <xsl:attribute name="prosperity">3370</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY5_1']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY5_2']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KY5_3']/@hearth">
        <xsl:attribute name="hearth">250</xsl:attribute>
    </xsl:template>
    <!-- Tenryo -->
    <xsl:template match="Settlement[@id='castle_KY15']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY15']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY15_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY15_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY15']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY15_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY15_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY13']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY13']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY13_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY13_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY13']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY13_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY13_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY32']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KY32']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY32_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KY32_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KY32']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY32_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KY32_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN11']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN11']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN11_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN11_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KIN11']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN11_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN11_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN12']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN12']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN12_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN12_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KIN12']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN12_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN12_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA21']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA21']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA21_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA21_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA21']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA21_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA21_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB18']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB18']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB18_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB18_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB18']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB18_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB18_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHUB7']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHUB7']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB7_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB7_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB7_3']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_CHUB7']/@prosperity">
        <xsl:attribute name="prosperity">4000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB7_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB7_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB7_3']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHUB12']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHUB12']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB12_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB12_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB12_3']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_CHUB12']/@prosperity">
        <xsl:attribute name="prosperity">4000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB12_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB12_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB12_3']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB30']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB30']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB30_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB30_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB30']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB30_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB30_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB31']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB31']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB31_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB31_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB31']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB31_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB31_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB29']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB29']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB29_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB29_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB29']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB29_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB29_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB34']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB34']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB34_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB34_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB34']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB34_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB34_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB35']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB35']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB35_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB35_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB35']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB35_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB35_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB33']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB33']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB33_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB33_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB33']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB33_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB33_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHUB6']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_CHUB6']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB6_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB6_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_CHUB6_3']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_CHUB6']/@prosperity">
        <xsl:attribute name="prosperity">4000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB6_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB6_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_CHUB6_3']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB15']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB15']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB15_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB15_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB15']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB15_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB15_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA15']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA15']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA15_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA15_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA15']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA15_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA15_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KIN5']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_KIN5']/@culture">
        <xsl:attribute name='culture'>Culture.kyoto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KIN5_1']/@culture">
        <xsl:attribute name='culture'>Culture.kyoto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KIN5_2']/@culture">
        <xsl:attribute name='culture'>Culture.kyoto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_KIN5_3']/@culture">
        <xsl:attribute name='culture'>Culture.kyoto</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='town_comp_KIN5']/@prosperity">
        <xsl:attribute name="prosperity">4000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KIN5_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KIN5_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='village_comp_KIN5_3']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN2']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN2_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN2_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KIN2']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN2_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN2_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN4']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KIN4']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN4_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KIN4_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KIN4']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN4_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KIN4_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB22']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB22']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB22_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB22_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB22']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB22_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB22_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB21']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB21']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB21_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB21_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB21']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB21_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB21_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB20']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_CHUB20']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB20_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_CHUB20_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_CHUB20']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB20_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_CHUB20_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA1']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA1_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA1_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA1']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA1_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA1_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA28']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA28']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA28_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA28_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA28']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA28_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA28_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA16']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA16']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA16_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA16_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA16']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA16_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA16_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA19']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA19']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA19_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA19_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA19']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA19_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA19_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA24']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA24']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA24_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA24_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA24']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA24_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA24_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA10']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA10']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA10_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA10_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA10']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA10_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA10_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA4']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA4']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA4_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA4_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA4']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA4_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA4_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA7']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA7']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA7_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA7_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA7']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA7_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA7_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA9']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA9']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA9_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA9_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA9']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA9_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA9_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA8']/@owner">
        <xsl:attribute name='owner'>Faction.clan_tokugawa_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_KA8']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA8_1']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='castle_village_KA8_2']/@culture">
        <xsl:attribute name='culture'>Culture.tenryo</xsl:attribute>
    </xsl:template>
    <xsl:template match="Town[@id='castle_comp_KA8']/@prosperity">
        <xsl:attribute name="prosperity">2000</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA8_1']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
    <xsl:template match="Village[@id='castle_village_comp_KA8_2']/@hearth">
        <xsl:attribute name="hearth">400</xsl:attribute>
    </xsl:template>
</xsl:stylesheet>