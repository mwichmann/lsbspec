<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:doc="http://nwalsh.com/xsl/documentation/1.0"
                exclude-result-prefixes="doc"
                version='1.0'>

<!-- $Progeny: progeny-fo.xsl,v 1.2 2002/01/18 06:21:07 dsp Exp $ -->

<!-- We want to rewrite Norm's FO stylesheet, so import it. -->
<xsl:import href="/usr/share/sgml/docbook/stylesheet/xsl/nwalsh/fo/docbook.xsl"/>

<!-- K&R as the default doesn't work well with Python.
     ANSI has its own Python issues (void), but overall it seems
     preferable.
-->
<xsl:variable name="funcsynopsis.style">ansi</xsl:variable>


<!-- The existing FOP implementation has issues with Norm's TOC.
     Currently, the table of contents is spread across the page, like:

1                      Introduction
    Overview                                        1
2                      Architecture

     and so on.

     When the above is fixed (presumably in FOP), then the toc.line
     template change here is no longer needed.
-->
<xsl:template name="toc.line">
  <xsl:variable name="id">
    <xsl:call-template name="object.id"/>
  </xsl:variable>

  <fo:block text-align-last="start"
            end-indent="2pc"
            last-line-end-indent="-2pc">
    <fo:inline keep-with-next.within-line="always">
      <xsl:apply-templates select="." mode="label.markup"/>
      <xsl:text> </xsl:text>
      <xsl:apply-templates select="." mode="title.markup"/>
    </fo:inline>
    <fo:inline keep-together.within-line="always">
      <xsl:text> </xsl:text>
      <fo:leader leader-pattern="dots"
                 keep-with-next.within-line="always"/>
      <xsl:text> </xsl:text>
      <fo:basic-link internal-destination="{$id}">
<!--                     xsl:use-attribute-sets="xref.properties">-->
        <fo:page-number-citation ref-id="{$id}"/>
      </fo:basic-link>
    </fo:inline>
  </fo:block>
</xsl:template>

</xsl:stylesheet>
