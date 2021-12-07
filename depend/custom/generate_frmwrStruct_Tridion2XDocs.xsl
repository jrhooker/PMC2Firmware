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
    
  <xsl:import href="generate_topics_Tridion2XDocs.xsl"/> 
  
  <xsl:param name="STARTING-DIR"/>

  <xsl:template match="topicref | chapter | appendix | topichead" name="topicref">
    <xsl:param name="href-prefix"/>
    <xsl:variable name="topicref-id" select="generate-id()"/>      
    <xsl:if test="document(@href)//frmwrStruct">
      <xsl:message>Found a frmwrStruct</xsl:message>
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
    <xsl:for-each select="$document//frmwrStruct">
      <xsl:variable name="ids" select="$document//@id"/>
      <xsl:variable name="struct-file-name"
        select="concat('/', normalize-space(translate(structName, ' ', '_')), '_', $topicref-id)"/>
      <xsl:message>structName: <xsl:value-of select="normalize-space(translate(structName, ' ', '_'))"/>
      </xsl:message>
      <xsl:result-document href="{concat($OUTPUT-DIR-VAR, $path-out, $struct-file-name)}">
        <xsl:element name="topic">
          <xsl:call-template name="filtering-attribute-management"/>
          <xsl:choose>
            <xsl:when test="@id"><xsl:attribute name="id" select="@id"/></xsl:when>
            <xsl:otherwise><xsl:attribute name="id" select="generate-id()"/></xsl:otherwise>
          </xsl:choose>
          <xsl:element name="title">            
            <xsl:value-of select="structName"/>          
            <xsl:choose>
              <xsl:when test="title/msg-name-main">
                <xsl:value-of select="normalize-space(translate(title/msg-name-main, ' ', '_'))"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="normalize-space(translate(title, ' ', '_'))"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:element>
          <xsl:element name="body">
            <xsl:element name="table">            
              <xsl:element name="title"> <xsl:element name="msg-name-main"><xsl:value-of select="structName"/></xsl:element></xsl:element>   
                <xsl:element name="tgroup">
                  <xsl:attribute name="cols">4</xsl:attribute>
                  <xsl:element name="thead">
                    <xsl:element name="row">
                      <xsl:element name="entry">Dword</xsl:element>
                      <xsl:element name="entry">Position</xsl:element>
                      <xsl:element name="entry">Name</xsl:element>
                      <xsl:element name="entry">Description</xsl:element>
                    </xsl:element>
                  </xsl:element>
                  <xsl:element name="struct">
                    <xsl:if test="structBody/structProperties/structPropSet/structOpcode">
                      <xsl:attribute name="opcode"><xsl:value-of select="structBody/structProperties/structPropSet/structOpcode"/></xsl:attribute>
                    </xsl:if>
                    <xsl:if test="structBody/structProperties/structPropSet/structType">
                      <xsl:attribute name="structure"><xsl:value-of select="structBody/structProperties/structPropSet/structType"/></xsl:attribute>
                    </xsl:if>
                    <xsl:for-each select="structDword">
                      <xsl:element name="dword">
                        <xsl:element name="value">
                          <xsl:choose>
                            <xsl:when test="number(dwordBody/dwordProperties/dwordPropset/dwordNumberWidth) = 1">
                              <xsl:value-of select="dwordBody/dwordProperties/dwordPropset/dwordNumberOffset"/>                              
                            </xsl:when>
                            <xsl:otherwise>
                              <xsl:value-of select="(number(dwordBody/dwordProperties/dwordPropset/dwordNumberWidth) -1) + number(dwordBody/dwordProperties/dwordPropset/dwordNumberOffset)"/>
                              <xsl:text>:</xsl:text>
                              <xsl:value-of select="dwordBody/dwordProperties/dwordPropset/dwordNumberOffset"/>
                            </xsl:otherwise>
                          </xsl:choose>
                        </xsl:element>
                        <xsl:element name="position">
                          <xsl:choose>
                            <xsl:when test="number(dwordBody/dwordProperties/dwordPropset/dwordWidth) = 1">
                              <xsl:element name="single">
                                <xsl:value-of select="dwordBody/dwordProperties/dwordPropset/dwordOffset"/>   
                              </xsl:element>                                                       
                            </xsl:when>
                            <xsl:otherwise>
                              <xsl:element name="double">
                                <xsl:element name="msb">
                                  <xsl:value-of select="(number(dwordBody/dwordProperties/dwordPropset/dwordWidth) -1) + number(dwordBody/dwordProperties/dwordPropset/dwordOffset)"/>
                                </xsl:element>
                                <xsl:element name="lsb">
                                  <xsl:value-of select="dwordBody/dwordProperties/dwordPropset/dwordOffset"/>
                                </xsl:element>
                              </xsl:element>
                            </xsl:otherwise>
                          </xsl:choose>
                        </xsl:element>
                        <xsl:element name="name">
                          <xsl:value-of select="dwordName"/>
                        </xsl:element>
                        <xsl:element name="description">
                          <xsl:apply-templates select="dwordBody/dwordDescription" mode="field-desc"/>      
                          <xsl:if test="dwordBody/dwordValues/dwordValueGroup">
                            <xsl:element name="field-enum-list">
                              <xsl:for-each select="dwordValueGroup">
                                <xsl:element name="field-enum">
                                  <xsl:element name="field-enum-value"><xsl:value-of select="dwordValue"/></xsl:element>
                                  <xsl:element name="field-enum-name"><xsl:value-of select="dwordValueName"/></xsl:element>
                                  <xsl:element name="field-enum-desc"><xsl:value-of select="dwordValueDescription"/></xsl:element>                                
                                </xsl:element>
                              </xsl:for-each>
                            </xsl:element>
                          </xsl:if>
                        </xsl:element>
                      </xsl:element>  
                      
                    </xsl:for-each>                    
                  </xsl:element>
                  </xsl:element>
                
              </xsl:element>
            </xsl:element>
          </xsl:element>
      </xsl:result-document>
    </xsl:for-each>
  </xsl:template>
 </xsl:stylesheet>
