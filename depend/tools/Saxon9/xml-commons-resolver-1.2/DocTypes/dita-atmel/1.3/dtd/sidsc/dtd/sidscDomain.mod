<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA SIDSC Domain                                 -->
<!--  VERSION:   1.3                                               -->
<!--  DATE:      March 2019                                        -->
<!--                                                               -->
<!-- ============================================================= -->
<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identifier or an  -->
<!--       appropriate system identifier                           -->
<!-- PUBLIC "-//Atmel//ELEMENTS DITA SIDSC Domain//EN"             -->
<!--       Delivered as file "sidscDomain.mod"                     -->
<!-- ============================================================= -->
<!-- Copyright OASIS 2009                                          -->
<!-- Author: Seth Park                                             -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % active-low  "active-low"                                  >
<!ENTITY % instancesNumber
                       "instancesNumber"                             >
<!ENTITY % unitQualifier
                       "unitQualifier"                               >
<!ENTITY % namePattern "namePattern"                                 >
<!ENTITY % instanceOffsets
                       "instanceOffsets"                             >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % sidsc.plain.text.cnt
              "#PCDATA |
               %text; |
               ph"
>
<!--                    LONG NAME: Active Low                      -->
<!ENTITY % active-low.content
                       "(%sidsc.plain.text.cnt;)*"
>
<!ENTITY % active-low.attributes
              "keyref
                          CDATA
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  active-low %active-low.content;>
<!ATTLIST  active-low %active-low.attributes;>


<!--                    LONG NAME: Instances Number                -->
<!ENTITY % instancesNumber.content
                       "(%term.cnt;)*"
>
<!ENTITY % instancesNumber.attributes
              "keyref
                          CDATA
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  instancesNumber %instancesNumber.content;>
<!ATTLIST  instancesNumber %instancesNumber.attributes;>


<!--                    LONG NAME: Unit Qualifier                  -->
<!ENTITY % unitQualifier.content
                       "(%defn.cnt;)*"
>
<!ENTITY % unitQualifier.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  unitQualifier %unitQualifier.content;>
<!ATTLIST  unitQualifier %unitQualifier.attributes;>


<!--                    LONG NAME: Name Pattern                    -->
<!ENTITY % namePattern.content
                       "(%defn.cnt;)*"
>
<!ENTITY % namePattern.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  namePattern %namePattern.content;>
<!ATTLIST  namePattern %namePattern.attributes;>


<!--                    LONG NAME: Instance Offsets                -->
<!ENTITY % instanceOffsets.content
                       "(%defn.cnt;)*"
>
<!ENTITY % instanceOffsets.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  instanceOffsets %instanceOffsets.content;>
<!ATTLIST  instanceOffsets %instanceOffsets.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  active-low   %global-atts;  class CDATA "+ topic/ph sidscDomain-d/active-low ">
<!ATTLIST  unitQualifier %global-atts;  class CDATA "+ topic/ph sidscDomain-d/unitQualifier ">
<!ATTLIST  namePattern  %global-atts;  class CDATA "+ topic/ph sidscDomain-d/namePattern ">
<!ATTLIST  instancesNumber %global-atts;  class CDATA "+ topic/ph sidscDomain-d/instancesNumber ">
<!ATTLIST  instanceOffsets %global-atts;  class CDATA "+ topic/ph sidscDomain-d/instanceOffsets ">

<!-- ================== End of DITA SIDSC Domain ==================== -->
 