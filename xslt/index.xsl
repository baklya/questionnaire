<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="author" content="Matveev Vladimir" />
		<title>Анкета второй Школы разработки интерфейсов в Москве</title>
	</head>
	<body>
		<div id="wrap">
			<div id="header">
				<h1 id="logo-text">Анкета</h1>
				<h2 id="sublogo">второй Школы разработки интерфейсов в Москве</h2>
			</div>
			<div id="content-wrap">
				<div id="main">
					<form id="frm" action="http://example.com/" method="post" name="frm">
						<div id="accordion">
							<xsl:for-each select="questions/question">
								<xsl:variable name="num" select="index"/>
								<h1>Вопрос <xsl:value-of select="$num"/></h1>
								<div>
									<xsl:for-each select="body/*">
										<xsl:if test="name(.) = 'paragraph'">
											<p>
												<xsl:if test="strong">
													<strong><xsl:value-of select="strong"/></strong>
												</xsl:if>
												<xsl:if test="text">
													<xsl:value-of select="text"/>
												</xsl:if>
												<xsl:if test="link">
													<strong><a target="_blank">
														<xsl:attribute name="href"><xsl:value-of select="link" /></xsl:attribute>
														<xsl:value-of select="link"/>
													</a></strong>
												</xsl:if>
												<xsl:if test="radio">
													<input type="radio">
														<xsl:attribute name="id"><xsl:value-of select="radio/idprefix" />_<xsl:value-of select="radio/value" /></xsl:attribute>
														<xsl:attribute name="value"><xsl:value-of select="radio/value" /></xsl:attribute>
														<xsl:attribute name="name"><xsl:value-of select="radio/name" /></xsl:attribute>
													</input>
													<label>
														<xsl:attribute name="for"><xsl:value-of select="radio/idprefix" />_<xsl:value-of select="radio/value" /></xsl:attribute>
														<xsl:value-of select="radio/data"/>
													</label>
												</xsl:if>
												<xsl:if test="composite">
													<strong>
														<xsl:for-each select="composite/*">
															<xsl:if test="name(.) = 'link'">
																<a target="_blank">
																	<xsl:attribute name="href"><xsl:value-of select="." /></xsl:attribute>
																	<xsl:value-of select="."/>
																</a>
															</xsl:if>
															<xsl:if test="name(.) = 'text'">
																<xsl:value-of select="."/>
															</xsl:if>
														</xsl:for-each>
													</strong>
												</xsl:if>
											</p>
										</xsl:if>
										<xsl:if test="name(.) = 'list'">
											<ul>
												<xsl:for-each select="./element">
													<li><p><strong><xsl:value-of select="."/></strong></p></li>
												</xsl:for-each>
											</ul>
										</xsl:if>
									</xsl:for-each>
									<textarea rows="4" cols="80">&#160;<xsl:attribute name="name">q<xsl:value-of select="$num" />_1</xsl:attribute><xsl:attribute name="id">q<xsl:value-of select="$num" />_1</xsl:attribute></textarea>
								</div>
							</xsl:for-each>
						</div>	
						<input class="submit-button" type="submit" value="" alt="Отправить!" title="Отправить!" />
					</form>
				</div>
			</div>
			<div id="footer">
				<p>© 2013</p>
			</div>
		</div>
		<link rel="stylesheet" href="css/style.css" type="text/css" />
		<script src="js/jquery-1.10.2.min.js" type="text/javascript"></script>
		<script src="js/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
		<script src="js/script.js" type="text/javascript"></script>
	</body>
	</html>
</xsl:template>
</xsl:stylesheet>




