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

  <xsl:template match="topicref | chapter | appendix | topichead" name="topicref">
    <xsl:param name="href-prefix"/>
    <xsl:variable name="topicref-id" select="generate-id()"/>      
        <xsl:if test="document(@href)//frmwrComponent">
          <xsl:message>Found an frmwrComponent</xsl:message>
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
    
    <xsl:for-each select="$document//frmwrComponent">
      <xsl:variable name="ids" select="$document//@id"/>
      <xsl:variable name="headerfile-file-name"
        select="concat('/', normalize-space(translate(frmwrName, ' ', '_')), '.xml')"/>
      <xsl:message>frmwrName: <xsl:value-of select="normalize-space(translate(frmwrName, ' ', '_'))"/>
      </xsl:message>
      <xsl:message>outputDoc: <xsl:value-of select="concat($OUTPUT-DIR-VAR, $path-out, $headerfile-file-name)"/>
      </xsl:message>
      <xsl:result-document href="{concat($OUTPUT-DIR-VAR, $path-out, $headerfile-file-name)}">
        <xsl:element name="topic">
          <xsl:call-template name="filtering-attribute-management"/>
         <xsl:choose>
           <xsl:when test="@id"><xsl:attribute name="id" select="@id"/></xsl:when>
           <xsl:otherwise><xsl:attribute name="id" select="generate-id()"/></xsl:otherwise>
         </xsl:choose>
         
          <xsl:element name="title">         
            <xsl:value-of select="frmwrName"/>  
          </xsl:element>
          <xsl:element name="body">
            <xsl:element name="p">
              <xsl:element name="enumvalue"><xsl:value-of select="frmwrEnumvalue"/></xsl:element>
              <xsl:element name="headerfile-name"><xsl:value-of select="frmwrName"/></xsl:element>
            </xsl:element>
            <xsl:if test="frmwrIncludelist/include">
            <xsl:element name="table">
              <xsl:element name="tgroup">
                <xsl:attribute name="cols">2</xsl:attribute>
                <xsl:element name="thead">
                  <xsl:element name="row">
                    <xsl:element name="entry">Name</xsl:element>
                    <xsl:element name="entry">Description</xsl:element>
                  </xsl:element>
                </xsl:element>
              
                  <xsl:element name="includeslist">
                    <xsl:for-each select="frmwrIncludelist/include">
                      <xsl:element name="include">
                        <xsl:element name="name">
                          <xsl:value-of select="includeName"/>
                        </xsl:element>
                        <xsl:element name="description">
                          <xsl:apply-templates select="description/*"/>
                        </xsl:element>                
                      </xsl:element>  
                    </xsl:for-each>
                  </xsl:element>
                
              </xsl:element>
            </xsl:element>
            </xsl:if>
          </xsl:element>         
        </xsl:element>
      </xsl:result-document>
    </xsl:for-each>
  </xsl:template>

  


</xsl:stylesheet>
