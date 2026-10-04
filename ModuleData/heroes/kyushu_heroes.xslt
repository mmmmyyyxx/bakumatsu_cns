<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
	<xsl:template match="Hero[@id='lord_1_shimazu']"/>
	<xsl:template match="Hero[@id='lord_1_shimazu_1']"/>
	<xsl:template match="Hero[@id='lord_1_shimazu_2']"/>
	<xsl:template match="Hero[@id='lord_1_shimazu_3']"/>
	<xsl:template match="Hero[@id='lord_1_shimazu_5']"/>
	<xsl:template match="Hero[@id='lord_1_shimazu_6']"/>
	<xsl:template match="Hero[@id='lord_1_shimazu_7']"/>
	<xsl:template match="Hero[@id='lord_1_shimazu_9']"/>
	<xsl:template match="Hero[@id='lord_1_shimazu_10']"/>
	<xsl:template match="Hero[@id='lord_3_shimazu']"/>
	<xsl:template match="Hero[@id='lord_1_shimazu_11']"/>
	<xsl:template match="Hero[@id='dead_lord_1_shimazu_2']"/>
	<xsl:template match="Hero[@id='lord_1_shimazu_4']"/>
	<xsl:template match="Hero[@id='lord_1_shimazu_8']"/>
	<!-- Clan Tanegashima 2 ids-->
	<xsl:template match="Hero[@id='lord_1_tanegashima']"/>
	<xsl:template match="Hero[@id='lord_1_tanegashima_2']"/>
	<!-- Clan Saigo 16 ids-->
	<xsl:template match="Hero[@id='dead_lord_b_saigo']"/>
	<xsl:template match="Hero[@id='dead_lady_b_saigo']"/>
	<xsl:template match="Hero[@id='lord_1_b_saigo']"/>
	<xsl:template match="Hero[@id='lady_01_b_saigo']"/>
	<xsl:template match="Hero[@id='lord_2_b_saigo']"/>
	<xsl:template match="Hero[@id='lady_02_b_saigo']"/>
	<xsl:template match="Hero[@id='lord_3_b_saigo']"/>
	<xsl:template match="Hero[@id='lord_4_b_saigo']"/>
	<xsl:template match="Hero[@id='lady_1_b_saigo']"/>
	<xsl:template match="Hero[@id='lord_01_b_saigo']"/>
	<xsl:template match="Hero[@id='lady_2_b_saigo']"/>
	<xsl:template match="Hero[@id='lady_3_b_saigo']"/>
	<xsl:template match="Hero[@id='lord_1_b_saigo_1']"/>
	<xsl:template match="Hero[@id='lord_01_b_saigo_1']"/>
	<xsl:template match="Hero[@id='lord_01_b_saigo_1']"/>
	<xsl:template match="Hero[@id='lord_01_b_saigo_1']"/>
	<!-- Clan Okubo 16 ids-->
	<xsl:template match="Hero[@id='dead_lord_b_okubo']"/>
	<xsl:template match="Hero[@id='dead_lady_b_okubo']"/>
	<xsl:template match="Hero[@id='lord_1_b_okubo']"/>
	<xsl:template match="Hero[@id='lady_1_b_okubo']"/>
	<xsl:template match="Hero[@id='lord_1_b_okubo_1']"/>
	<xsl:template match="Hero[@id='lord_1_b_okubo_2']"/>
	<xsl:template match="Hero[@id='lady_01_b_okubo']"/>
	<xsl:template match="Hero[@id='lord_01_b_okubo']"/>
	<xsl:template match="Hero[@id='lady_02_b_okubo']"/>
	<xsl:template match="Hero[@id='lord_02_b_okubo']"/>
	<xsl:template match="Hero[@id='lady_03_b_okubo']"/>
	<xsl:template match="Hero[@id='lord_03_b_okubo']"/>
	<xsl:template match="Hero[@id='lord_03_b_okubo_1']"/>
	<xsl:template match="Hero[@id='lord_03_b_okubo_2']"/>
	<xsl:template match="Hero[@id='lady_04_b_okubo']"/>
	<xsl:template match="Hero[@id='lord_04_b_okubo']"/>
	<!-- Clan Kimotsuki 10 ids-->
	<xsl:template match="Hero[@id='lord_1_b_kimotsuki']"/>
	<xsl:template match="Hero[@id='lady_1_b_kimotsuki']"/>
	<xsl:template match="Hero[@id='lord_2_b_kimotsuki']"/>
	<xsl:template match="Hero[@id='lord_1_b_kimotsuki_1']"/>
	<xsl:template match="Hero[@id='lord_3_b_kimotsuki']"/>
	<xsl:template match="Hero[@id='lord_4_b_kimotsuki']"/>
	<xsl:template match="Hero[@id='lord_1_tanegashima_1']"/>
	<xsl:template match="Hero[@id='lord_1_tanegashima_3']"/>
	<xsl:template match="Hero[@id='dead_lord_1_tanegashima_1']"/>
	<xsl:template match="Hero[@id='lord_1_tanegashima_4']"/>
	<!-- Satsuma Retainers ids-->
	<!-- <xsl:template match="Hero[@id='lord_narahara_shigeru']"/>
	<xsl:template match="Hero[@id='lord_beppu_shinsuke']"/>
	<xsl:template match="Hero[@id='lord_kawakami_soroku']"/>
	<xsl:template match="Hero[@id='lord_kawamura_kageaki']"/>
	<xsl:template match="Hero[@id='lord_kirino_toshiaki']"/>
	<xsl:template match="Hero[@id='lord_kuroda_kiyotaka']"/>
	<xsl:template match="Hero[@id='lord_matsukata_masayoshi']"/>
	<xsl:template match="Hero[@id='lord_nishi_tokujiro']"/>
	<xsl:template match="Hero[@id='lord_nozu_michitsura']"/>
	<xsl:template match="Hero[@id='lord_oyama_iwao']"/>
	<xsl:template match="Hero[@id='lord_sakamoto_ryoma']"/>
	<xsl:template match="Hero[@id='lord_takashima_tomonosuke']"/> -->
	<!-- Clan Ijuin 12 ids -->
	<xsl:template match="Hero[@id='lord_1_ijuin_10']"/>
	<xsl:template match="Hero[@id='lord_1_ijuin_11']"/>
	<xsl:template match="Hero[@id='lord_1_ijuin']"/>
	<xsl:template match="Hero[@id='lord_1_ijuin_1']"/>
	<xsl:template match="Hero[@id='lord_1_ijuin_2']"/>
	<xsl:template match="Hero[@id='lord_1_ijuin_3']"/>
	<xsl:template match="Hero[@id='lord_1_ijuin_4']"/>
	<xsl:template match="Hero[@id='lord_1_ijuin_5']"/>
	<xsl:template match="Hero[@id='lord_1_ijuin_6']"/>
	<xsl:template match="Hero[@id='lord_1_ijuin_7']"/>
	<xsl:template match="Hero[@id='lord_1_ijuin_8']"/>
	<xsl:template match="Hero[@id='lord_1_ijuin_9']"/>
	<!-- Clan Kawakami ? ids -->
	<xsl:template match="Hero[@id='lord_1_kawakami']"/>
	<xsl:template match="Hero[@id='lord_1_kawakami_1']"/>
	<xsl:template match="Hero[@id='lord_1_kawakami_2']"/>
	<xsl:template match="Hero[@id='lord_1_kawakami_3']"/>
	<xsl:template match="Hero[@id='lord_1_kawakami_4']"/>
	<xsl:template match="Hero[@id='lord_1_kawakami_5']"/>
	<xsl:template match="Hero[@id='lord_1_kawakami_6']"/>
	<xsl:template match="Hero[@id='dead_lord_1_kawakami_7']"/>
	<xsl:template match="Hero[@id='lord_1_kawakami_8']"/>
	<xsl:template match="Hero[@id='lord_1_kawakami_9']"/>
	<xsl:template match="Hero[@id='lord_1_kawakami_10']"/>
	<xsl:template match="Hero[@id='lord_1_kawakami_11']"/>
	<xsl:template match="Hero[@id='lord_1_kawakami_12']"/>
	<xsl:template match="Hero[@id='lord_1_kawakami_13']"/>
	<xsl:template match="Hero[@id='lord_1_kawakami_14']"/>
	<xsl:template match="Hero[@id='lord_1_kawakami_15']"/>
	<xsl:template match="Hero[@id='lord_1_kawakami_16']"/>
	<!-- DEPRECATED -->
	<!--Clan Hongo 6 ids-->
	<xsl:template match="Hero[@id='lord_1_hongo']"/>
	<xsl:template match="Hero[@id='lord_1_hongo_1']"/>
	<xsl:template match="Hero[@id='lord_1_hongo_2']"/>
	<xsl:template match="Hero[@id='lord_1_hongo_3']"/>
	<xsl:template match="Hero[@id='lord_1_hongo_4']"/>
	<xsl:template match="Hero[@id='lord_1_hongo_5']"/>
	<!--kimotsuki clan 8 ids-->
	<xsl:template match="Hero[@id='lord_1_kimotsuki']"/>
	<xsl:template match="Hero[@id='lord_1_kimotsuki_1']"/>
	<xsl:template match="Hero[@id='lord_1_kimotsuki_2']"/>
	<xsl:template match="Hero[@id='lord_1_kimotsuki_3']"/>
	<xsl:template match="Hero[@id='lord_1_kimotsuki_4']"/>
	<xsl:template match="Hero[@id='lord_1_kimotsuki_5']"/>
	<xsl:template match="Hero[@id='dead_lord_1_kimotsuki_1']"/>
	<xsl:template match="Hero[@id='lord_1_kimotsuki_6']"/>
	<!--uwai clan-->
	<xsl:template match="Hero[@id='lord_1_uwai']"/>
	<xsl:template match="Hero[@id='lord_1_uwai_1']"/>
	<xsl:template match="Hero[@id='lord_1_uwai_2']"/>
	<xsl:template match="Hero[@id='lord_1_uwai_3']"/>
	<xsl:template match="Hero[@id='lord_1_uwai_4']"/>
	<xsl:template match="Hero[@id='lord_1_uwai_5']"/>
	<xsl:template match="Hero[@id='lord_1_uwai_6']"/>
	<xsl:template match="Hero[@id='lord_1_uwai_7']"/>
	<xsl:template match="Hero[@id='lord_1_uwai_8']"/>
	<xsl:template match="Hero[@id='lord_1_uwai_9']"/>
	<!--niro clan-->
	<xsl:template match="Hero[@id='lord_1_niro']"/>
	<xsl:template match="Hero[@id='lord_1_niro_1']"/>
	<xsl:template match="Hero[@id='lord_1_niro_2']"/>
	<xsl:template match="Hero[@id='lord_1_niro_3']"/>
	<xsl:template match="Hero[@id='lord_1_niro_4']"/>
	<xsl:template match="Hero[@id='lord_1_niro_5']"/>
	<xsl:template match="Hero[@id='lord_1_niro_6']"/>
	<xsl:template match="Hero[@id='lord_1_niro_7']"/>
	<xsl:template match="Hero[@id='lord_1_niro_8']"/>
	<!--END OF Shimazu Kingdom-->
	<!--ito kingdom-->
	<!--ito clan 10 ids-->
	<xsl:template match="Hero[@id='lord_1_ito']"/>
	<xsl:template match="Hero[@id='lord_1_ito_1']"/>
	<xsl:template match="Hero[@id='lord_1_ito_2']"/>
	<xsl:template match="Hero[@id='lord_1_ito_3']"/>
	<xsl:template match="Hero[@id='lord_1_ito_4']"/>
	<xsl:template match="Hero[@id='lord_1_ito_5']"/>
	<xsl:template match="Hero[@id='lord_1_ito_6']"/>
	<xsl:template match="Hero[@id='lord_1_ito_7']"/>
	<!--mera clan 8 ids-->
	<xsl:template match="Hero[@id='lord_1_mera']"/>
	<xsl:template match="Hero[@id='lord_1_mera_1']"/>
	<xsl:template match="Hero[@id='lord_1_mera_2']"/>
	<xsl:template match="Hero[@id='lord_1_mera_3']"/>
	<xsl:template match="Hero[@id='lord_1_mera_4']"/>
	<xsl:template match="Hero[@id='lord_1_mera_5']"/>
	<xsl:template match="Hero[@id='lord_1_mera_6']"/>
	<xsl:template match="Hero[@id='lord_1_mera_7']"/>
	<!--nagakura clan 5 ids-->
	<xsl:template match="Hero[@id='lord_1_nagakura']"/>
	<xsl:template match="Hero[@id='lord_1_nagakura_1']"/>
	<xsl:template match="Hero[@id='lord_1_nagakura_2']"/>
	<xsl:template match="Hero[@id='lord_1_nagakura_3']"/>
	<xsl:template match="Hero[@id='lord_1_nagakura_4']"/>
	<!--sagara kingdom-->
	<!--sagara clan 10 ids-->
	<xsl:template match="Hero[@id='lord_1_sagara']"/>
	<xsl:template match="Hero[@id='lord_1_sagara_1']"/>
	<xsl:template match="Hero[@id='lord_1_sagara_2']"/>
	<xsl:template match="Hero[@id='lord_1_sagara_3']"/>
	<xsl:template match="Hero[@id='lord_1_sagara_4']"/>
	<xsl:template match="Hero[@id='lord_1_sagara_5']"/>
	<xsl:template match="Hero[@id='lord_1_sagara_6']"/>
	<xsl:template match="Hero[@id='lord_1_sagara_7']"/>
	<xsl:template match="Hero[@id='dead_lord_1_sagara_1']"/>
	<xsl:template match="Hero[@id='dead_lord_1_sagara_2']"/>
	<!--Indo Clan 6 ids-->
	<xsl:template match="Hero[@id='lord_1_indo']"/>
	<xsl:template match="Hero[@id='lord_1_indo_1']"/>
	<xsl:template match="Hero[@id='lord_1_indo_2']"/>
	<xsl:template match="Hero[@id='lord_1_indo_3']"/>
	<!--Amakusa Clan 9 ids-->
	<xsl:template match="Hero[@id='lord_1_amakusa']"/>
	<xsl:template match="Hero[@id='lord_1_amakusa_1']"/>
	<xsl:template match="Hero[@id='lord_1_amakusa_2']"/>
	<xsl:template match="Hero[@id='lord_1_amakusa_3']"/>
	<xsl:template match="Hero[@id='lord_1_amakusa_4']"/>
	<xsl:template match="Hero[@id='lord_1_amakusa_5']"/>
	<xsl:template match="Hero[@id='lord_1_amakusa_6']"/>
	<!--otomo kingdom-->
	<!--otomo clan 10 ids-->
	<xsl:template match="Hero[@id='lord_1_otomo']"/>
	<xsl:template match="Hero[@id='lord_1_otomo_1']"/>
	<xsl:template match="Hero[@id='lord_1_otomo_2']"/>
	<xsl:template match="Hero[@id='lord_1_otomo_3']"/>
	<xsl:template match="Hero[@id='lord_1_otomo_4']"/>
	<xsl:template match="Hero[@id='lord_1_otomo_5']"/>
	<xsl:template match="Hero[@id='lord_1_otomo_6']"/>
	<xsl:template match="Hero[@id='lord_1_otomo_7']"/>
	<xsl:template match="Hero[@id='dead_lord_1_otomo_1']"/>
	<xsl:template match="Hero[@id='dead_lord_1_otomo_2']"/>
	<!--kii clan 7 ids-->
	<xsl:template match="Hero[@id='lord_1_kii']"/>
	<xsl:template match="Hero[@id='lord_1_kii_1']"/>
	<xsl:template match="Hero[@id='lord_1_kii_2']"/>
	<xsl:template match="Hero[@id='lord_1_kii_3']"/>
	<xsl:template match="Hero[@id='lord_1_kii_4']"/>
	<xsl:template match="Hero[@id='lord_1_kii_5']"/>
	<xsl:template match="Hero[@id='lord_1_kii_6']"/>
	<!--kamachi_clan 8 ids-->
	<xsl:template match="Hero[@id='lord_1_kamachi']"/>
	<xsl:template match="Hero[@id='lord_1_kamachi_1']"/>
	<xsl:template match="Hero[@id='lord_1_kamachi_2']"/>
	<xsl:template match="Hero[@id='lord_1_kamachi_3']"/>
	<xsl:template match="Hero[@id='lord_1_kamachi_4']"/>
	<xsl:template match="Hero[@id='lord_1_kamachi_5']"/>
	<!--Bekki clan 7 ids-->
	<xsl:template match="Hero[@id='lord_1_bekki']"/>
	<xsl:template match="Hero[@id='lord_1_bekki_1']"/>
	<xsl:template match="Hero[@id='lord_1_bekki_2']"/>
	<xsl:template match="Hero[@id='lord_1_bekki_3']"/>
	<xsl:template match="Hero[@id='dead_lord_1_bekki_4']"/>
	<xsl:template match="Hero[@id='dead_lord_1_bekki_5']"/>
	<!--Yoshihiro Clan 11 ids-->
	<xsl:template match="Hero[@id='lord_1_yoshihiro']"/>
	<xsl:template match="Hero[@id='lord_1_yoshihiro_1']"/>
	<xsl:template match="Hero[@id='lord_1_yoshihiro_2']"/>
	<xsl:template match="Hero[@id='lord_1_yoshihiro_3']"/>
	<xsl:template match="Hero[@id='lord_1_yoshihiro_4']"/>
	<xsl:template match="Hero[@id='lord_1_yoshihiro_5']"/>
	<xsl:template match="Hero[@id='lord_1_yoshihiro_6']"/>
	<xsl:template match="Hero[@id='lord_1_yoshihiro_7']"/>
	<xsl:template match="Hero[@id='lord_1_yoshihiro_8']"/>
	<!--Takahashi Clan 8 ids-->
	<xsl:template match="Hero[@id='lord_1_takahashi']"/>
	<xsl:template match="Hero[@id='lord_1_takahashi_1']"/>
	<xsl:template match="Hero[@id='lord_1_takahashi_2']"/>
	<xsl:template match="Hero[@id='lord_1_takahashi_3']"/>
	<xsl:template match="Hero[@id='lord_1_takahashi_4']"/>
	<xsl:template match="Hero[@id='lord_1_takahashi_5']"/>
	<!--aso kingdom-->
	<!--aso clan 6 ids-->
	<xsl:template match="Hero[@id='lord_1_aso']"/>
	<xsl:template match="Hero[@id='lord_1_aso_1']"/>
	<xsl:template match="Hero[@id='lord_1_aso_2']"/>
	<xsl:template match="Hero[@id='lord_1_aso_3']"/>
	<!--kai clan 7 ids-->
	<xsl:template match="Hero[@id='lord_1_kai']"/>
	<xsl:template match="Hero[@id='lord_1_kai_1']"/>
	<xsl:template match="Hero[@id='lord_1_kai_2']"/>
	<xsl:template match="Hero[@id='lord_1_kai_3']"/>
	<xsl:template match="Hero[@id='lord_1_kai_4']"/>
	<!--nawa_clan 7 ids-->
	<xsl:template match="Hero[@id='lord_1_nawa']"/>
	<xsl:template match="Hero[@id='lord_1_nawa_1']"/>
	<xsl:template match="Hero[@id='lord_1_nawa_2']"/>
	<xsl:template match="Hero[@id='lord_1_nawa_3']"/>
	<xsl:template match="Hero[@id='lord_1_nawa_4']"/>
	<!--nishi_clan 7 ids-->
	<xsl:template match="Hero[@id='lord_1_nishi']"/>
	<xsl:template match="Hero[@id='lord_1_nishi_1']"/>
	<xsl:template match="Hero[@id='lord_1_nishi_2']"/>
	<xsl:template match="Hero[@id='lord_1_nishi_3']"/>
	<xsl:template match="Hero[@id='lord_1_nishi_4']"/>
	<xsl:template match="Hero[@id='lord_1_nishi_5']"/>
	<xsl:template match="Hero[@id='lord_1_nishi_6']"/>
	<!--takezaki clan 7 ids-->
	<xsl:template match="Hero[@id='lord_1_takezaki']"/>
	<xsl:template match="Hero[@id='lord_1_takezaki_1']"/>
	<xsl:template match="Hero[@id='lord_1_takezaki_2']"/>
	<xsl:template match="Hero[@id='lord_1_takezaki_3']"/>
	<xsl:template match="Hero[@id='lord_1_takezaki_4']"/>
	<!--arima kingdom-->
	<!--arima clan 9 ids-->
	<xsl:template match="Hero[@id='lord_1_arima']"/>
	<xsl:template match="Hero[@id='lord_1_arima_1']"/>
	<xsl:template match="Hero[@id='lord_1_arima_2']"/>
	<xsl:template match="Hero[@id='lord_1_arima_3']"/>
	<xsl:template match="Hero[@id='lord_1_arima_4']"/>
	<xsl:template match="Hero[@id='lord_1_arima_5']"/>
	<xsl:template match="Hero[@id='lord_1_arima_6']"/>
	<!--omura clan 7 ids-->
	<xsl:template match="Hero[@id='lord_1_omura']"/>
	<xsl:template match="Hero[@id='lord_1_omura_1']"/>
	<xsl:template match="Hero[@id='lord_1_omura_2']"/>
	<xsl:template match="Hero[@id='lord_1_omura_3']"/>
	<xsl:template match="Hero[@id='lord_1_omura_4']"/>
	<!--yasutomi clan-->
	<xsl:template match="Hero[@id='lord_1_yasutomi']"/>
	<xsl:template match="Hero[@id='lord_1_yasutomi_1']"/>
	<xsl:template match="Hero[@id='lord_1_yasutomi_2']"/>
	<xsl:template match="Hero[@id='lord_1_yasutomi_3']"/>
	<xsl:template match="Hero[@id='lord_1_yasutomi_4']"/>
	<xsl:template match="Hero[@id='lord_1_yasutomi_5']"/>
	<xsl:template match="Hero[@id='lord_1_yasutomi_6']"/>
	<xsl:template match="Hero[@id='lord_1_yasutomi_7']"/>
	<xsl:template match="Hero[@id='lord_1_yasutomi_8']"/>
	<!--fukuda clan-->
	<xsl:template match="Hero[@id='lord_1_fukuda']"/>
	<xsl:template match="Hero[@id='lord_1_fukuda_1']"/>
	<xsl:template match="Hero[@id='lord_1_fukuda_2']"/>
	<xsl:template match="Hero[@id='lord_1_fukuda_3']"/>
	<xsl:template match="Hero[@id='lord_1_fukuda_4']"/>
	<xsl:template match="Hero[@id='lord_1_fukuda_5']"/>
	<!--Ryuzoji-->
	<!--Ryuzoji clan 17 ids-->
	<xsl:template match="Hero[@id='lord_1_ryuzoji']"/>
	<xsl:template match="Hero[@id='dead_lord_1_ryuzoji_1']"/>
	<xsl:template match="Hero[@id='lord_1_ryuzoji_2']"/>
	<xsl:template match="Hero[@id='lord_1_ryuzoji_1']"/>
	<xsl:template match="Hero[@id='lord_1_ryuzoji_3']"/>
	<xsl:template match="Hero[@id='lord_1_ryuzoji_4']"/>
	<xsl:template match="Hero[@id='lord_1_ryuzoji_5']"/>
	<xsl:template match="Hero[@id='lord_1_ryuzoji_6']"/>
	<xsl:template match="Hero[@id='lord_1_ryuzoji_7']"/>
	<xsl:template match="Hero[@id='lord_1_ryuzoji_8']"/>
	<xsl:template match="Hero[@id='lord_1_ryuzoji_9']"/>
	<xsl:template match="Hero[@id='lord_1_ryuzoji_10']"/>
	<xsl:template match="Hero[@id='lord_1_ryuzoji_11']"/>
	<xsl:template match="Hero[@id='lord_1_ryuzoji_12']"/>
	<xsl:template match="Hero[@id='lord_1_ryuzoji_13']"/>
	<xsl:template match="Hero[@id='lord_1_ryuzoji_14']"/>
	<xsl:template match="Hero[@id='lord_1_ryuzoji_15']"/>
	<!--Matsuura clan 10 ids-->
	<xsl:template match="Hero[@id='lord_1_matsuura']"/>
	<xsl:template match="Hero[@id='lord_1_matsuura_1']"/>
	<xsl:template match="Hero[@id='lord_1_matsuura_2']"/>
	<xsl:template match="Hero[@id='lord_1_matsuura_3']"/>
	<xsl:template match="Hero[@id='lord_1_matsuura_4']"/>
	<xsl:template match="Hero[@id='lord_1_matsuura_5']"/>
	<xsl:template match="Hero[@id='lord_1_matsuura_6']"/>
	<xsl:template match="Hero[@id='lord_1_matsuura_7']"/>
	<!--nabeshima clan 10 ids-->
	<xsl:template match="Hero[@id='lord_1_nabeshima']"/>
	<xsl:template match="Hero[@id='lord_1_nabeshima_1']"/>
	<xsl:template match="Hero[@id='lord_1_nabeshima_2']"/>
	<xsl:template match="Hero[@id='lord_1_nabeshima_4']"/>
	<xsl:template match="Hero[@id='lord_1_nabeshima_5']"/>
	<xsl:template match="Hero[@id='lord_1_nabeshima_6']"/>
	<xsl:template match="Hero[@id='lord_1_nabeshima_7']"/>
	<!--saigo clan 8 ids-->
	<xsl:template match="Hero[@id='lord_1_saigo']"/>
	<xsl:template match="Hero[@id='lord_1_saigo_1']"/>
	<xsl:template match="Hero[@id='lord_1_saigo_2']"/>
	<xsl:template match="Hero[@id='lord_1_saigo_3']"/>
	<xsl:template match="Hero[@id='lord_1_saigo_4']"/>
	<xsl:template match="Hero[@id='lord_1_saigo_5']"/>
	<!--kumabe clan 11 ids-->
	<xsl:template match="Hero[@id='lord_1_kumabe']"/>
	<xsl:template match="Hero[@id='lord_1_kumabe_1']"/>
	<xsl:template match="Hero[@id='lord_1_kumabe_2']"/>
	<xsl:template match="Hero[@id='lord_1_kumabe_3']"/>
	<xsl:template match="Hero[@id='lord_1_kumabe_4']"/>
	<xsl:template match="Hero[@id='lord_1_kumabe_5']"/>
	<xsl:template match="Hero[@id='lord_1_kumabe_6']"/>
	<xsl:template match="Hero[@id='lord_1_kumabe_7']"/>
	<xsl:template match="Hero[@id='lord_1_kumabe_8']"/>
</xsl:stylesheet>