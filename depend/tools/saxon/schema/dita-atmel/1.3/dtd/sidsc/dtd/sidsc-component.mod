<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA SIDSC Component                              -->
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
<!-- PUBLIC "-//Atmel//ELEMENTS DITA SIDSC Component//EN"          -->
<!--       Delivered as file "sidsc-component.mod"                 -->
<!-- ============================================================= -->
<!-- Copyright OASIS 2009                                          -->
<!-- Author: Seth Park                                             -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % sidsc-component
                       "sidsc-component"                             >
<!ENTITY % componentName
                       "componentName"                               >
<!ENTITY % componentBriefDescription
                       "componentBriefDescription"                   >
<!ENTITY % componentBody
                       "componentBody"                               >
<!ENTITY % componentDescription
                       "componentDescription"                        >
<!ENTITY % unitAddress "unitAddress"                                 >
<!ENTITY % componentInstanceVariables
                       "componentInstanceVariables"                  >
<!ENTITY % componentData
                       "componentData"                               >
<!ENTITY % componentDataKey
                       "componentDataKey"                            >
<!ENTITY % componentDataValue
                       "componentDataValue"                          >
<!ENTITY % instanceParameters
                       "instanceParameters"                          >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % sidsc-component-info-types
              "%info-types;"
>
<!ENTITY % sidsc.plain.text.cnt
              "#PCDATA |
               %text; |
               ph"
>
<!--                    LONG NAME: SIDSC Component                 -->
<!ENTITY % sidsc-component.content
                       "((%componentName;),
                         (%data;)*,
                         (%componentBriefDescription;),
                         (%componentBody;),
                         (%sidsc-component-info-types;)*)"
>
<!ENTITY % sidsc-component.attributes
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
<!ELEMENT  sidsc-component %sidsc-component.content;>
<!ATTLIST  sidsc-component %sidsc-component.attributes;
                 %arch-atts;
                 domains 
                        CDATA
                                  "&included-domains;"
>


<!--                    LONG NAME: Component Name                  -->
<!ENTITY % componentName.content
                       "(%title.cnt;)*"
>
<!ENTITY % componentName.attributes
              "%id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  componentName %componentName.content;>
<!ATTLIST  componentName %componentName.attributes;>


<!--                    LONG NAME: Component Brief Description     -->
<!ENTITY % componentBriefDescription.content
                       "(%title.cnt;)*"
>
<!ENTITY % componentBriefDescription.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  componentBriefDescription %componentBriefDescription.content;>
<!ATTLIST  componentBriefDescription %componentBriefDescription.attributes;>


<!--                    LONG NAME: Component Body                  -->
<!ENTITY % componentBody.content
                       "((%body.cnt;)*,
                         (%componentDescription;),
                         (%unitAddress;)?,
                         (%componentInstanceVariables;)?)"
>
<!ENTITY % componentBody.attributes
              "%id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  componentBody %componentBody.content;>
<!ATTLIST  componentBody %componentBody.attributes;>


<!--                    LONG NAME: Component Description           -->
<!ENTITY % componentDescription.content
                       "(%section.notitle.cnt;)*"
>
<!ENTITY % componentDescription.attributes
              "%id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  componentDescription %componentDescription.content;>
<!ATTLIST  componentDescription %componentDescription.attributes;>


<!--                    LONG NAME: Unit Address                    -->
<!ENTITY % unitAddress.content
                       "(%sidsc.plain.text.cnt;)*"
>
<!ENTITY % unitAddress.attributes
              "%id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  unitAddress %unitAddress.content;>
<!ATTLIST  unitAddress %unitAddress.attributes;>


<!--                    LONG NAME: Component Instance Variables    -->
<!ENTITY % componentInstanceVariables.content
                       "(%componentData;)*"
>
<!ENTITY % componentInstanceVariables.attributes
              "spectitle
                          CDATA
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  componentInstanceVariables %componentInstanceVariables.content;>
<!ATTLIST  componentInstanceVariables %componentInstanceVariables.attributes;>


<!--                    LONG NAME: Component Data                  -->
<!ENTITY % componentData.content
                       "(((%componentDataKey;),
                          (%componentDataValue;)) |
                         (%instanceParameters;))*"
>
<!ENTITY % componentData.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  componentData %componentData.content;>
<!ATTLIST  componentData %componentData.attributes;>


<!--                    LONG NAME: Component Data Key              -->
<!ENTITY % componentDataKey.content
                       "(%term.cnt;)*"
>
<!ENTITY % componentDataKey.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  componentDataKey %componentDataKey.content;>
<!ATTLIST  componentDataKey %componentDataKey.attributes;>


<!--                    LONG NAME: Component Data Value            -->
<!ENTITY % componentDataValue.content
                       "(%defn.cnt;)*"
>
<!ENTITY % componentDataValue.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  componentDataValue %componentDataValue.content;>
<!ATTLIST  componentDataValue %componentDataValue.attributes;>


<!--                    LONG NAME: Instance Parameters             -->
<!ENTITY % instanceParameters.content
                       "(%ph;)*"
>
<!ENTITY % instanceParameters.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  instanceParameters %instanceParameters.content;>
<!ATTLIST  instanceParameters %instanceParameters.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  sidsc-component %global-atts;  class CDATA "- topic/topic reference/reference sidsc-component/sidsc-component ">
<!ATTLIST  componentName %global-atts;  class CDATA "- topic/title reference/title sidsc-component/componentName ">
<!ATTLIST  componentBriefDescription %global-atts;  class CDATA "- topic/shortdesc reference/shortdesc sidsc-component/componentBriefDescription ">
<!ATTLIST  componentBody %global-atts;  class CDATA "- topic/body reference/refbody sidsc-component/componentBody ">
<!ATTLIST  componentDescription %global-atts;  class CDATA "- topic/section reference/section sidsc-component/componentDescription ">
<!ATTLIST  unitAddress  %global-atts;  class CDATA "- topic/p reference/p sidsc-component/unitAddress ">
<!ATTLIST  componentInstanceVariables %global-atts;  class CDATA "- topic/simpletable dataTableDomain/dataTable/componentInstanceVariables ">
<!ATTLIST  componentData %global-atts;  class CDATA "- topic/strow dataTableDomain/dataRow sidsc-component/componentData ">
<!ATTLIST  componentDataKey %global-atts;  class CDATA "- topic/stentry dataTableDomain/dataEntry sidsc-component/componentDataKey ">
<!ATTLIST  componentDataValue %global-atts;  class CDATA "- topic/stentry dataTableDomain/dataEntry sidsc-component/componentDataValue ">
<!ATTLIST  instanceParameters %global-atts;  class CDATA "- topic/stentry dataTableDomain/dataEntry sidsc-component/instanceParameters ">

<!-- ================== End of DITA SIDSC Component ==================== -->
 