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
  <xsl:param name="STARTING-DIR"/>

 <xsl:output method="xml" media-type="text/xml" indent="yes" encoding="UTF-8"
    doctype-public="-//Atmel//DTD DITA frmwrStruct//EN" doctype-system="frmwrStruct.dtd"/> 

  <xsl:template match="topicref | chapter | appendix | topichead" name="topicref">
    <xsl:param name="href-prefix"/>
    <xsl:variable name="topicref-id" select="generate-id()"/>      
         <xsl:if test="document(@href)//struct">
          <xsl:message>Found a struct</xsl:message>
          <xsl:call-template name="create-struct-topic">
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

  <xsl:template name="create-struct-topic">
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
    <xsl:for-each select="$document//table[descendant::struct]">
      <xsl:variable name="ids" select="$document//@id"/>
      <xsl:variable name="struct-file-name"
        select="concat('/', normalize-space(translate(title, ' ', '_')), '_', $topicref-id)"/>
      <xsl:message>STRUCT: <xsl:value-of select="normalize-space(translate(title, ' ', '_'))"/>
      </xsl:message>
      <xsl:result-document href="{concat($OUTPUT-DIR-VAR, $path-out, $struct-file-name)}">
        <xsl:element name="frmwrStruct">
          <xsl:call-template name="filtering-attribute-management"/>
          <xsl:attribute name="id" select="@id"/>
          <xsl:element name="structName">
            <xsl:choose>
              <xsl:when test="title/msg-name-main">
                <xsl:value-of select="normalize-space(translate(title/msg-name-main, ' ', '_'))"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="normalize-space(translate(title, ' ', '_'))"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:element>
          <xsl:if test="title/msg-desc">
            <xsl:element name="structNameMore">
              <xsl:element name="structNameFull">
                <xsl:choose>
                  <xsl:when test="title/msg-name-main">
                    <xsl:value-of select="normalize-space(translate(title/msg-name-main, ' ', '_'))"
                    />
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:value-of select="normalize-space(translate(title, ' ', '_'))"/>
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:element>
              <xsl:element name="structNameDescription">
                <xsl:value-of select="normalize-space(title/msg-desc)"/>
              </xsl:element>
            </xsl:element>
          </xsl:if>
          <xsl:element name="structBody">
            <xsl:element name="structDescription">
              <xsl:choose>
                <xsl:when test="ancestor::*[contains(@class, ' topic/topic ')][1]/*[contains(@class, ' topic/body ')]/*[contains(@class, ' topic/p ')]">
                  <xsl:for-each select="ancestor::*[contains(@class, ' topic/topic ')][1]/*[contains(@class, ' topic/body ')]/*[contains(@class, ' topic/p ')]">
                    <xsl:element name="p">
                      <xsl:call-template name="filtering-attribute-management"/>
                      <xsl:value-of select="."/>
                    </xsl:element>
                  </xsl:for-each>              
                </xsl:when>    
                <xsl:otherwise>[structDescription]</xsl:otherwise>
              </xsl:choose>                 
            </xsl:element>
            <xsl:element name="structProperties">
              <xsl:element name="structPropSet">
                <xsl:element name="structOpcode">
                  <xsl:value-of select="tgroup/struct/@opcode"/>
                </xsl:element>
                <xsl:element name="structType">
                  <xsl:value-of select="tgroup/struct/@structure"/>
                </xsl:element>
              </xsl:element>
            </xsl:element>
          </xsl:element>
          <xsl:for-each select="tgroup/struct/dword">
            <xsl:element name="structDword">
              <xsl:call-template name="filtering-attribute-management"/>
              <xsl:element name="dwordName">
                <xsl:value-of select="name"/>
              </xsl:element>
              <xsl:element name="dwordBriefDescription">
                <xsl:choose>
                  <xsl:when test="desc-title">
                    <xsl:value-of select="desc-title"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:value-of select="p[1]"/>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:element name="dwordBody">
                  <xsl:element name="dwordDescription">
                    <xsl:apply-templates select="description" mode="field-desc"/>
                  </xsl:element>
                  <xsl:element name="dwordProperties">
                    <xsl:element name="dwordPropset">
                      <xsl:element name="dwordWidth">
                        <xsl:call-template name="calc-bitwidth"/>
                      </xsl:element>
                      <xsl:element name="dwordOffset">
                        <xsl:call-template name="calc-dwordoffset"/>
                      </xsl:element>
                      <xsl:element name="dwordNumberWidth">
                        <xsl:call-template name="calc-dwordnumberwidth"/>
                      </xsl:element>
                      <xsl:element name="dwordNumberOffset">
                        <xsl:call-template name="calc-dwordnumberoffset"/>
                      </xsl:element>
                    </xsl:element>
                  </xsl:element>
                  <xsl:if test="description/field-enum-list">
                    <xsl:element name="dwordValueGroup">
                      <xsl:for-each select="description/field-enum-list/field-enum">
                        <xsl:element name="bitFieldValueGroup">
                          <xsl:element name="dwordValue">
                            <xsl:value-of select="field-enum-value"/>
                          </xsl:element>
                          <xsl:element name="dwordValueName">
                            <xsl:value-of select="field-enum-def"/>
                          </xsl:element>
                          <xsl:element name="dwordValueDescription">
                            <xsl:value-of select="field-enum-desc"/>
                          </xsl:element>
                        </xsl:element>
                      </xsl:for-each>
                    </xsl:element>
                  </xsl:if>
                </xsl:element>
              </xsl:element>
            </xsl:element>
          </xsl:for-each>
        </xsl:element>
      </xsl:result-document>
    </xsl:for-each>
  </xsl:template>
 </xsl:stylesheet>
