<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA SIDSC Bit Field                              -->
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
<!-- PUBLIC "-//Atmel//ELEMENTS DITA SIDSC Bit Field//EN"          -->
<!--       Delivered as file "sidsc-bitField.mod"                  -->
<!-- ============================================================= -->
<!-- Copyright OASIS 2009                                          -->
<!-- Author: Seth Park                                             -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % bitField    "bitField"                                    >
<!ENTITY % bitFieldName
                       "bitFieldName"                                >
<!ENTITY % bitFieldBriefDescription
                       "bitFieldBriefDescription"                    >
<!ENTITY % bitFieldDescription
                       "bitFieldDescription"                         >
<!ENTITY % bitFieldProperties
                       "bitFieldProperties"                          >
<!ENTITY % bitFieldPropset
                       "bitFieldPropset"                             >
<!ENTITY % bitFieldBody
                       "bitFieldBody"                                >
<!ENTITY % bitNumbers  "bitNumbers"                                  >
<!ENTITY % bitWidth    "bitWidth"                                    >
<!ENTITY % bitOffset   "bitOffset"                                   >
<!ENTITY % bitFieldAccess
                       "bitFieldAccess"                              >
<!ENTITY % bitFieldRadix
                       "bitFieldRadix"                               >
<!ENTITY % bitFieldReset
                       "bitFieldReset"                               >
<!ENTITY % bitFieldResetValue
                       "bitFieldResetValue"                          >
<!ENTITY % bitFieldResetTrig
                       "bitFieldResetTrig"                           >
<!ENTITY % bitFieldResetValueSource
                       "bitFieldResetValueSource"                    >
<!ENTITY % bitFieldValues
                       "bitFieldValues"                              >
<!ENTITY % bitFieldValueGroup
                       "bitFieldValueGroup"                          >
<!ENTITY % bitFieldValue
                       "bitFieldValue"                               >
<!ENTITY % bitFieldValueName
                       "bitFieldValueName"                           >
<!ENTITY % bitFieldValueDescription
                       "bitFieldValueDescription"                    >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % sidsc-bitField-info-types
              "%info-types;"
>
<!ENTITY % dataPhrase.cnt
              "#PCDATA |
               ph"
>
<!ENTITY % ish-atts.bitFieldBriefDescription
              ""
>
<!ENTITY % ish-atts.bitFieldName
              ""
>
<!ENTITY % ish-atts.bitFieldDescription
              ""
>
<!ENTITY % ish-atts.bitFieldProperties
              ""
>
<!ENTITY % ish-atts.bitFieldPropset
              ""
>
<!ENTITY % ish-atts.bitFieldBody
              ""
>
<!ENTITY % ish-atts.bitNumbers
              ""
>
<!ENTITY % ish-atts.bitWidth
              ""
>
<!ENTITY % ish-atts.bitOffset
              ""
>
<!ENTITY % ish-atts.bitFieldAccess
              ""
>
<!ENTITY % ish-atts.bitFieldRadix
              ""
>
<!ENTITY % ish-atts.bitFieldReset
              ""
>
<!ENTITY % ish-atts.bitFieldResetValue
              ""
>
<!ENTITY % ish-atts.bitFieldResetTrig
              ""
>
<!ENTITY % ish-atts.bitFieldResetValueSource
              ""
>
<!ENTITY % ish-atts.bitFieldValues
              ""
>
<!ENTITY % ish-atts.bitFieldValueGroup
              ""
>
<!ENTITY % ish-atts.bitFieldValue
              ""
>
<!ENTITY % ish-atts.bitFieldValueName
              ""
>
<!ENTITY % ish-atts.bitFieldValueDescription
              ""
>
<!--                    LONG NAME: Bit Field                       -->
<!ENTITY % bitField.content
                       "((%bitFieldName;),
                         (%bitFieldBriefDescription;),
                         (%bitFieldBody;),
                         (%sidsc-bitField-info-types;)*)"
>
<!ENTITY % bitField.attributes
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
<!ELEMENT  bitField %bitField.content;>
<!ATTLIST  bitField %bitField.attributes;
                 %arch-atts;
                 domains 
                        CDATA
                                  "&included-domains;"
>


