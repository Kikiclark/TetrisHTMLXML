<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

		<xsl:template match="/">
		<xsl:variable name="BrojTetromina" select="count(//Blok)"/>
		
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Tetromino lista</title>
<link href="default.css" rel="stylesheet" type="text/css" media="all">
</head>
<body>
<div id="wrapper">
	<div id="menu-wrapper">
		<div id="menu" class="wrapperDuljina">
			<ul>
				<li class="trenutnaStranica"><a href="index.html">Početna</a></li>
				<li><a href="ponuda.html">Tetromino lista</a></li>
				<li><a href="kontakt.html">Gdje igrati?</a></li>		
			</ul>
		</div>	
	</div>
	
	</div>
	
	<div id="glavnaStranica" class="wrapperDuljina">
				<xsl:template match="/">
					<xsl:apply-templates select="//Blok"/>
				</xsl:template>
				
				
				<xsl:template match="//Blok">
				<div class="title"><h2><xsl:apply-templates select="Slovo"/></h2></div>
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="SVG"/>
					</xsl:attribute>
				</img>
					<br/>
					<p>Broj Blokova: <b><xsl:apply-templates select="BrojBlokova"/></b></p>
					<p>Rejting: <xsl:apply-templates select="Rejting"/></p>
					<p>Mišljenje: <xsl:apply-templates select="Misljenje"/></p>
					<br/>
				</xsl:template>	

			</body>
		</html>
		
<p></p>
		</div>
		<div id="sidebar">
			<div class="box2">
				<div class="title">
					<h2>Ostale stranice</h2>
				</div>
				<ul class="style2">
					<li class="trenutnaStranica"><a href="index.html">Početna</a></li>
					<li><a href="ponuda.html">Tetromino lista</a></li>
					<li><a href="kontakt.html">Gdje igrati?</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>

<div id="donjiWrapper" class="wrapperDuljina">
	<p>VolimoTetris™</p>
</div>
</body></html>
		
		
		</xsl:template>
</xsl:stylesheet>
