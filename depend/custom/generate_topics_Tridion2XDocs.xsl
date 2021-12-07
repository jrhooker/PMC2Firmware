<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:db="http://docbook.org/ns/docbook"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
  xmlns:xi="http://www.w3.org/2001/XInclude"
  xmlns:opentopic-i18n="http://www.idiominc.com/opentopic/i18n"
  xmlns:opentopic-index="http://www.idiominc.com/opentopic/index"
  xmlns:opentopic="http://www.idiominc.com/opentopic"
  xmlns:opentopic-func="http://www.idiominc.com/opentopic/exsl/function"
  xmlns:date="http://exslt.org/dates-and-times"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    
 <xsl:import href="filtering-attribute-resolver.xsl"/>
  
   <xsl:param name="STARTING-DIR"/>

 <xsl:output method="xml" media-type="text/xml" indent="yes" encoding="UTF-8"
    doctype-public="-//OASIS//DTD DITA Topic//EN" doctype-system="topic.dtd"/> 

  <xsl:variable name="STARTING-DIR-VAR">
    <xsl:choose>
      <xsl:when test="contains($STARTING-DIR, 'c:')">
        <xsl:value-of select="translate(substring-after($STARTING-DIR, 'c:'), '\', '/')"/>
      </xsl:when>
      <xsl:when test="contains($STARTING-DIR, 'C:')">
        <xsl:value-of select="translate(substring-after($STARTING-DIR, 'C:'), '\', '/')"/>
      </xsl:when>
      <xsl:when test="contains($STARTING-DIR, 'd:')">
        <xsl:value-of select="translate(substring-after($STARTING-DIR, 'd:'), '\', '/')"/>
      </xsl:when>
      <xsl:when test="contains($STARTING-DIR, 'D:')">
        <xsl:value-of select="translate(substring-after($STARTING-DIR, 'D:'), '\', '/')"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="translate($STARTING-DIR, '\', '/')"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>

  <xsl:param name="OUTPUT-DIR"/>

  <xsl:variable name="OUTPUT-DIR-VAR">
    <xsl:choose>
      <xsl:when test="contains($OUTPUT-DIR, 'c:')">
        <xsl:value-of select="translate(substring-after($OUTPUT-DIR, 'c:'), '\', '/')"/>
      </xsl:when>
      <xsl:when test="contains($OUTPUT-DIR, 'C:')">
        <xsl:value-of select="translate(substring-after($OUTPUT-DIR, 'C:'), '\', '/')"/>
      </xsl:when>
      <xsl:when test="contains($OUTPUT-DIR, 'd:')">
        <xsl:value-of select="translate(substring-after($OUTPUT-DIR, 'd:'), '\', '/')"/>
      </xsl:when>
      <xsl:when test="contains($OUTPUT-DIR, 'D:')">
        <xsl:value-of select="translate(substring-after($OUTPUT-DIR, 'D:'), '\', '/')"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="translate($OUTPUT-DIR, '\', '/')"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>

  <xsl:param name="FILENAME"/>
 
  <xsl:template match="/">

    <xsl:message>Path to project: <xsl:value-of select="$STARTING-DIR-VAR"/></xsl:message>
    <xsl:message>Path to output: <xsl:value-of select="$OUTPUT-DIR-VAR"/></xsl:message>
    <xsl:message>FILENAME: <xsl:value-of select="$FILENAME"/></xsl:message>

    <xsl:apply-templates/>

  </xsl:template>

  <xsl:template match="*">
    <xsl:copy>
      <xsl:copy-of select="@*"/>
      <xsl:apply-templates/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="ul | ol | li | p" mode="field-desc">
    <xsl:element name="{name()}">   
      <xsl:call-template name="filtering-attribute-management"/>
      <xsl:apply-templates mode="field-desc"/>    
    </xsl:element>
  </xsl:template>
  
  <xsl:template match="enumvalue | headerfile-name" mode="field-desc">
    <xsl:element name="ph">   
      <xsl:call-template name="filtering-attribute-management"/>
      <xsl:apply-templates mode="field-desc"/>    
    </xsl:element>
  </xsl:template>


  <xsl:template name="calc-bitwidth">
    <xsl:choose>
      <xsl:when test="position/single">1</xsl:when>
      <xsl:when test="position/double">
        <xsl:variable name="lsb" select="position/double/lsb"/>
        <xsl:variable name="msb" select="position/double/msb"/>
        <xsl:value-of select="number($msb) - number($lsb) + 1"/>
      </xsl:when>
      <xsl:otherwise>InvalidBitValue</xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="calc-dwordoffset">
    <xsl:choose>
      <xsl:when test="position/single">
        <xsl:value-of select="number(position/single)"/>
      </xsl:when>
      <xsl:when test="position/double">
        <xsl:variable name="lsb" select="position/double/lsb"/>
        <xsl:value-of select="number($lsb)"/>
      </xsl:when>
      <xsl:otherwise>InvalidBitValue</xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="calc-dwordnumberwidth">
    <xsl:choose>
      <xsl:when test="not(contains(value, ':'))">1</xsl:when>
      <xsl:otherwise>
        <xsl:variable name="value1" select="number(substring-before(normalize-space(value), ':'))"/>
        <xsl:variable name="value2" select="number(substring-after(normalize-space(value), ':'))"/>
        <xsl:choose>
          <xsl:when test="number($value1) &gt; number($value2)">
            <xsl:value-of select="number($value1) - number($value2) + 1"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="number($value2) - number($value1) + 1"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="calc-dwordnumberoffset">
    <xsl:choose>
      <xsl:when test="not(contains(value, ':'))">
        <xsl:value-of select="number(normalize-space(value))"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="value1" select="number(substring-before(normalize-space(value), ':'))"/>
        <xsl:variable name="value2" select="number(substring-after(normalize-space(value), ':'))"/>
        <xsl:choose>
          <xsl:when test="number($value1) &gt; number($value2)">
            <xsl:value-of select="number($value2)"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="number($value1)"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

   <xsl:template match="*" mode="copy">
    <xsl:copy>
      <xsl:copy-of select="@*"/>
      <xsl:apply-templates mode="copy"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="*" mode="copy-address-table">
    <xsl:copy>
      <xsl:copy-of select="@*"/>
      <xsl:apply-templates mode="copy-address-table"/>
    </xsl:copy>
  </xsl:template>


  <xsl:template name="process-ditamap">
    <xsl:param name="href"/>
    <xsl:param name="href-prefix"/>
    <xsl:variable name="reg-file-name" select="concat('/', @id)"/>
    <xsl:variable name="input-directory" select="concat($STARTING-DIR-VAR, $href-prefix, $href)"/>
    <xsl:message>INPUT DIRECTORY: <xsl:value-of select="$input-directory"/></xsl:message>
    <xsl:variable name="document" select="document($input-directory)"/>
    <xsl:variable name="path-out">
      <xsl:variable name="path-out">
        <xsl:call-template name="process-path">
          <xsl:with-param name="href" select="$href"/>
        </xsl:call-template>
      </xsl:variable>
    </xsl:variable>
    <xsl:message>TITLE2: <xsl:value-of select="@id"/>
    </xsl:message>
    <xsl:result-document href="{concat($OUTPUT-DIR-VAR, $path-out, $reg-file-name)}">
      <xsl:element name="topic">
        <xsl:attribute name="id" select="@id"/>
        <xsl:element name="title">
          <xsl:value-of select="title"/>
        </xsl:element>
      </xsl:element>
    </xsl:result-document>
  </xsl:template>

  <xsl:template name="process-path">
    <xsl:param name="href"/>
    <xsl:choose>
      <xsl:when test="contains($href, '/')">
        <xsl:value-of
          select="translate(substring($href, 1, index-of(string-to-codepoints($href), string-to-codepoints('/'))[last()] - 1), '/', '')"
        />
      </xsl:when>
      <xsl:otherwise/>
    </xsl:choose>
  </xsl:template>


</xsl:stylesheet>