<!--                    LONG NAME: Bit Field Name                  -->
<!ENTITY % bitFieldName.content
                       "(%title.cnt;)*"
>
<!ENTITY % bitFieldName.attributes
              "%ish-atts.bitFieldName;
               %id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  bitFieldName %bitFieldName.content;>
<!ATTLIST  bitFieldName %bitFieldName.attributes;>


<!--                    LONG NAME: Bit Field Brief Description     -->
<!ENTITY % bitFieldBriefDescription.content
                       "(%dataPhrase.cnt; |
                         %body.cnt;)*"
>
<!ENTITY % bitFieldBriefDescription.attributes
              "%ish-atts.bitFieldBriefDescription;
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  bitFieldBriefDescription %bitFieldBriefDescription.content;>
<!ATTLIST  bitFieldBriefDescription %bitFieldBriefDescription.attributes;>


<!--                    LONG NAME: Bit Field Description           -->
<!ENTITY % bitFieldDescription.content
                       "(%section.notitle.cnt;)*"
>
<!ENTITY % bitFieldDescription.attributes
              "%ish-atts.bitFieldDescription;
               %id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  bitFieldDescription %bitFieldDescription.content;>
<!ATTLIST  bitFieldDescription %bitFieldDescription.attributes;>


<!--                    LONG NAME: Bit Field Properties            -->
<!ENTITY % bitFieldProperties.content
                       "(%bitFieldPropset;)"
>
<!ENTITY % bitFieldProperties.attributes
              "%ish-atts.bitFieldProperties;
               %id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  bitFieldProperties %bitFieldProperties.content;>
<!ATTLIST  bitFieldProperties %bitFieldProperties.attributes;>


<!--                    LONG NAME: Bit Field Properties Set        -->
<!ENTITY % bitFieldPropset.content
                       "((%bitNumbers;)?,
                         (%bitWidth;),
                         (%bitOffset;)?,
                         (%bitFieldAccess;)?,
                         (%bitFieldRadix;)?,
                         (%bitFieldReset;)*,
                         (dimension)?)"
>
<!ENTITY % bitFieldPropset.attributes
              "%ish-atts.bitFieldPropset;
               %id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  bitFieldPropset %bitFieldPropset.content;>
<!ATTLIST  bitFieldPropset %bitFieldPropset.attributes;>


<!--                    LONG NAME: Bit Field Body                  -->
<!ENTITY % bitFieldBody.content
                       "((%bitFieldDescription;),
                         (%bitFieldProperties;),
                         (%bitFieldValues;)?)"
>
<!ENTITY % bitFieldBody.attributes
              "%ish-atts.bitFieldBody;
               %id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  bitFieldBody %bitFieldBody.content;>
<!ATTLIST  bitFieldBody %bitFieldBody.attributes;>


<!--                    LONG NAME: Bit Numbers                     -->
<!ENTITY % bitNumbers.content
                       "(%dataPhrase.cnt;)*"
>
<!ENTITY % bitNumbers.attributes
              "%ish-atts.bitNumbers;
               %univ-atts;
               specentry
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  bitNumbers %bitNumbers.content;>
<!ATTLIST  bitNumbers %bitNumbers.attributes;>


<!--                    LONG NAME: Bit Width                       -->
<!ENTITY % bitWidth.content
                       "(%dataPhrase.cnt;)*"
>
<!ENTITY % bitWidth.attributes
              "%ish-atts.bitWidth;
               %univ-atts;
               specentry
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  bitWidth %bitWidth.content;>
<!ATTLIST  bitWidth %bitWidth.attributes;>


<!--                    LONG NAME: Bit Offset                      -->
<!ENTITY % bitOffset.content
                       "(%dataPhrase.cnt;)*"
>
<!ENTITY % bitOffset.attributes
              "%ish-atts.bitOffset;
               %univ-atts;
               specentry
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  bitOffset %bitOffset.content;>
<!ATTLIST  bitOffset %bitOffset.attributes;>


<!--                    LONG NAME: Bit Field Access                -->
<!ENTITY % bitFieldAccess.content
                       "(%dataPhrase.cnt;)*"
