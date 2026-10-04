<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="NPCCharacter[@id='zoku_thief']/upgrade_targets">
        <upgrade_targets>
            <upgrade_target id="NPCCharacter.bak_base_traditional_yari_ashigaru"/>
            <upgrade_target id="NPCCharacter.zoku_bandit"/>
        </upgrade_targets>
    </xsl:template>
    <xsl:template match="NPCCharacter[@id='zoku_bandit']/upgrade_targets">
        <upgrade_targets>
            <upgrade_target id="NPCCharacter.bak_base_traditional_kachisamurai"/>
            <upgrade_target id="NPCCharacter.bak_base_traditional_battogumi"/>
        </upgrade_targets>
    </xsl:template>
    <xsl:template match="NPCCharacter[@id='yato_thief']/upgrade_targets">
        <upgrade_targets>
            <upgrade_target id="NPCCharacter.bak_base_traditional_yumi_ashigaru"/>
            <upgrade_target id="NPCCharacter.yato_bandit"/>
        </upgrade_targets>
    </xsl:template>
    <xsl:template match="NPCCharacter[@id='yato_bandit']/upgrade_targets">
        <upgrade_targets>
            <upgrade_target id="NPCCharacter.bak_base_modern_teppotai"/>
        </upgrade_targets>
    </xsl:template>
    <xsl:template match="NPCCharacter[@id='wokou_pirate']/@name">
        <xsl:attribute name='name'>{=5ZOcEB6S}Kaizoku Pirate</xsl:attribute>
    </xsl:template>
    <xsl:template match="NPCCharacter[@id='wokou_pirate']/upgrade_targets">
        <upgrade_targets>
            <upgrade_target id="NPCCharacter.bak_base_naval_suiheitai"/>
            <upgrade_target id="NPCCharacter.bak_base_traditional_yari_ashigaru"/>
            <upgrade_target id="NPCCharacter.hardened_wokou_pirate"/>
        </upgrade_targets>
    </xsl:template>
    <xsl:template match="NPCCharacter[@id='hardened_wokou_pirate']/@name">
        <xsl:attribute name='name'>{=MXCi6WOZ}Hardened Kaizoku Pirate</xsl:attribute>
    </xsl:template>
    <xsl:template match="NPCCharacter[@id='hardened_wokou_pirate']/upgrade_targets">
        <upgrade_targets>
            <upgrade_target id="NPCCharacter.bak_base_naval_suiheitai"/>
            <upgrade_target id="NPCCharacter.bak_base_traditional_yumi_kachisamurai"/>
            <upgrade_target id="NPCCharacter.wokou_raider"/>
        </upgrade_targets>
    </xsl:template>
    <xsl:template match="NPCCharacter[@id='wokou_raider']/@name">
        <xsl:attribute name='name'>{=2C3it3ki}Kaizoku Raider</xsl:attribute>
    </xsl:template>
    <xsl:template match="NPCCharacter[@id='wokou_raider']/upgrade_targets">
        <upgrade_targets>
            <upgrade_target id="NPCCharacter.bak_base_naval_kaigun_heitai"/>
        </upgrade_targets>
    </xsl:template>
    <xsl:template match="NPCCharacter[@id='sanzoku_bandit']/upgrade_targets">
        <upgrade_targets>
            <upgrade_target id="NPCCharacter.bak_shishi"/>
            <upgrade_target id="NPCCharacter.sanzoku_robber"/>
        </upgrade_targets>
    </xsl:template>
    <xsl:template match="NPCCharacter[@id='sanzoku_robber']/upgrade_targets">
        <upgrade_targets>
            <upgrade_target id="NPCCharacter.bak_ishin_shishi"/>
            <upgrade_target id="NPCCharacter.sanzoku_raider"/>
        </upgrade_targets>
    </xsl:template>
    <xsl:template match="NPCCharacter[@id='sanzoku_raider']/upgrade_targets">
        <upgrade_targets>
            <upgrade_target id="NPCCharacter.bak_teppo_shishi"/>
            <upgrade_target id="NPCCharacter.bak_hitokiri"/>
        </upgrade_targets>
    </xsl:template>
    <xsl:template match="NPCCharacter[@id='looter']/upgrade_targets">
        <upgrade_targets>
            <upgrade_target id="NPCCharacter.bak_base_traditional_yari_ashigaru"/>
            <upgrade_target id="NPCCharacter.bak_ronin_base"/>
        </upgrade_targets>
    </xsl:template>
    <xsl:template match="NPCCharacter[@id='ochimusya']/@name">
        <xsl:attribute name='name'>{=7JNGAn3W}Burai Ronin</xsl:attribute>
    </xsl:template>
    <xsl:template match="NPCCharacter[@id='ochimusya']/upgrade_targets">
        <upgrade_targets>
            <upgrade_target id="NPCCharacter.bak_ishin_shishi"/>
            <upgrade_target id="NPCCharacter.bak_ronin_skilled"/>
            <upgrade_target id="NPCCharacter.bak_base_modern_teppotai"/>
        </upgrade_targets>
    </xsl:template>
    <xsl:template match="NPCCharacter[@id='zoku_bandit_boss']/@name">
        <xsl:attribute name='name'>{=uBkmKcHp}Zoku Oyabun</xsl:attribute>
    </xsl:template>
    <xsl:template match="NPCCharacter[@id='yato_bandit_boss']/@name">
        <xsl:attribute name='name'>{=XOHBJvqv}Yato Oyabun</xsl:attribute>
    </xsl:template>
    <xsl:template match="NPCCharacter[@id='wokou_bandit_boss']/@name">
        <xsl:attribute name='name'>{=K2xezHwA}Kaizoku Oyabun</xsl:attribute>
    </xsl:template>
    <xsl:template match="NPCCharacter[@id='sanzoku_bandit_boss']/@name">
        <xsl:attribute name='name'>{=eOrpylEl}Sanzoku Oyabun</xsl:attribute>
    </xsl:template>
    <xsl:template match="NPCCharacter[@id='ochimusya_bandit_boss']/@name">
        <xsl:attribute name='name'>{=9jeZHqMo}Ronin Oyabun</xsl:attribute>
    </xsl:template>
</xsl:stylesheet>