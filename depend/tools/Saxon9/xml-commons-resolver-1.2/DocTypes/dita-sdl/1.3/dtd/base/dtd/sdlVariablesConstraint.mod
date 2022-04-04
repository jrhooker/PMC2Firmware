<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    SDL Variables Constraint                          -->
<!--  VERSION:   1.3                                               -->
<!--  DATE:      July 2018                                         -->
<!--                                                               -->
<!-- ============================================================= -->
<!--                                                               -->

<!ENTITY sdlVariables-constraints
  "(topic sdlVariables-c)"
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
<!ENTITY % keyword.attributes
              "keyref
                          CDATA
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED
               %variables-atts;"
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

<!-- ================== SDL Variables Constraint ==================== -->
 
