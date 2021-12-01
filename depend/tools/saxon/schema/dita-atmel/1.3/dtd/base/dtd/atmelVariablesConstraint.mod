<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    Atmel Variables Constraint                        -->
<!--  VERSION:   1.3                                               -->
<!--  DATE:      March 2019                                        -->
<!--                                                               -->
<!-- ============================================================= -->
<!--                                                               -->

<!ENTITY atmelVariables-constraints
  "(topic atmelVariables-c)"
>

<!ENTITY % variables-atts
              "%varidAtt-d-attribute;
               %varrefAtt-d-attribute;"
>
<!ENTITY % conref-atts
              "conref
                          CDATA
                                    #IMPLIED
               conrefend
                          CDATA
                                    #IMPLIED
               conaction
                          (mark |
                           pushafter |
                           pushbefore |
                           pushreplace |
                           -dita-use-conref-target)
                                    #IMPLIED
               conkeyref
                          CDATA
                                    #IMPLIED"
>
<!ENTITY % id-atts
              "id
                          NMTOKEN
                                    #IMPLIED
               %conref-atts;"
>
<!ENTITY % filter-atts
              "props
                          CDATA
                                    #IMPLIED
               platform
                          CDATA
                                    #IMPLIED
               product
                          CDATA
                                    #IMPLIED
               audience
                          CDATA
                                    #IMPLIED
               otherprops
                          CDATA
                                    #IMPLIED
               %props-attribute-extensions;"
>
<!ENTITY % select-atts
              "%filter-atts;
               base
                          CDATA
                                    #IMPLIED
               %base-attribute-extensions;
               importance
                          (default |
                           deprecated |
                           high |
                           low |
                           normal |
                           obsolete |
                           optional |
                           recommended |
                           required |
                           urgent |
                           -dita-use-conref-target)
                                    #IMPLIED
               rev
                          CDATA
                                    #IMPLIED
               status
                          (changed |
                           deleted |
                           new |
                           unchanged |
                           -dita-use-conref-target)
                                    #IMPLIED"
>
<!ENTITY % localization-atts
              "translate
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               xml:lang
                          CDATA
                                    #IMPLIED
               dir
                          (lro |
                           ltr |
                           rlo |
                           rtl |
                           -dita-use-conref-target)
                                    #IMPLIED"
>
<!ENTITY % localization-atts-translate-no
              "translate
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    'no'
               xml:lang
                          CDATA
                                    #IMPLIED
               dir
                          (lro |
                           ltr |
                           rlo |
                           rtl |
                           -dita-use-conref-target)
                                    #IMPLIED"
>
<!ENTITY % univ-atts
              "%id-atts;
               %select-atts;
               %localization-atts;"
>
<!ENTITY % ph.attributes
              "keyref
                          CDATA
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED
               %variables-atts;"
>
<!ENTITY % cite.attributes
              "keyref
                          CDATA
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED
               %variables-atts;"
>
<!ENTITY % image.attributes
              "href
                          CDATA
                                    #IMPLIED
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               alt
                          CDATA
                                    #IMPLIED
               longdescref
                          CDATA
                                    #IMPLIED
               height
                          NMTOKEN
                                    #IMPLIED
               width
                          NMTOKEN
                                    #IMPLIED
               align
                          CDATA
                                    #IMPLIED
               scale
                          NMTOKEN
                                    #IMPLIED
               scalefit
                          (yes |
                           no |
                           -dita-use-conref-target)
                                    #IMPLIED
               placement
                          (break |
                           inline |
                           -dita-use-conref-target)
                                    'inline'
               format
                          CDATA
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED
               %variables-atts;"
>
<!ENTITY % p.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED
               %variables-atts;"
>
<!ENTITY % msgph.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED
               %variables-atts;"