>
<!ENTITY % bitFieldAccess.attributes
              "%ish-atts.bitFieldAccess;
               %univ-atts;
               specentry
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  bitFieldAccess %bitFieldAccess.content;>
<!ATTLIST  bitFieldAccess %bitFieldAccess.attributes;>


<!--                    LONG NAME: Bit Field Radix                 -->
<!ENTITY % bitFieldRadix.content
                       "(%dataPhrase.cnt;)*"
>
<!ENTITY % bitFieldRadix.attributes
              "%ish-atts.bitFieldRadix;
               %univ-atts;
               specentry
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  bitFieldRadix %bitFieldRadix.content;>
<!ATTLIST  bitFieldRadix %bitFieldRadix.attributes;>


<!--                    LONG NAME: Bit Field Reset                 -->
<!ENTITY % bitFieldReset.content
                       "((%bitFieldResetValue; |
                          %bitFieldResetValueSource;),
                         (%bitFieldResetTrig;)?)"
>
<!ENTITY % bitFieldReset.attributes
              "%ish-atts.bitFieldReset;
               %id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  bitFieldReset %bitFieldReset.content;>
<!ATTLIST  bitFieldReset %bitFieldReset.attributes;>


<!--                    LONG NAME: Bit Field Reset Value           -->
<!ENTITY % bitFieldResetValue.content
                       "(%dataPhrase.cnt;)*"
>
<!ENTITY % bitFieldResetValue.attributes
              "%ish-atts.bitFieldResetValue;
               %univ-atts;
               specentry
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  bitFieldResetValue %bitFieldResetValue.content;>
<!ATTLIST  bitFieldResetValue %bitFieldResetValue.attributes;>


<!--                    LONG NAME: Bit Field Reset Trigger         -->
<!ENTITY % bitFieldResetTrig.content
                       "(%dataPhrase.cnt;)*"
>
<!ENTITY % bitFieldResetTrig.attributes
              "%ish-atts.bitFieldResetTrig;
               %univ-atts;
               specentry
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  bitFieldResetTrig %bitFieldResetTrig.content;>
<!ATTLIST  bitFieldResetTrig %bitFieldResetTrig.attributes;>


<!--                    LONG NAME: Bit Field Reset Value Source    -->
<!ENTITY % bitFieldResetValueSource.content
                       "(%dataPhrase.cnt;)*"
>
<!ENTITY % bitFieldResetValueSource.attributes
              "%ish-atts.bitFieldResetValueSource;
               %univ-atts;
               specentry
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  bitFieldResetValueSource %bitFieldResetValueSource.content;>
<!ATTLIST  bitFieldResetValueSource %bitFieldResetValueSource.attributes;>


<!--                    LONG NAME: Bit Field Values                -->
<!ENTITY % bitFieldValues.content
                       "(%bitFieldValueGroup;)+"
>
<!ENTITY % bitFieldValues.attributes
              "%ish-atts.bitFieldValues;
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  bitFieldValues %bitFieldValues.content;>
<!ATTLIST  bitFieldValues %bitFieldValues.attributes;>


<!--                    LONG NAME: Bit Field Value Group           -->
<!ENTITY % bitFieldValueGroup.content
                       "((%bitFieldValue;)?,
                         (%bitFieldValueName;)?,
                         (%bitFieldValueDescription;)?)"
>
<!ENTITY % bitFieldValueGroup.attributes
              "%ish-atts.bitFieldValueGroup;
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  bitFieldValueGroup %bitFieldValueGroup.content;>
<!ATTLIST  bitFieldValueGroup %bitFieldValueGroup.attributes;>


<!--                    LONG NAME: Bit Field Value                 -->
<!ENTITY % bitFieldValue.content
                       "(%dataPhrase.cnt;)*"
>
<!ENTITY % bitFieldValue.attributes
              "%ish-atts.bitFieldValue;
               %univ-atts;
               specentry
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  bitFieldValue %bitFieldValue.content;>
<!ATTLIST  bitFieldValue %bitFieldValue.attributes;>


<!--                    LONG NAME: Bit Field Value Name            -->
<!ENTITY % bitFieldValueName.content
                       "(%dataPhrase.cnt;)*"
>
<!ENTITY % bitFieldValueName.attributes
              "%ish-atts.bitFieldValueName;
               %univ-atts;
               specentry
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  bitFieldValueName %bitFieldValueName.content;>
<!ATTLIST  bitFieldValueName %bitFieldValueName.attributes;>


