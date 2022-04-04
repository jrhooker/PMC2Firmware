<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    Atmel DITA FRMWR Structure Dword                  -->
<!--  VERSION:   1.3                                               -->
<!--  DATE:      March 2022                                        -->
<!--                                                               -->
<!-- ============================================================= -->
<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identifier or an  -->
<!--       appropriate system identifier                           -->
<!-- PUBLIC "-//Atmel//ELEMENTS DITA FRMWR Structure Dword//EN"    -->
<!--       Delivered as file "atmelStructDword.mod"                -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % structDword "structDword"                                 >
<!ENTITY % dwordName   "dwordName"                                   >
<!ENTITY % dwordBriefDescription
                       "dwordBriefDescription"                       >
<!ENTITY % dwordBody   "dwordBody"                                   >
<!ENTITY % dwordDescription
                       "dwordDescription"                            >
<!ENTITY % dwordProperties
                       "dwordProperties"                             >
<!ENTITY % dwordPropset
                       "dwordPropset"                                >
<!ENTITY % dwordWidth  "dwordWidth"                                  >
<!ENTITY % dwordOffset "dwordOffset"                                 >
<!ENTITY % dwordNumberWidth
                       "dwordNumberWidth"                            >
<!ENTITY % dwordNumberOffset
                       "dwordNumberOffset"                           >
<!ENTITY % dwordValues "dwordValues"                                 >
<!ENTITY % dwordValueGroup
                       "dwordValueGroup"                             >
<!ENTITY % dwordValue  "dwordValue"                                  >
<!ENTITY % dwordValueName
                       "dwordValueName"                              >
<!ENTITY % dwordValueDescription
                       "dwordValueDescription"                       >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % structDword-info-types
              "no-topic-nesting"
>
<!ENTITY % dword.atomicvalue.cnt
              "#PCDATA |
               %text;"
>
<!--                    LONG NAME: Structure Dword                 -->
<!ENTITY % structDword.content
                       "((%dwordName;),
                         (%dwordBriefDescription;),
                         (%dwordBody;))"
>
<!ENTITY % structDword.attributes
              "id
                          ID
                                    #REQUIRED
               %conref-atts;
               %select-atts;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  structDword %structDword.content;>
<!ATTLIST  structDword %structDword.attributes;
                 %arch-atts;
                 domains 
                        CDATA
                                  "&included-domains;"
>


<!--                    LONG NAME: Dword Name                      -->
<!ENTITY % dwordName.content
                       "(%title.cnt;)*"
>
<!ENTITY % dwordName.attributes
              "%id-atts;
               %localization-atts;
               base
                          CDATA
                                    #IMPLIED
               %base-attribute-extensions;
               outputclass
                          CDATA
                                    #IMPLIED
               rev
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  dwordName %dwordName.content;>
<!ATTLIST  dwordName %dwordName.attributes;>


<!--                    LONG NAME: Bit Field Brief Description     -->
<!ENTITY % dwordBriefDescription.content
                       "(%title.cnt; |
                         %xref;)*"
>
<!ENTITY % dwordBriefDescription.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  dwordBriefDescription %dwordBriefDescription.content;>
<!ATTLIST  dwordBriefDescription %dwordBriefDescription.attributes;>


<!--                    LONG NAME: Dword Body                      -->
<!ENTITY % dwordBody.content
                       "((%dwordDescription;),
                         (%dwordProperties;),
                         (%dwordValues;)?)"
>
<!ENTITY % dwordBody.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  dwordBody %dwordBody.content;>
<!ATTLIST  dwordBody %dwordBody.attributes;>


<!--                    LONG NAME: Dword Description               -->
<!ENTITY % dwordDescription.content
                       "(%section.cnt;)*"
>
<!ENTITY % dwordDescription.attributes
              "spectitle
                          CDATA
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  dwordDescription %dwordDescription.content;>
<!ATTLIST  dwordDescription %dwordDescription.attributes;>


<!--                    LONG NAME: Dword Properties                -->
<!ENTITY % dwordProperties.content
                       "(%dwordPropset;)"
>
<!ENTITY % dwordProperties.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  dwordProperties %dwordProperties.content;>
<!ATTLIST  dwordProperties %dwordProperties.attributes;>


<!--                    LONG NAME: Dword Property Set              -->
<!ENTITY % dwordPropset.content
                       "((%dwordWidth;),
                         (%dwordOffset;),
                         (%dwordNumberWidth;),
                         (%dwordNumberOffset;))"
>
<!ENTITY % dwordPropset.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  dwordPropset %dwordPropset.content;>
<!ATTLIST  dwordPropset %dwordPropset.attributes;>


<!--                    LONG NAME: Dword Width                     -->
<!ENTITY % dwordWidth.content
                       "(%dword.atomicvalue.cnt;)*"
>
<!ENTITY % dwordWidth.attributes
              "%univ-atts;
               %variables-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  dwordWidth %dwordWidth.content;>
<!ATTLIST  dwordWidth %dwordWidth.attributes;>


<!--                    LONG NAME: Dword Offset                    -->
<!ENTITY % dwordOffset.content
                       "(%dword.atomicvalue.cnt;)*"
