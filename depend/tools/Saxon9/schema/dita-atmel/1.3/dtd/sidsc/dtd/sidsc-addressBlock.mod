<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA SIDSC Address Block                          -->
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
<!-- PUBLIC "-//Atmel//ELEMENTS DITA SIDSC Address Block//EN"      -->
<!--       Delivered as file "sidsc-addressBlock.mod"              -->
<!-- ============================================================= -->
<!-- Copyright OASIS 2009                                          -->
<!-- Author: Seth Park                                             -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % addressBlock
                       "addressBlock"                                >
<!ENTITY % addressBlockName
                       "addressBlockName"                            >
<!ENTITY % addressBlockBriefDescription
                       "addressBlockBriefDescription"                >
<!ENTITY % addressBlockBody
                       "addressBlockBody"                            >
<!ENTITY % addressBlockDescription
                       "addressBlockDescription"                     >
<!ENTITY % addressBlockProperties
                       "addressBlockProperties"                      >
<!ENTITY % addressBlockPropset
                       "addressBlockPropset"                         >
<!ENTITY % baseAddress "baseAddress"                                 >
<!ENTITY % range       "range"                                       >
<!ENTITY % width       "width"                                       >
<!ENTITY % byteOrder   "byteOrder"                                   >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % sidsc-addressBlock-info-types
              "%info-types;"
>
<!--                    LONG NAME: Address Block                   -->
<!ENTITY % addressBlock.content
                       "((%addressBlockName;),
                         (%addressBlockBriefDescription;),
                         (%addressBlockBody;),
                         (%sidsc-addressBlock-info-types;)*)"
>
<!ENTITY % addressBlock.attributes
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
<!ELEMENT  addressBlock %addressBlock.content;>
<!ATTLIST  addressBlock %addressBlock.attributes;
                 %arch-atts;
                 domains 
                        CDATA
                                  "&included-domains;"
>


<!--                    LONG NAME: Address Block Name              -->
<!ENTITY % addressBlockName.content
                       "(%title.cnt;)*"
>
<!ENTITY % addressBlockName.attributes
              "%id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  addressBlockName %addressBlockName.content;>
<!ATTLIST  addressBlockName %addressBlockName.attributes;>


<!--                    LONG NAME: Address Block Brief Description -->
<!ENTITY % addressBlockBriefDescription.content
                       "(%title.cnt;)*"
>
<!ENTITY % addressBlockBriefDescription.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  addressBlockBriefDescription %addressBlockBriefDescription.content;>
<!ATTLIST  addressBlockBriefDescription %addressBlockBriefDescription.attributes;>


<!--                    LONG NAME: Address Block Body              -->
<!ENTITY % addressBlockBody.content
                       "((%addressBlockDescription;),
                         (%addressBlockProperties;))"
>
<!ENTITY % addressBlockBody.attributes
              "%id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  addressBlockBody %addressBlockBody.content;>
<!ATTLIST  addressBlockBody %addressBlockBody.attributes;>


<!--                    LONG NAME: Address Block Description       -->
<!ENTITY % addressBlockDescription.content
                       "(%body.cnt;)*"
>
<!ENTITY % addressBlockDescription.attributes
              "%id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  addressBlockDescription %addressBlockDescription.content;>
<!ATTLIST  addressBlockDescription %addressBlockDescription.attributes;>


<!--                    LONG NAME: Address Block Properties        -->
<!ENTITY % addressBlockProperties.content
                       "(%addressBlockPropset;)"
>
<!ENTITY % addressBlockProperties.attributes
              "%id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  addressBlockProperties %addressBlockProperties.content;>
<!ATTLIST  addressBlockProperties %addressBlockProperties.attributes;>


<!--                    LONG NAME: Address Block Properties Set    -->
<!ENTITY % addressBlockPropset.content
                       "((%baseAddress;),
                         (%range;)?,
                         (%width;)?,
                         (%byteOrder;))"
>
<!ENTITY % addressBlockPropset.attributes
              "%id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  addressBlockPropset %addressBlockPropset.content;>
<!ATTLIST  addressBlockPropset %addressBlockPropset.attributes;>


<!--                    LONG NAME: Base Address                    -->
<!ENTITY % baseAddress.content
                       "(#PCDATA)"
>
<!ENTITY % baseAddress.attributes
              "%id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  baseAddress %baseAddress.content;>
<!ATTLIST  baseAddress %baseAddress.attributes;>


<!--                    LONG NAME: Range                           -->
<!ENTITY % range.content
                       "(#PCDATA)"
>
<!ENTITY % range.attributes
              "%id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  range %range.content;>
<!ATTLIST  range %range.attributes;>


<!--                    LONG NAME: Width                           -->
<!ENTITY % width.content
                       "(#PCDATA)"
>
<!ENTITY % width.attributes
              "%id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  width %width.content;>
<!ATTLIST  width %width.attributes;>


<!--                    LONG NAME: Byte Order                      -->
<!ENTITY % byteOrder.content
                       "(#PCDATA)"
>
<!ENTITY % byteOrder.attributes
              "%id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  byteOrder %byteOrder.content;>
<!ATTLIST  byteOrder %byteOrder.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  addressBlock %global-atts;  class CDATA "- topic/topic reference/reference sidsc-addressBlock/addressBlock ">
<!ATTLIST  addressBlockName %global-atts;  class CDATA "- topic/title reference/title sidsc-addressBlock/addressBlockName ">
<!ATTLIST  addressBlockBriefDescription %global-atts;  class CDATA "- topic/shortdesc reference/shortdesc sidsc-addressBlock/addressBlockBriefDescription ">
<!ATTLIST  addressBlockBody %global-atts;  class CDATA "- topic/body reference/refbody sidsc-addressBlock/addressBlockBody ">
<!ATTLIST  addressBlockDescription %global-atts;  class CDATA "- topic/section reference/section sidsc-addressBlock/addressBlockDescription ">
<!ATTLIST  addressBlockProperties %global-atts;  class CDATA "- topic/simpletable dataTableDomain/dataTable sidsc-addressBlock/addressBlockProperties ">
<!ATTLIST  addressBlockPropset %global-atts;  class CDATA "- topic/strow dataTableDomain/dataRow sidsc-addressBlock/addressBlockPropset ">
<!ATTLIST  baseAddress  %global-atts;  class CDATA "- topic/stentry dataTableDomain/dataEntry sidsc-addressBlock/baseAddress ">
<!ATTLIST  range        %global-atts;  class CDATA "- topic/stentry dataTableDomain/dataEntry sidsc-addressBlock/range ">
<!ATTLIST  width        %global-atts;  class CDATA "- topic/stentry dataTableDomain/dataEntry sidsc-addressBlock/width ">
<!ATTLIST  byteOrder    %global-atts;  class CDATA "- topic/stentry dataTableDomain/dataEntry sidsc-addressBlock/byteOrder ">

<!-- ================== End of DITA SIDSC Address Block ==================== -->
 