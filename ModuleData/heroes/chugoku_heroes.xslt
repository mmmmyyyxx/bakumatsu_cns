<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
	<!--mori kingdom-->
	<!--Mori clan-->
	<xsl:template match="Hero[@id='lord_1_mori']"/>
	<xsl:template match="Hero[@id='lord_1_mori_1']"/>
	<xsl:template match="Hero[@id='lord_1_mori_2']"/>
	<xsl:template match="Hero[@id='lord_1_mori_3']"/>
	<xsl:template match="Hero[@id='lord_1_mori_4']"/>
	<xsl:template match="Hero[@id='lord_1_mori_5']"/>
	<xsl:template match="Hero[@id='lord_1_mori_6']"/>
	<xsl:template match="Hero[@id='lord_1_kobayakawa_1']"/>
	<xsl:template match="Hero[@id='dead_lord_1_nanjo_1']"/>
	<xsl:template match="Hero[@id='dead_lord_1_nanjo_2']"/>
	<xsl:template match="Hero[@id='lord_1_nanjo_4']"/>
	<xsl:template match="Hero[@id='lord_1_nanjo_5']"/>
	<xsl:template match="Hero[@id='lord_1_nanjo_6']"/>
	<xsl:template match="Hero[@id='lord_1_nanjo_7']"/>
	<xsl:template match="Hero[@id='lord_1_nanjo_8']"/>
	<xsl:template match="Hero[@id='lord_1_amano_3']"/>
	<xsl:template match="Hero[@id='lord_1_amano_5']"/>
	<xsl:template match="Hero[@id='lord_1_amano_6']"/>
	<xsl:template match="Hero[@id='lord_1_amano_7']"/>
	<xsl:template match="Hero[@id='lord_1_amano_8']"/>
	<!--kobayakawa clan-->
	<xsl:template match="Hero[@id='lord_1_kobayakawa']"/>
	<xsl:template match="Hero[@id='lord_1_amano_4']"/>
	<!--kikkawa clan-->
	<xsl:template match="Hero[@id='lord_1_kikkawa']"/>
	<xsl:template match="Hero[@id='lord_1_kikkawa_1']"/>
	<xsl:template match="Hero[@id='lord_1_kikkawa_2']"/>
	<xsl:template match="Hero[@id='lord_1_kikkawa_3']"/>
	<xsl:template match="Hero[@id='lord_1_kikkawa_4']"/>
	<xsl:template match="Hero[@id='lord_1_kikkawa_5']"/>
	<xsl:template match="Hero[@id='lord_1_kikkawa_6']"/>
	<xsl:template match="Hero[@id='lord_1_kikkawa_7']"/>
	<!--Yoshimi clan-->
	<xsl:template match="Hero[@id='lord_1_yoshimi']"/>
	<xsl:template match="Hero[@id='lord_1_yoshimi_1']"/>
	<xsl:template match="Hero[@id='lord_1_yoshimi_2']"/>
	<xsl:template match="Hero[@id='lord_1_yoshimi_3']"/>
	<xsl:template match="Hero[@id='lord_1_yoshimi_4']"/>
	<xsl:template match="Hero[@id='lord_1_yoshimi_5']"/>
	<!--naito clan-->
	<xsl:template match="Hero[@id='lord_1_naito']"/>
	<xsl:template match="Hero[@id='lord_1_naito_1']"/>
	<xsl:template match="Hero[@id='lord_1_naito_2']"/>
	<xsl:template match="Hero[@id='lord_1_kikkawa_8']"/>
	<xsl:template match="Hero[@id='lord_1_kikkawa_9']"/>
	<xsl:template match="Hero[@id='lord_1_kikkawa_10']"/>
	<xsl:template match="Hero[@id='lord_1_kikkawa_11']"/>
	<xsl:template match="Hero[@id='lord_1_kikkawa_12']"/>
	<!--Mori Retainers-->
	<xsl:template match="Hero[@id='lord_1_nanjo']"/>
	<xsl:template match="Hero[@id='lord_1_nanjo_1']"/>
	<xsl:template match="Hero[@id='lord_1_nanjo_2']"/>
	<xsl:template match="Hero[@id='lord_1_nanjo_3']"/>
	<!--Fukuhari clan-->
	<xsl:template match="Hero[@id='lord_1_misawa']"/>
	<xsl:template match="Hero[@id='lord_1_misawa_1']"/>
	<xsl:template match="Hero[@id='lord_1_misawa_2']"/>
	<xsl:template match="Hero[@id='lord_1_misawa_3']"/>
	<!--Amano clan-->
	<xsl:template match="Hero[@id='lord_1_amano']"/>
	<xsl:template match="Hero[@id='lord_1_amano_1']"/>
	<xsl:template match="Hero[@id='lord_1_amano_2']"/>
	<!--Murakami clan-->
	<xsl:template match="Hero[@id='lord_1_murakami']"/>
	<xsl:template match="Hero[@id='lord_1_murakami_1']"/>
	<xsl:template match="Hero[@id='lord_1_murakami_2']"/>
	<xsl:template match="Hero[@id='lord_1_murakami_3']"/>
	<xsl:template match="Hero[@id='lord_1_murakami_4']"/>
	<xsl:template match="Hero[@id='lord_1_murakami_5']"/>
	<xsl:template match="Hero[@id='lord_1_murakami_6']"/>
	<xsl:template match="Hero[@id='lord_1_murakami_7']"/>
	<xsl:template match="Hero[@id='lord_1_murakami_8']"/>
	<!--kawano clan-->
	<xsl:template match="Hero[@id='lord_1_kawano']"/>
	<xsl:template match="Hero[@id='lord_1_kawano_1']"/>
	<xsl:template match="Hero[@id='lord_1_kawano_2']"/>
	<xsl:template match="Hero[@id='dead_lord_1_kawano_1']"/>
	<xsl:template match="Hero[@id='dead_lord_1_kawano_2']"/>
	<!-- Hiroshima han -->
	<!-- Asano -->
	<xsl:template match="Hero[@id='lord_1_uragami']"/>
	<xsl:template match="Hero[@id='lord_1_uragami_1']"/>
	<xsl:template match="Hero[@id='lord_1_uragami_2']"/>
	<xsl:template match="Hero[@id='lord_1_uragami_3']"/>
	<xsl:template match="Hero[@id='dead_lord_1_ukita_1']"/>
	<xsl:template match="Hero[@id='dead_lord_1_ukita_2']"/>
	<xsl:template match="Hero[@id='lord_1_ukita_4']"/>
	<xsl:template match="Hero[@id='lord_1_ukita_5']"/>
	<xsl:template match="Hero[@id='lord_1_ukita_6']"/>
	<xsl:template match="Hero[@id='lord_1_ukita_7']"/>
	<!-- Mihara Asano -->
	<xsl:template match="Hero[@id='lord_1_ukita']"/>
	<xsl:template match="Hero[@id='lord_1_ukita_1']"/>
	<xsl:template match="Hero[@id='lord_1_ukita_2']"/>
	<xsl:template match="Hero[@id='lord_1_ukita_3']"/>
	<!-- Tojo Asano -->
	<xsl:template match="Hero[@id='lord_1_ukita_8']"/>
	<xsl:template match="Hero[@id='lord_1_ukita_9']"/>
	<xsl:template match="Hero[@id='lord_1_ukita_10']"/>
	<xsl:template match="Hero[@id='lord_1_ukita_11']"/>
	<!-- Ueda -->
	<xsl:template match="Hero[@id='lord_1_akashi']"/>
	<xsl:template match="Hero[@id='lord_1_akashi_1']"/>
	<xsl:template match="Hero[@id='lord_1_akashi_2']"/>
	<xsl:template match="Hero[@id='lord_1_akashi_3']"/>
	<xsl:template match="Hero[@id='lord_1_akashi_4']"/>
	<!-- Matsue kingdom-->
	<!-- Matsue Matsudaira clan-->
	<xsl:template match="Hero[@id='lord_1_amago']"/>
	<xsl:template match="Hero[@id='lord_1_amago_1']"/>
	<xsl:template match="Hero[@id='lord_1_amago_2']"/>
	<xsl:template match="Hero[@id='dead_lord_1_amago_1']"/>
	<xsl:template match="Hero[@id='dead_lord_1_amago_2']"/>
	<!-- Mori Matsudaira clan-->
	<xsl:template match="Hero[@id='lord_1_yamanaka']"/>
	<xsl:template match="Hero[@id='dead_lord_1_yamanaka_1']"/>
	<xsl:template match="Hero[@id='dead_lord_1_yamanaka_2']"/>
	<!-- Hirose Matsudaira clan-->
	<xsl:template match="Hero[@id='lord_1_tatsuhara']"/>
	<xsl:template match="Hero[@id='lord_1_tatsuhara_1']"/>
	<xsl:template match="Hero[@id='lord_1_tatsuhara_2']"/>
	<xsl:template match="Hero[@id='lord_1_tatsuhara_3']"/>
	<!-- Ochi Matsudaira -->
	<xsl:template match="Hero[@id='lord_1_amago_3']"/>
	<xsl:template match="Hero[@id='lord_1_yamanaka_1']"/>
	<xsl:template match="Hero[@id='lord_1_yamanaka_2']"/>
</xsl:stylesheet>