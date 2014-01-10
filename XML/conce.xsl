<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match='/'>
	<html>
		<center><p><b><FONT FACE='Magneto' SIZE='8' COLOR='FFFFFF'>Concesionario S.L.</FONT></b></p>
		<xsl:apply-templates /></center>
   </html>
</xsl:template>
<xsl:template match='*/coches'>
	<head><title>Concesionario</title></head>
	<body BGCOLOR="000000">
		<b><FONT FACE='Rockwell Extra Bold' SIZE='6' COLOR='DARK BLUE'><xsl:value-of select='tipo' /></FONT></b>
		<table>
			<tr><th><b><FONT FACE='Magneto' SIZE='4' COLOR='FFFFFF'>Marca</FONT></b></th>
			<th><b><FONT FACE='Magneto' SIZE='4' COLOR='FFFFFF'>Modelo</FONT></b></th>
			<th><b><FONT FACE='Magneto' SIZE='4' COLOR='FFFFFF'>Año</FONT></b></th>
			<th><b><FONT FACE='Magneto' SIZE='4' COLOR='FFFFFF'>Cilindrada</FONT></b></th>
			<th><b><FONT FACE='Magneto' SIZE='4' COLOR='FFFFFF'>CV</FONT></b></th>
			<th><b><FONT FACE='Magneto' SIZE='4' COLOR='FFFFFF'>Precio</FONT></b></th></tr>
			<xsl:apply-templates select='coche' />		
		</table>
	</body>
</xsl:template>

<xsl:template match='coche'>
	<tr><xsl:apply-templates /></tr>
</xsl:template>

<xsl:template match='marca|modelo|anho|cilindrada|cv|precio'>
	<td><FONT FACE='Bauhaus 93' COLOR='FFFFFF'><xsl:apply-templates />--</FONT></td>
</xsl:template>
	
	 
</xsl:stylesheet>
