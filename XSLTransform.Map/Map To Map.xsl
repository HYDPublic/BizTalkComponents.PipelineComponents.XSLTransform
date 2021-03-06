<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var" version="1.0" xmlns:ns0="http://XSLTransform.Schema.Schema">
  <xsl:include href="test-include.xsl"/>
  <xsl:param name="static"/>
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/ns0:MotherOf_x0020_ALLRoots" />
  </xsl:template>
  <xsl:template match="/ns0:MotherOf_x0020_ALLRoots">
    <ns0:Targhet>
      <Record>
        <ID>
          <xsl:call-template name="include"/><xsl:value-of select="Record/ID/text()" />|<xsl:value-of select="$static"/>
        </ID>
        <MessageID>
          <xsl:choose>
            <xsl:when test="function-available('msxsl:Read')">

              <xsl:value-of select="msxsl:Read('MessageID')" />
            </xsl:when>
            <xsl:otherwise>
              <xsl:text>ms xsl</xsl:text>
            </xsl:otherwise>
          </xsl:choose>
        </MessageID>
      </Record>
    </ns0:Targhet>
  </xsl:template>
</xsl:stylesheet>