<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>XML Viewer</title>
      </head>
      <body>
        <h1>XML Content</h1>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="*">
    <div>
      <strong><xsl:value-of select="name()"/>:</strong>
      <xsl:apply-templates/>
    </div>
  </xsl:template>
</xsl:stylesheet>
