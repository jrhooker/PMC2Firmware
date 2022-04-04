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
 <xsl:import href="generate_topics.xsl"/> 

  <xsl:output method="xml" media-type="text/xml" indent="yes" encoding="UTF-8"
    doctype-public="-//Atmel//DTD DITA FRMWR Component//EN" doctype-system="atmelFrmwrComponent.dtd"/>

  <xsl:template match="topicref | chapter | appendix | topichead" name="topicref">
    <xsl:param name="href-prefix"/>
    <xsl:variable name="topicref-id" select="generate-id()"/>      
        <xsl:if test="document(@href)//headerfile-name">
          <xsl:message>Found an headerfile-name</xsl:message>
          <xsl:call-template name="create-headerfile-topic">
            <xsl:with-param name="href">
              <xsl:value-of select="@href"/>
            </xsl:with-param>
            <xsl:with-param name="href-prefix">
              <xsl:value-of select="$href-prefix"/>
            </xsl:with-param>
          </xsl:call-template>
        </xsl:if>    
        <xsl:if test="contains(@href, '.ditamap')">
          <xsl:message>Found a ditamap</xsl:message>
          <xsl:call-template name="process-ditamap">
            <xsl:with-param name="href">
              <xsl:value-of select="@href"/>
            </xsl:with-param>
            <xsl:with-param name="href-prefix">
              <xsl:value-of select="$href-prefix"/>
            </xsl:with-param>
          </xsl:call-template>
        </xsl:if>           
      <xsl:apply-templates/>
  </xsl:template>

  <xsl:template name="create-headerfile-topic">
    <xsl:param name="href"/>
    <xsl:param name="href-prefix"/>
    <xsl:variable name="input-directory" select="concat($STARTING-DIR-VAR, $href-prefix, $href)"/>
    <xsl:variable name="document" select="document($input-directory)"/>
    <xsl:variable name="path-out">
      <xsl:choose>
        <xsl:when test="contains($href, '/')">
          <xsl:value-of
            select="translate(substring($href, 1, index-of(string-to-codepoints($href), string-to-codepoints('/'))[last()] - 1), '/', '')"
          />
        </xsl:when>
        <xsl:otherwise/>
      </xsl:choose>
    </xsl:variable>
    
    <xsl:variable name="topicref-id">
      <xsl:choose>
        <xsl:when test="contains($href, '/')">
          <xsl:variable name="href-values" select="tokenize($href, '/')"/>
          <xsl:value-of select="$href-values[last()]"/>
        </xsl:when>
        <xsl:otherwise/>
      </xsl:choose>
    </xsl:variable>
    
    <xsl:for-each select="$document//headerfile-name">
      <xsl:variable name="ids" select="$document//@id"/>
      <xsl:variable name="headerfile-file-name"
        select="concat('/', normalize-space(translate(//headerfile-name, ' ', '_')), '.xml')"/>
      <xsl:message>headerfile-name: <xsl:value-of select="normalize-space(translate(title, ' ', '_'))"/>
      </xsl:message>
      <xsl:result-document href="{concat($OUTPUT-DIR-VAR, $path-out, $headerfile-file-name)}">
        <xsl:element name="frmwrComponent">
          <xsl:call-template name="filtering-attribute-management"/>       
          <xsl:element name="frmwrName">         
                <xsl:value-of select="normalize-space(translate(//headerfile-name, ' ', '_'))"/>  
          </xsl:element>
          <xsl:element name="frmwrEnumvalue">
            <xsl:value-of select="//enumvalue"/>
          </xsl:element>
          <xsl:if test="ancestor::*[contains(@class, ' topic/body ')]/*[contains(@class, ' topic/p ')]">
            <xsl:element name="frmwrDescription">
              <xsl:apply-templates mode="field-desc" select="ancestor::*[contains(@class, ' topic/body ')]/*"></xsl:apply-templates>             
            </xsl:element>
          </xsl:if>         
          <xsl:if test="//includeslist">
            <xsl:element name="frmwrIncludelist">
              <xsl:for-each select="//includeslist/include">
                <xsl:element name="frmwrInclude">
                  <xsl:element name="frmwrIncludeName"><xsl:value-of select="name"/></xsl:element>
                  <xsl:element name="frmwrIncluDesc"><xsl:apply-templates select="description" mode="field-desc"></xsl:apply-templates></xsl:element>
                </xsl:element> 
              </xsl:for-each>
            </xsl:element>
          </xsl:if>
        </xsl:element>
      </xsl:result-document>
    </xsl:for-each>
  </xsl:template>

  


</xsl:stylesheet>