>
<!ENTITY % dwordOffset.attributes
              "%univ-atts;
               %variables-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  dwordOffset %dwordOffset.content;>
<!ATTLIST  dwordOffset %dwordOffset.attributes;>


<!--                    LONG NAME: Dword Number Width              -->
<!ENTITY % dwordNumberWidth.content
                       "(%dword.atomicvalue.cnt;)*"
>
<!ENTITY % dwordNumberWidth.attributes
              "%univ-atts;
               %variables-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  dwordNumberWidth %dwordNumberWidth.content;>
<!ATTLIST  dwordNumberWidth %dwordNumberWidth.attributes;>


<!--                    LONG NAME: Dword Number Offset             -->
<!ENTITY % dwordNumberOffset.content
                       "(%dword.atomicvalue.cnt;)*"
>
<!ENTITY % dwordNumberOffset.attributes
              "%univ-atts;
               %variables-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  dwordNumberOffset %dwordNumberOffset.content;>
<!ATTLIST  dwordNumberOffset %dwordNumberOffset.attributes;>


<!--                    LONG NAME: Dword Values                    -->
<!ENTITY % dwordValues.content
                       "(%dwordValueGroup;)"
>
<!ENTITY % dwordValues.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  dwordValues %dwordValues.content;>
<!ATTLIST  dwordValues %dwordValues.attributes;>


<!--                    LONG NAME: Dword Value Group               -->
<!ENTITY % dwordValueGroup.content
                       "((%dwordValue;),
                         (%dwordValueName;),
                         (%dwordValueDescription;))"
>
<!ENTITY % dwordValueGroup.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  dwordValueGroup %dwordValueGroup.content;>
<!ATTLIST  dwordValueGroup %dwordValueGroup.attributes;>


<!--                    LONG NAME: Dword Value                     -->
<!ENTITY % dwordValue.content
                       "(%dword.atomicvalue.cnt;)*"
>
<!ENTITY % dwordValue.attributes
              "%univ-atts;
               %variables-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  dwordValue %dwordValue.content;>
<!ATTLIST  dwordValue %dwordValue.attributes;>


<!--                    LONG NAME: Dword Value Name                -->
<!ENTITY % dwordValueName.content
                       "(%dword.atomicvalue.cnt;)*"
>
<!ENTITY % dwordValueName.attributes
              "%univ-atts;
               %variables-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  dwordValueName %dwordValueName.content;>
<!ATTLIST  dwordValueName %dwordValueName.attributes;>


<!--                    LONG NAME: Dword Value Description         -->
<!ENTITY % dwordValueDescription.content
                       "(%dword.atomicvalue.cnt;)*"
>
<!ENTITY % dwordValueDescription.attributes
              "%univ-atts;
               %variables-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  dwordValueDescription %dwordValueDescription.content;>
<!ATTLIST  dwordValueDescription %dwordValueDescription.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  structDword  %global-atts;  class CDATA "- topic/topic reference/reference structDword/structDword ">
<!ATTLIST  dwordName    %global-atts;  class CDATA "- topic/title reference/title structDword/dwordName ">
<!ATTLIST  dwordBriefDescription %global-atts;  class CDATA "- topic/shortdesc reference/shortdesc structDword/dwordBriefDescription ">
<!ATTLIST  dwordBody    %global-atts;  class CDATA "- topic/body reference/refbody structDword/dwordBody ">
<!ATTLIST  dwordDescription %global-atts;  class CDATA "- topic/section reference/section structDword/dwordDescription ">
<!ATTLIST  dwordProperties %global-atts;  class CDATA "- topic/simpletable reference/simpletable structDword/dwordProperties ">
<!ATTLIST  dwordPropset %global-atts;  class CDATA "- topic/strow reference/strow structDword/dwordPropset ">
<!ATTLIST  dwordWidth   %global-atts;  class CDATA "- topic/stentry reference/stentry structDword/dwordWidth ">
<!ATTLIST  dwordOffset  %global-atts;  class CDATA "- topic/stentry reference/stentry structDword/dwordOffset ">
<!ATTLIST  dwordNumberWidth %global-atts;  class CDATA "- topic/stentry reference/stentry structDword/dwordNumberWidth ">
<!ATTLIST  dwordNumberOffset %global-atts;  class CDATA "- topic/stentry reference/stentry structDword/dwordNumberOffset ">
<!ATTLIST  dwordValues  %global-atts;  class CDATA "- topic/simpletable reference/simpletable structDword/dwordValues ">
<!ATTLIST  dwordValueGroup %global-atts;  class CDATA "- topic/strow reference/strow structDword/dwordValueGroup ">
<!ATTLIST  dwordValue   %global-atts;  class CDATA "- topic/stentry reference/stentry structDword/dwordValue ">
<!ATTLIST  dwordValueName %global-atts;  class CDATA "- topic/stentry reference/stentry structDword/dwordValueName ">
<!ATTLIST  dwordValueDescription %global-atts;  class CDATA "- topic/stentry reference/stentry structDword/dwordValueDescription ">

<!-- ================== End of Atmel DITA FRMWR Structure Dword ==================== -->
 