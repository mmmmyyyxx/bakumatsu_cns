<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
	<!-- Akamtasu Faction -->
	<!-- Akamtasu clan -->
	<xsl:template match="Hero[@id='lord_1_akamatsu']"/>
	<xsl:template match="Hero[@id='lord_1_akamatsu_1']"/>
	<xsl:template match="Hero[@id='lord_1_akamatsu_2']"/>
	<!-- Kodera clan -->
	<xsl:template match="Hero[@id='lord_1_kodera']"/>
	<xsl:template match="Hero[@id='lord_1_kodera_1']"/>
	<xsl:template match="Hero[@id='lord_1_kodera_2']"/>
	<xsl:template match="Hero[@id='lord_1_kodera_3']"/>
	<xsl:template match="Hero[@id='lord_1_kodera_4']"/>
	<xsl:template match="Hero[@id='lord_1_kodera_5']"/>
	<!-- Kuroda Clan -->
	<xsl:template match="Hero[@id='lord_1_kuroda']"/>
	<xsl:template match="Hero[@id='lord_1_kuroda_1']"/>
	<xsl:template match="Hero[@id='lord_1_kuroda_2']"/>
	<xsl:template match="Hero[@id='lord_1_kuroda_3']"/>
	<xsl:template match="Hero[@id='lord_1_kuroda_4']"/>
	<xsl:template match="Hero[@id='lord_1_kuroda_5']"/>
	<xsl:template match="Hero[@id='lord_1_kuroda_6']"/>
	<xsl:template match="Hero[@id='lord_1_kuroda_7']"/>
	<xsl:template match="Hero[@id='lord_1_kuroda_8']"/>
	<xsl:template match="Hero[@id='lord_1_kuroda_9']"/>
	<xsl:template match="Hero[@id='lord_1_kuroda_10']"/>
	<!-- Bessho Clan -->
	<xsl:template match="Hero[@id='lord_1_bessho']"/>
	<xsl:template match="Hero[@id='lord_1_bessho_1']"/>
	<xsl:template match="Hero[@id='dead_lord_1_bessho_2']"/>
	<xsl:template match="Hero[@id='dead_lord_1_bessho_3']"/>
	<xsl:template match="Hero[@id='lord_1_bessho_4']"/>
	<xsl:template match="Hero[@id='lord_1_bessho_5']"/>
	<xsl:template match="Hero[@id='lord_1_bessho_6']"/>
	<xsl:template match="Hero[@id='lord_1_bessho_7']"/>
	<xsl:template match="Hero[@id='lord_1_bessho_8']"/>
	<xsl:template match="Hero[@id='lord_1_bessho_9']"/>
	<xsl:template match="Hero[@id='lord_1_bessho_10']"/>
	<!-- Miyoshi Faction (Other Miyoshi clans are in shikoku_heroes.xml) -->
	<!-- Matsunaga Clan -->
	<xsl:template match="Hero[@id='lord_1_matsunaga']"/>
	<xsl:template match="Hero[@id='lord_1_matsunaga_1']"/>
	<xsl:template match="Hero[@id='lord_1_matsunaga_2']"/>
	<xsl:template match="Hero[@id='lord_1_matsunaga_3']"/>
	<!-- Tsutsui Clan -->
	<xsl:template match="Hero[@id='lord_1_tsutsui']"/>
	<xsl:template match="Hero[@id='lord_1_tsutsui_1']"/>
	<xsl:template match="Hero[@id='dead_lord_1_tsutsui_2']"/>
	<xsl:template match="Hero[@id='dead_lord_1_tsutsui_3']"/>
	<xsl:template match="Hero[@id='dead_lord_1_tsutsui_4']"/>
	<xsl:template match="Hero[@id='lord_1_tsutsui_5']"/>
	<xsl:template match="Hero[@id='lord_1_tsutsui_6']"/>
	<xsl:template match="Hero[@id='lord_1_tsutsui_7']"/>
	<xsl:template match="Hero[@id='lord_1_tsutsui_8']"/>
	<xsl:template match="Hero[@id='lord_1_tsutsui_9']"/>
	<xsl:template match="Hero[@id='lord_1_tsutsui_10']"/>
	<xsl:template match="Hero[@id='lord_1_tsutsui_11']"/>
	<xsl:template match="Hero[@id='lord_1_tsutsui_12']"/>
	<!-- Atagi Clan -->
	<xsl:template match="Hero[@id='lord_1_atagi']"/>
	<xsl:template match="Hero[@id='lord_1_atagi_1']"/>
	<xsl:template match="Hero[@id='dead_lord_1_atagi_2']"/>
	<xsl:template match="Hero[@id='lord_1_atagi_3']"/>
	<xsl:template match="Hero[@id='lord_1_atagi_4']"/>
	<!-- Ashikaga Faction Ashikaga Clan -->
	<xsl:template match="Hero[@id='dead_lord_1_ashikaga_2']"/>
	<xsl:template match="Hero[@id='dead_lord_1_ashikaga_3']"/>
	<xsl:template match="Hero[@id='dead_lord_1_ashikaga_4']"/>
	<xsl:template match="Hero[@id='dead_lord_1_ashikaga_5']"/>
	<xsl:template match="Hero[@id='lord_1_ashikaga_6']"/>
	<!-- Hosokawa Clan -->
	<xsl:template match="Hero[@id='lord_1_hosokawa']"/>
	<xsl:template match="Hero[@id='lord_1_hosokawa_1']"/>
	<xsl:template match="Hero[@id='lord_1_hosokawa_2']"/>
	<xsl:template match="Hero[@id='lord_1_hosokawa_3']"/>
	<xsl:template match="Hero[@id='lord_1_hosokawa_4']"/>
	<xsl:template match="Hero[@id='lord_1_hosokawa_5']"/>
	<!-- Issiki Clan -->
	<xsl:template match="Hero[@id='lord_1_issiki']"/>
	<xsl:template match="Hero[@id='lord_1_issiki_1']"/>
	<xsl:template match="Hero[@id='dead_lord_1_issiki_2']"/>
	<xsl:template match="Hero[@id='dead_lord_1_issiki_3']"/>
	<xsl:template match="Hero[@id='lord_1_issiki_4']"/>
	<xsl:template match="Hero[@id='lord_1_issiki_5']"/>
	<xsl:template match="Hero[@id='lord_1_issiki_6']"/>
	<!-- Yamana Clan -->
	<xsl:template match="Hero[@id='lord_1_yamana']"/>
	<xsl:template match="Hero[@id='lord_1_yamana_1']"/>
	<xsl:template match="Hero[@id='dead_lord_1_yamana_2']"/>
	<xsl:template match="Hero[@id='lord_1_yamana_3']"/>
	<xsl:template match="Hero[@id='lord_1_yamana_4']"/>
	<!-- Hatakeyama Faction -->
	<!-- Hatakeyama Clan -->
	<xsl:template match="Hero[@id='lord_1_hatakeyama']"/>
	<xsl:template match="Hero[@id='dead_lord_1_hatakeyama_1']"/>
	<xsl:template match="Hero[@id='dead_lord_1_hatakeyama_2']"/>
	<xsl:template match="Hero[@id='lord_1_hatakeyama_3']"/>
	<xsl:template match="Hero[@id='lord_1_hatakeyama_4']"/>
	<xsl:template match="Hero[@id='lord_1_hatakeyama_5']"/>
	<xsl:template match="Hero[@id='lord_1_hatakeyama_6']"/>
	<!-- Yasumi Clan -->
	<xsl:template match="Hero[@id='lord_1_yasumi']"/>
	<xsl:template match="Hero[@id='lord_1_yasumi_1']"/>
	<xsl:template match="Hero[@id='lord_1_yasumi_2']"/>
	<xsl:template match="Hero[@id='lord_1_yasumi_3']"/>
	<xsl:template match="Hero[@id='lord_1_yasumi_4']"/>
	<!-- Yukawa Clan -->
	<xsl:template match="Hero[@id='lord_1_yukawa']"/>
	<xsl:template match="Hero[@id='lord_1_yukawa_1']"/>
	<xsl:template match="Hero[@id='dead_lord_1_yukawa_2']"/>
	<xsl:template match="Hero[@id='dead_lord_1_yukawa_3']"/>
	<xsl:template match="Hero[@id='lord_1_yukawa_4']"/>
	<xsl:template match="Hero[@id='lord_1_yukawa_5']"/>
	<xsl:template match="Hero[@id='lord_1_yukawa_6']"/>
	<!--Ikko Ikki Faction-->
	<!-- Honganji Clan -->
	<xsl:template match="Hero[@id='lord_1_honganji']"/>
	<xsl:template match="Hero[@id='lord_1_honganji_1']"/>
	<xsl:template match="Hero[@id='lord_1_honganji_2']"/>
	<xsl:template match="Hero[@id='lord_1_honganji_3']"/>
	<!-- Ganshoji Clan -->
	<xsl:template match="Hero[@id='lord_1_ganshoji']"/>
	<xsl:template match="Hero[@id='lord_1_ganshoji_1']"/>
	<xsl:template match="Hero[@id='lord_1_ganshoji_2']"/>
	<!-- Rokkaku Faction -->
	<!-- Rokkaku Clan -->
	<xsl:template match="Hero[@id='lord_1_rokkaku']"/>
	<xsl:template match="Hero[@id='lord_1_rokkaku_1']"/>
	<xsl:template match="Hero[@id='lord_1_rokkaku_2']"/>
	<xsl:template match="Hero[@id='lord_1_rokkaku_3']"/>
	<xsl:template match="Hero[@id='lord_1_rokkaku_4']"/>
	<xsl:template match="Hero[@id='lord_1_rokkaku_5']"/>
	<!-- Gamou Clan -->
	<xsl:template match="Hero[@id='lord_1_gamou']"/>
	<xsl:template match="Hero[@id='lord_1_gamou_1']"/>
	<xsl:template match="Hero[@id='lord_1_gamou_2']"/>
	<xsl:template match="Hero[@id='lord_1_gamou_3']"/>
	<xsl:template match="Hero[@id='lord_1_gamou_4']"/>
	<xsl:template match="Hero[@id='lord_1_gamou_5']"/>
	<!-- Azai Faction -->
	<!-- Azai Clan -->
	<xsl:template match="Hero[@id='lord_1_azai']"/>
	<xsl:template match="Hero[@id='lord_1_azai_1']"/>
	<xsl:template match="Hero[@id='lord_1_azai_2']"/>
	<xsl:template match="Hero[@id='lord_1_azai_3']"/>
	<xsl:template match="Hero[@id='lord_1_azai_4']"/>
	<xsl:template match="Hero[@id='lord_1_azai_5']"/>
	<!--Todo Clan-->
	<xsl:template match="Hero[@id='lord_1_todo']"/>
	<xsl:template match="Hero[@id='lord_1_todo_1']"/>
	<xsl:template match="Hero[@id='lord_1_todo_2']"/>
	<xsl:template match="Hero[@id='lord_1_todo_3']"/>
	<xsl:template match="Hero[@id='lord_1_todo_4']"/>
	<xsl:template match="Hero[@id='lord_1_todo_5']"/>
	<!--Isono Clan-->
	<xsl:template match="Hero[@id='lord_1_isono']"/>
	<xsl:template match="Hero[@id='lord_1_isono_1']"/>
	<xsl:template match="Hero[@id='lord_1_isono_2']"/>
	<xsl:template match="Hero[@id='lord_1_isono_3']"/>
	<!-- Akao Clan -->
	<xsl:template match="Hero[@id='lord_1_akao']"/>
	<xsl:template match="Hero[@id='lord_1_akao_1']"/>
	<xsl:template match="Hero[@id='lord_1_akao_2']"/>
	<xsl:template match="Hero[@id='lord_1_akao_3']"/>
	<!-- Oda Faction
 Oda Clan -->
	<xsl:template match="Hero[@id='lord_1_oda']"/>
	<xsl:template match="Hero[@id='lord_1_oda_1']"/>
	<xsl:template match="Hero[@id='dead_lord_1_oda_2']"/>
	<xsl:template match="Hero[@id='lord_1_oda_3']"/>
	<xsl:template match="Hero[@id='lord_1_oda_4']"/>
	<xsl:template match="Hero[@id='lord_1_oda_5']"/>
	<xsl:template match="Hero[@id='lord_1_oda_6']"/>
	<xsl:template match="Hero[@id='lord_1_oda_7']"/>
	<xsl:template match="Hero[@id='lord_1_oda_8']"/>
	<xsl:template match="Hero[@id='lord_1_oda_9']"/>
	<xsl:template match="Hero[@id='lord_1_oda_10']"/>
	<xsl:template match="Hero[@id='lord_1_oda_11']"/>
	<!--	Kinoshita (Toyotomi) Clan-->
	<xsl:template match="Hero[@id='lord_1_kinoshita']"/>
	<xsl:template match="Hero[@id='lord_1_kinoshita_1']"/>
	<xsl:template match="Hero[@id='dead_lord_1_kinoshita_2']"/>
	<xsl:template match="Hero[@id='lord_1_kinoshita_3']"/>
	<xsl:template match="Hero[@id='lord_1_kinoshita_4']"/>
	<xsl:template match="Hero[@id='lord_1_kinoshita_5']"/>
	<xsl:template match="Hero[@id='lord_1_kinoshita_6']"/>
	<xsl:template match="Hero[@id='lord_1_kinoshita_7']"/>
	<xsl:template match="Hero[@id='lord_1_kinoshita_8']"/>
	<xsl:template match="Hero[@id='lord_1_kinoshita_9']"/>
	<!-- Shibata Clan -->
	<xsl:template match="Hero[@id='lord_1_shibata']"/>
	<xsl:template match="Hero[@id='lord_1_shibata_1']"/>
	<xsl:template match="Hero[@id='lord_1_shibata_2']"/>
	<xsl:template match="Hero[@id='lord_1_shibata_3']"/>
	<xsl:template match="Hero[@id='lord_1_shibata_4']"/>
	<xsl:template match="Hero[@id='lord_1_shibata_5']"/>
	<xsl:template match="Hero[@id='lord_1_shibata_6']"/>
	<!-- Sakuma Clan -->
	<xsl:template match="Hero[@id='lord_1_sakuma']"/>
	<xsl:template match="Hero[@id='lord_1_sakuma_1']"/>
	<xsl:template match="Hero[@id='dead_lord_1_sakuma_2']"/>
	<xsl:template match="Hero[@id='lord_1_sakuma_3']"/>
	<xsl:template match="Hero[@id='lord_1_sakuma_4']"/>
	<xsl:template match="Hero[@id='lord_1_sakuma_5']"/>
	<!-- Takigawa Clan -->
	<xsl:template match="Hero[@id='lord_1_takigawa']"/>
	<xsl:template match="Hero[@id='lord_1_takigawa_1']"/>
	<xsl:template match="Hero[@id='lord_1_takigawa_2']"/>
	<xsl:template match="Hero[@id='lord_1_takigawa_3']"/>
	<xsl:template match="Hero[@id='lord_1_takigawa_4']"/>
	<xsl:template match="Hero[@id='lord_1_takigawa_5']"/>
	<!-- Kuki Clan -->
	<xsl:template match="Hero[@id='lord_1_kuki']"/>
	<xsl:template match="Hero[@id='lord_1_kuki_1']"/>
	<xsl:template match="Hero[@id='lord_1_kuki_2']"/>
	<xsl:template match="Hero[@id='lord_1_kuki_3']"/>
	<!-- Kitabatake Clan -->
	<xsl:template match="Hero[@id='lord_1_kitabatake']"/>
	<xsl:template match="Hero[@id='lord_1_kitabatake_1']"/>
	<xsl:template match="Hero[@id='dead_lord_1_kitabatake_2']"/>
	<xsl:template match="Hero[@id='dead_lord_1_kitabatake_3']"/>
	<xsl:template match="Hero[@id='lord_1_kitabatake_4']"/>
	<xsl:template match="Hero[@id='lord_1_kitabatake_5']"/>
	<xsl:template match="Hero[@id='lord_1_kitabatake_6']"/>
	<xsl:template match="Hero[@id='lord_1_kitabatake_7']"/>
	<xsl:template match="Hero[@id='lord_1_kitabatake_8']"/>
	<xsl:template match="Hero[@id='lord_1_kitabatake_9']"/>
	<xsl:template match="Hero[@id='lord_1_kitabatake_10']"/>
	<xsl:template match="Hero[@id='lord_1_kitabatake_11']"/>
	<xsl:template match="Hero[@id='lord_1_kitabatake_12']"/>
	<xsl:template match="Hero[@id='lord_1_kitabatake_13']"/>
</xsl:stylesheet>