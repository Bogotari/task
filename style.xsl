<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>XML Viewer</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            margin: 20px;
            line-height: 1.6;
          }
          .element {
            margin-left: 20px;
          }
          .element > .name {
            font-weight: bold;
          }
        </style>
      </head>
      <body>
        <h1>XML Content</h1>
        <div class="content">
          <xsl:apply-templates/>
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="*">
    <div class="element">
      <span class="name">
        <xsl:value-of select="name()"/>:
      </span>
      <span class="value">
        <xsl:apply-templates/>
      </span>
    </div>
  </xsl:template>

  <xsl:template match="text()">
    <xsl:value-of select="normalize-space()"/>
  </xsl:template>
</xsl:stylesheet>