>
<!ENTITY % hazardsymbol.attributes
              "href
                          CDATA
                                    #IMPLIED
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               longdescref
                          CDATA
                                    #IMPLIED
               height
                          NMTOKEN
                                    #IMPLIED
               width
                          NMTOKEN
                                    #IMPLIED
               align
                          CDATA
                                    #IMPLIED
               scale
                          NMTOKEN
                                    #IMPLIED
               scalefit
                          (yes |
                           no |
                           -dita-use-conref-target)
                                    #IMPLIED
               placement
                          (break |
                           inline |
                           -dita-use-conref-target)
                                    'inline'
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED
               %variables-atts;"
>
<!ENTITY % glossSymbol.attributes
              "href
                          CDATA
                                    #IMPLIED
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               longdescref
                          CDATA
                                    #IMPLIED
               height
                          NMTOKEN
                                    #IMPLIED
               width
                          NMTOKEN
                                    #IMPLIED
               align
                          CDATA
                                    #IMPLIED
               scale
                          NMTOKEN
                                    #IMPLIED
               scalefit
                          (yes |
                           no |
                           -dita-use-conref-target)
                                    #IMPLIED
               placement
                          (break |
                           inline |
                           -dita-use-conref-target)
                                    'inline'
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED
               %variables-atts;"
>
<!ENTITY % resourceid.attributes
              "%select-atts;
               %localization-atts;
               id
                          CDATA
                                    #IMPLIED
               %conref-atts;
               appname
                          CDATA
                                    #IMPLIED
               appid
                          CDATA
                                    #IMPLIED
               ux-context-string
                          CDATA
                                    #IMPLIED
               ux-source-priority
                          (topic-and-map |
                           topic-only |
                           map-only |
                           map-takes-priority |
                           topic-takes-priority |
                           -dita-use-conref-target)
                                    'topic-and-map'
               ux-windowref
                          CDATA
                                    #IMPLIED
               %variables-atts;"
>
<!ENTITY % dita.table.attributes
              "orient
                          (port |
                           land |
                           -dita-use-conref-target)
                                    #IMPLIED
               rowheader
                          (firstcol |
                           headers |
                           norowheader |
                           -dita-use-conref-target)
                                    #IMPLIED
               scale
                          (50 |
                           60 |
                           70 |
                           80 |
                           90 |
                           100 |
                           110 |
                           120 |
                           140 |
                           160 |
                           180 |
                           200 |
                           -dita-use-conref-target)
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED
               %variables-atts;"
>
<!ENTITY % ish-atts.registerName
              "%variables-atts;"
>
<!ENTITY % ish-atts.registerNameMore
              "%variables-atts;"
>
<!ENTITY % ish-atts.registerNameFull
              "%variables-atts;"
>
<!ENTITY % ish-atts.registerBriefDescription
              "%variables-atts;"
>
<!ENTITY % ish-atts.registerDescription
              "%variables-atts;"
>
<!ENTITY % ish-atts.registerBitsInLau
              "%variables-atts;"
>
<!ENTITY % ish-atts.addressOffset
              "%variables-atts;"
>
<!ENTITY % ish-atts.registerSize
              "%variables-atts;"
>
<!ENTITY % ish-atts.registerAccess
              "%variables-atts;"
>
<!ENTITY % ish-atts.registerResetValue
              "%variables-atts;"
>
<!ENTITY % ish-atts.bitOrder
              "%variables-atts;"
>
<!ENTITY % ish-atts.bitFieldName
              "%variables-atts;"
>
<!ENTITY % ish-atts.bitFieldBriefDescription
              "%variables-atts;"
>
<!ENTITY % ish-atts.bitFieldDescription
              "%variables-atts;"
>
<!ENTITY % ish-atts.bitWidth
              "%variables-atts;"
>
<!ENTITY % ish-atts.bitOffset
              "%variables-atts;"
>
<!ENTITY % ish-atts.bitFieldAccess
              "%variables-atts;"
>
<!ENTITY % ish-atts.bitFieldResetValue
              "%variables-atts;"
>
<!ENTITY % ish-atts.bitFieldValues
              "%variables-atts;"
>
<!ENTITY % ish-atts.bitFieldValue
              "%variables-atts;"
>
<!ENTITY % ish-atts.bitFieldValueDescription
              "%variables-atts;"
>

<!-- ================== Atmel Variables Constraint ==================== -->
 
