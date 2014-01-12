<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match='/'>
	<html>
		<center><p><b><FONT FACE='Magneto' SIZE='8' COLOR='000000'>BOXEO DREAMS</FONT></b></p>
		<xsl:apply-templates /></center>
   </html>
</xsl:template>
<xsl:template match='*/boxer'>
	<head><title>Boxeo</title></head>
	<body BGCOLOR="C0C0C0">
		<b><FONT FACE='Rockwell Extra Bold' SIZE='10' COLOR='DARK BLUE'><xsl:value-of select='tipo' /></FONT></b>
		<table>
			<tr><th><b><FONT FACE='Magneto' SIZE='4' COLOR='FFFFFF'>Nombre</FONT></b></th>
			<th><b><FONT FACE='Magneto' SIZE='4' COLOR='FFFFFF'>Apellido</FONT></b></th>
			<th><b><FONT FACE='Magneto' SIZE='4' COLOR='FFFFFF'>Edad</FONT></b></th>
			<th><b><FONT FACE='Magneto' SIZE='4' COLOR='FFFFFF'>Edad</FONT></b></th>
			<th><b><FONT FACE='Magneto' SIZE='4' COLOR='FFFFFF'>Edad</FONT></b></th>
			<th><b><FONT FACE='Magneto' SIZE='4' COLOR='FFFFFF'>Talla</FONT></b></th>
			<th><b><FONT FACE='Magneto' SIZE='4' COLOR='FFFFFF'>TOTAL</FONT></b></th>
			<th><b><FONT FACE='Magneto' SIZE='4' COLOR='FFFFFF'>V</FONT></b></th>
			<th><b><FONT FACE='Magneto' SIZE='4' COLOR='FFFFFF'>D</FONT></b></th>
			<th><b><FONT FACE='Magneto' SIZE='4' COLOR='FFFFFF'>E</FONT></b></th>
			<th><b><FONT FACE='Magneto' SIZE='4' COLOR='FFFFFF'>KO</FONT></b></th></tr>
			<xsl:apply-templates select='boxe' />		
		</table>
	</body>
</xsl:template>

<xsl:template match='boxe'>
	<tr><xsl:apply-templates /></tr>
</xsl:template>

<xsl:template match='nombre|apellido|mote|pais|edad|talla|t|v|d|e|ko'>
	<td><FONT FACE='Bauhaus 93' COLOR='FFFFFF'><xsl:apply-templates />--</FONT></td>
</xsl:template>
	
	 
</xsl:stylesheet>