<!--                    LONG NAME: Bit Field Value Description     -->
<!ENTITY % bitFieldValueDescription.content
                       "(%tblcell.cnt;)*"
>
<!ENTITY % bitFieldValueDescription.attributes
              "%ish-atts.bitFieldValueDescription;
               %univ-atts;
               specentry
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  bitFieldValueDescription %bitFieldValueDescription.content;>
<!ATTLIST  bitFieldValueDescription %bitFieldValueDescription.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  bitField     %global-atts;  class CDATA "- topic/topic reference/reference sidsc-bitField/bitField ">
<!ATTLIST  bitFieldName %global-atts;  class CDATA "- topic/title reference/title sidsc-bitField/bitFieldName ">
<!ATTLIST  bitFieldBriefDescription %global-atts;  class CDATA "- topic/shortdesc reference/shortdesc sidsc-bitField/bitFieldBriefDescription ">
<!ATTLIST  bitFieldDescription %global-atts;  class CDATA "- topic/section reference/section sidsc-bitField/bitFieldDescription ">
<!ATTLIST  bitFieldProperties %global-atts;  class CDATA "- topic/simpletable dataTableDomain/dataTable sidsc-bitField/bitFieldProperties ">
<!ATTLIST  bitFieldPropset %global-atts;  class CDATA "- topic/strow dataTableDomain/dataRow sidsc-bitField/bitFieldPropset ">
<!ATTLIST  bitFieldBody %global-atts;  class CDATA "- topic/body reference/refbody sidsc-bitField/bitFieldBody ">
<!ATTLIST  bitNumbers   %global-atts;  class CDATA "- topic/stentry dataTableDomain/dataEntry sidsc-bitField/bitNumbers ">
<!ATTLIST  bitWidth     %global-atts;  class CDATA "- topic/stentry dataTableDomain/dataEntry sidsc-bitField/bitWidth ">
<!ATTLIST  bitOffset    %global-atts;  class CDATA "- topic/stentry dataTableDomain/dataEntry sidsc-bitField/bitOffset ">
<!ATTLIST  bitFieldAccess %global-atts;  class CDATA "- topic/stentry dataTableDomain/dataEntry sidsc-bitField/bitFieldAccess ">
<!ATTLIST  bitFieldRadix %global-atts;  class CDATA "- topic/stentry dataTableDomain/dataEntry sidsc-bitField/bitFieldRadix ">
<!ATTLIST  bitFieldReset %global-atts;  class CDATA "- topic/stentry dataTableDomain/dataEntry sidsc-bitField/bitFieldReset ">
<!ATTLIST  bitFieldResetValue %global-atts;  class CDATA "- topic/ph dataTableDomain/dataPhrase sidsc-bitField/bitFieldResetValue ">
<!ATTLIST  bitFieldResetTrig %global-atts;  class CDATA "- topic/ph dataTableDomain/dataPhrase sidsc-bitField/bitFieldResetTrig ">
<!ATTLIST  bitFieldResetValueSource %global-atts;  class CDATA "- topic/ph dataTableDomain/dataPhrase sidsc-bitField/bitFieldResetValueSource ">
<!ATTLIST  bitFieldValues %global-atts;  class CDATA "- topic/simpletable dataTableDomain/dataTable sidsc-bitField/bitFieldValues ">
<!ATTLIST  bitFieldValueGroup %global-atts;  class CDATA "- topic/strow dataTableDomain/dataRow sidsc-bitField/bitFieldGroup ">
<!ATTLIST  bitFieldValue %global-atts;  class CDATA "- topic/stentry dataTableDomain/dataEntry sidsc-bitField/bitFieldValue ">
<!ATTLIST  bitFieldValueName %global-atts;  class CDATA "- topic/stentry dataTableDomain/dataEntry sidsc-bitField/bitFieldValueName ">
<!ATTLIST  bitFieldValueDescription %global-atts;  class CDATA "- topic/stentry dataTableDomain/dataEntry sidsc-bitField/bitFieldValueDescription ">

<!-- ================== End of DITA SIDSC Bit Field ==================== -->
 