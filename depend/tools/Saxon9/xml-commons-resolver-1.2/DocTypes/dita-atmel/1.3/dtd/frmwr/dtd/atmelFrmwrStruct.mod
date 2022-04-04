<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    Atmel DITA FRMWR Structure                        -->
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
<!-- PUBLIC "-//Atmel//ELEMENTS DITA FRMWR Structure//EN"          -->
<!--       Delivered as file "atmelFrmwrStruct.mod"                -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % frmwrStruct "frmwrStruct"                                 >
<!ENTITY % structName  "structName"                                  >
<!ENTITY % structNameMore
                       "structNameMore"                              >
<!ENTITY % structNameFull
                       "structNameFull"                              >
<!ENTITY % structNameDescription
                       "structNameDescription"                       >
<!ENTITY % structBody  "structBody"                                  >
<!ENTITY % structDescription
                       "structDescription"                           >
<!ENTITY % structProperties
                       "structProperties"                            >
<!ENTITY % structPropset
                       "structPropset"                               >
<!ENTITY % structOpcode
                       "structOpcode"                                >
<!ENTITY % structType  "structType"                                  >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % frmwrStruct-info-types
              "structDword"
>
<!--                    LONG NAME: Structure                       -->
<!ENTITY % frmwrStruct.content
                       "((%structName;),
                         (%structNameMore;)?,
                         (%structBody;),
                         (%frmwrStruct-info-types;)*)"
>
<!ENTITY % frmwrStruct.attributes
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
<!ELEMENT  frmwrStruct %frmwrStruct.content;>
<!ATTLIST  frmwrStruct %frmwrStruct.attributes;
                 %arch-atts;
                 domains 
                        CDATA
                                  "&included-domains;"
>


<!--                    LONG NAME: Structure Name                  -->
<!ENTITY % structName.content
                       "(%title.cnt;)*"
>
<!ENTITY % structName.attributes
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
<!ELEMENT  structName %structName.content;>
<!ATTLIST  structName %structName.attributes;>


<!--                    LONG NAME: Structure Name More             -->
<!ENTITY % structNameMore.content
                       "((%structNameFull;),
                         (%structNameDescription;)?)"
>
<!ENTITY % structNameMore.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  structNameMore %structNameMore.content;>
<!ATTLIST  structNameMore %structNameMore.attributes;>


<!--                    LONG NAME: Structure Name Full             -->
<!ENTITY % structNameFull.content
                       "(%title.cnt; |
                         %xref;)*"
>
<!ENTITY % structNameFull.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  structNameFull %structNameFull.content;>
<!ATTLIST  structNameFull %structNameFull.attributes;>


<!--                    LONG NAME: Structure Name Description      -->
<!ENTITY % structNameDescription.content
                       "(%para.cnt;)*"
>
<!ENTITY % structNameDescription.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  structNameDescription %structNameDescription.content;>
<!ATTLIST  structNameDescription %structNameDescription.attributes;>


<!--                    LONG NAME: Structure Body                  -->
<!ENTITY % structBody.content
                       "((%structDescription;),
                         (%structProperties;))"
>
<!ENTITY % structBody.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  structBody %structBody.content;>
<!ATTLIST  structBody %structBody.attributes;>


<!--                    LONG NAME: Structure Description           -->
<!ENTITY % structDescription.content
                       "(%section.cnt;)*"
>
<!ENTITY % structDescription.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  structDescription %structDescription.content;>
<!ATTLIST  structDescription %structDescription.attributes;>


<!--                    LONG NAME: Structure Properties            -->
<!ENTITY % structProperties.content
                       "(%structPropset;)"
>
<!ENTITY % structProperties.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  structProperties %structProperties.content;>
<!ATTLIST  structProperties %structProperties.attributes;>


<!--                    LONG NAME: Structure Properties Set        -->
<!ENTITY % structPropset.content
                       "((%structOpcode;),
                         (%structType;))"
>
<!ENTITY % structPropset.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  structPropset %structPropset.content;>
<!ATTLIST  structPropset %structPropset.attributes;>


<!--                    LONG NAME: Structure Operation Code        -->
<!ENTITY % structOpcode.content
                       "(%dword.atomicvalue.cnt;)*"
>
<!ENTITY % structOpcode.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  structOpcode %structOpcode.content;>
<!ATTLIST  structOpcode %structOpcode.attributes;>


<!--                    LONG NAME: Structure Type                  -->
<!ENTITY % structType.content
                       "EMPTY"
>
<!ENTITY % structType.attributes
              "structType
                          (msg |
                           sub)
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  structType %structType.content;>
<!ATTLIST  structType %structType.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  frmwrStruct  %global-atts;  class CDATA "- topic/topic reference/reference frmwrStruct/frmwrStruct ">
<!ATTLIST  structName   %global-atts;  class CDATA "- topic/title reference/title frmwrStruct/structName ">
<!ATTLIST  structNameMore %global-atts;  class CDATA "- topic/abstract reference/abstract frmwrStruct/structNameMore ">
<!ATTLIST  structNameFull %global-atts;  class CDATA "- topic/shortdesc reference/shortdesc frmwrStruct/structNameFull ">
<!ATTLIST  structNameDescription %global-atts;  class CDATA "- topic/p reference/p frmwrStruct/structNameDescription ">
<!ATTLIST  structBody   %global-atts;  class CDATA "- topic/body reference/refbody frmwrStruct/structBody ">
<!ATTLIST  structDescription %global-atts;  class CDATA "- topic/section reference/section frmwrStruct/structDescription ">
<!ATTLIST  structProperties %global-atts;  class CDATA "- topic/simpletable reference/simpletable frmwrStruct/structProperties ">
<!ATTLIST  structPropset %global-atts;  class CDATA "- topic/strow reference/strow frmwrStruct/structPropset ">
<!ATTLIST  structOpcode %global-atts;  class CDATA "- topic/stentry reference/stentry frmwrStruct/structOpcode ">
<!ATTLIST  structType   %global-atts;  class CDATA "- topic/stentry reference/stentry frmwrStruct/structType ">

<!-- ================== End of Atmel DITA FRMWR Structure ==================== -->
 