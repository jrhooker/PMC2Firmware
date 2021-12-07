<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:db="http://docbook.org/ns/docbook"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
  xmlns:xi="http://www.w3.org/2001/XInclude"
  xmlns:opentopic-i18n="http://www.idiominc.com/opentopic/i18n"
  xmlns:opentopic-index="http://www.idiominc.com/opentopic/index"
  xmlns:opentopic="http://www.idiominc.com/opentopic"
  xmlns:opentopic-func="http://www.idiominc.com/opentopic/exsl/function"
  xmlns:date="http://exslt.org/dates-and-times">
        
  <xsl:import href="filtering-attribute-resolver.xsl"/>
   
  <xsl:param name="STARTING-DIR"/>
  
  <xsl:variable name="STARTING-DIR-VAR">
    <xsl:choose>
      <xsl:when test="contains($STARTING-DIR, 'c:')">
        <xsl:value-of select="translate(substring-after($STARTING-DIR, 'c:'), '\', '/')"/>
      </xsl:when>
      <xsl:when test="contains($STARTING-DIR, 'C:')">
        <xsl:value-of select="translate(substring-after($STARTING-DIR, 'C:'), '\', '/')"/>
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
      <xsl:otherwise>
        <xsl:value-of select="translate($OUTPUT-DIR, '\', '/')"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>

  <xsl:param name="FILENAME"/>  

  <xsl:output method="xml" media-type="text/xml" indent="yes" encoding="UTF-8"
    doctype-public="-//OASIS//DTD DITA 1.2 Map//EN" doctype-system="map.dtd"/>

  <xsl:template match="/">
  <!-- We're going to be processing the linked resources separately, so pull them into variables -->
  
    <!-- now process the current map itself --> 
    <xsl:message>Path to project: <xsl:value-of select="$STARTING-DIR-VAR"/></xsl:message>
    <xsl:message>Path to output: <xsl:value-of select="$OUTPUT-DIR-VAR"/></xsl:message>
    <xsl:message>FILENAME: <xsl:value-of select="$FILENAME"/></xsl:message>
    
    <xsl:result-document href="{concat($OUTPUT-DIR-VAR, $FILENAME)}">
      <xsl:element name="map">
          <xsl:apply-templates></xsl:apply-templates>
      </xsl:element>    
    </xsl:result-document>    
  </xsl:template> 
  
  <xsl:template match="bookmap | map">   
      <xsl:apply-templates/>   
  </xsl:template>
  
  <xsl:template match="title">
    <xsl:element name="title">
      <xsl:apply-templates />
    </xsl:element>
  </xsl:template>
  
   <xsl:template match="*"></xsl:template>
  
  <xsl:template match="bookmeta | frontmatter"></xsl:template>
  
  <xsl:template match="topicref | chapter | appendix " name="topicref">
    <xsl:param name="href-prefix"></xsl:param>  
      <xsl:choose>
        <xsl:when test="contains(@href, '.ditamap')">
          <xsl:message>Found a ditamap</xsl:message>
          <xsl:call-template name="process-ditamap">
            <xsl:with-param name="href"><xsl:value-of select="@href"/></xsl:with-param>
            <xsl:with-param name="href-prefix"><xsl:value-of select="$href-prefix"/></xsl:with-param>            
          </xsl:call-template>
        </xsl:when>
        <xsl:when test="document(@href)//frmwrComponent">
          <xsl:message>Found a frmwrComponent</xsl:message>
          <xsl:call-template name="create-topicrefs">
            <xsl:with-param name="href"><xsl:value-of select="@href"/></xsl:with-param>
            <xsl:with-param name="href-prefix"><xsl:value-of select="$href-prefix"/></xsl:with-param>            
          </xsl:call-template>
        </xsl:when>      
        <xsl:when test="document(@href)//frmwrStruct">
          <xsl:message>Found an frmwrStruct</xsl:message>
          <xsl:call-template name="create-topicrefs">
            <xsl:with-param name="href"><xsl:value-of select="@href"/></xsl:with-param>
            <xsl:with-param name="href-prefix"><xsl:value-of select="$href-prefix"/></xsl:with-param>            
          </xsl:call-template>
        </xsl:when>     
        <xsl:otherwise>
          <xsl:message>No structs found: <xsl:value-of select="@href"/></xsl:message>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates/>       
  </xsl:template>
  
  <xsl:template match="topichead">   
    <xsl:element name="topichead">   
      <xsl:copy-of select="@*"/>     
      <xsl:apply-templates/>
    </xsl:element>   
  </xsl:template>
  
  <xsl:template name="create-topicrefs">
    <xsl:param name="href"></xsl:param>
    <xsl:param name="href-prefix"></xsl:param>   
    <xsl:variable name="input-directory" select="concat($STARTING-DIR-VAR, $href-prefix, $href)"/>   
    <xsl:variable name="document" select="document($input-directory)"/>
    <xsl:variable name="path-out">
      <xsl:choose>
        <xsl:when test="contains($href, '/')">
          <xsl:if test="contains($href, '/')">
           <xsl:value-of select="translate(substring($href,1, index-of(string-to-codepoints($href), string-to-codepoints('/'))[last()] -1),'/','')"/>
          </xsl:if>
        </xsl:when>
        <xsl:otherwise></xsl:otherwise>   
      </xsl:choose>       
    </xsl:variable>
    <xsl:variable name="topicref-id">
      <xsl:choose>
        <xsl:when test="contains($href, '/')">     
          <xsl:variable name="href-values" select="tokenize($href, '/')"/>
          <xsl:value-of select="$href-values[last()]"/>          
        </xsl:when>
        <xsl:otherwise></xsl:otherwise>   
      </xsl:choose>
    </xsl:variable>
    <xsl:for-each select="$document//frmwrComponent">      
      <xsl:variable name="headerfile-file-name"
        select="concat('/', normalize-space(translate(frmwrName, ' ', '_')), '.xml')"/>
      <xsl:message>frmwrComponent: <xsl:value-of select="$headerfile-file-name"/> </xsl:message>
      <xsl:element name="topicref">
        <xsl:call-template name="filtering-attribute-management"/>
        <xsl:attribute name="href" select="concat($path-out, $headerfile-file-name)"></xsl:attribute>
        <xsl:apply-templates/>
      </xsl:element>     
    </xsl:for-each>  
    <xsl:for-each select="$document//frmwrStruct">      
      <xsl:variable name="firmware-file-name"  select="concat('/', normalize-space(translate(structName, ' ', '_')), '_', $topicref-id)"/>  
      <xsl:message>structName <xsl:value-of select="@id"/> <xsl:value-of select="normalize-space(translate(title, ' ', '_'))"/></xsl:message>
      <xsl:element name="topicref">
        <xsl:call-template name="filtering-attribute-management"/>
        <xsl:attribute name="href" select="concat($path-out, $firmware-file-name)"></xsl:attribute>
        <xsl:apply-templates/>
      </xsl:element>     
    </xsl:for-each>     
  </xsl:template>
  
  <xsl:template name="process-ditamap">
    <xsl:param name="href"></xsl:param>
    <xsl:param name="href-prefix"></xsl:param>
    <xsl:param name="topicref-id"/>
    <xsl:variable name="reg-file-name"  select="concat('/', @id, '_', $topicref-id)"/>  
    <xsl:variable name="input-directory" select="concat($STARTING-DIR-VAR,$href-prefix, $href)"/>
    <xsl:message>INPUT DIRECTORY: <xsl:value-of select="$input-directory"/></xsl:message>
    <xsl:variable name="document" select="document($input-directory)"/>
    <xsl:variable name="path-out">
      <xsl:variable name="path-out">
        <xsl:call-template name="process-path"><xsl:with-param name="href" select="$href"/></xsl:call-template>      
      </xsl:variable>
    </xsl:variable>
      <xsl:message>DITAMAP?: <xsl:value-of select="@id"/> </xsl:message>
      <xsl:result-document href="{concat($OUTPUT-DIR-VAR, $path-out, $reg-file-name)}">
        <xsl:element name="topic">
          <xsl:call-template name="filtering-attribute-management"/>
          <xsl:attribute name="id" select="@id"/>
          <xsl:element name="title"><xsl:value-of select="title"/></xsl:element>
        </xsl:element>
      </xsl:result-document>    
  </xsl:template>
  
 <xsl:template name="process-path">
   <xsl:param name="href"></xsl:param>
   <xsl:choose>
     <xsl:when test="contains($href, '/')">
       <xsl:value-of select="translate(substring($href,1, index-of(string-to-codepoints($href), string-to-codepoints('/'))[last()] -1),'/','')"/>
     </xsl:when>
     <xsl:otherwise/>
   </xsl:choose>
 </xsl:template>
  

</xsl:stylesheet>
