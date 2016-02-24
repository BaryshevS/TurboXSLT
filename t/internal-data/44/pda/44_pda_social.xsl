<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<xsl:template match="biblio_book">
	<xsl:apply-templates select="art" mode="biblio_book"/>
</xsl:template>

<xsl:template match="art" mode="biblio_book">
	<xsl:call-template name="test"/>	
</xsl:template>

<xsl:template name="test">
	<xsl:param name="voted1">1</xsl:param>
	<xsl:param name="voted2">1</xsl:param>
	<xsl:param name="voted3">1</xsl:param>
	<xsl:param name="voted4">1</xsl:param>
	<xsl:param name="voted5">1</xsl:param>
	<div>
		<xsl:attribute name="omg">{omg}</xsl:attribute>
		<xsl:attribute name="data-options">
				{
					show_popup: 12,
					voted: 12,
					votes:[<xsl:value-of select="$voted1"/>, <xsl:value-of select="$voted2"/>, <xsl:value-of select="$voted3"/>, <xsl:value-of select="$voted4"/>, <xsl:value-of select="$voted5"/>],
					mid_vote:1234,
					vote_amount:1234,
					recenses: 123
				}
		</xsl:attribute>
		pda
	</div>
</xsl:template>

	<xsl:template name="wrapper">
		<html>
			<body>
				<div id="wrapper">
					<xsl:call-template name="page-wrap"/>
				</div>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template name="page-wrap">
		<xsl:call-template name="content"/>
	</xsl:template>

</xsl:stylesheet>
