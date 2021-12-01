<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA SIDSC dataTableDomain                        -->
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
<!-- PUBLIC "-//Atmel//ELEMENTS DITA SIDSC dataTable Domain//EN"   -->
<!--       Delivered as file "sidscDomain.mod"                     -->
<!-- ============================================================= -->
<!-- Copyright OASIS 2009                                          -->
<!-- Author: Seth Park                                             -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % dataTable   "dataTable"                                   >
<!ENTITY % dataRow     "dataRow"                                     >
<!ENTITY % dataEntry   "dataEntry"                                   >
<!ENTITY % dataPhrase  "dataPhrase"                                  >
<!ENTITY % dataGroup   "dataGroup"                                   >
<!ENTITY % dataInstance
                       "dataInstance"                                >
<!ENTITY % dataInstanceValue
                       "dataInstanceValue"                           >
<!ENTITY % dataInstanceMeaning
                       "dataInstanceMeaning"                         >
<!ENTITY % dimension   "dimension"                                   >
<!ENTITY % dimensionValue
                       "dimensionValue"                              >
<!ENTITY % dimensionIncrement
                       "dimensionIncrement"                          >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % dataPhrase.cnt
              "#PCDATA |
               %text; |
               ph"
>
<!ENTITY % sidsc.plain.text.cnt
              "#PCDATA |
               %text; |
               ph"
>
<!--                    LONG NAME: Data Table                      -->
<!ENTITY % dataTable.content
                       "(%dataRow;)+"
>
<!ENTITY % dataTable.attributes
              "relcolwidth
                          CDATA
                                    #IMPLIED
               keycol
                          NMTOKEN
                                    #IMPLIED
               refcols
                          NMTOKENS
                                    #IMPLIED
               %display-atts;
               %univ-atts;
               spectitle
                          CDATA
                                    #IMPLIED
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  dataTable %dataTable.content;>
<!ATTLIST  dataTable %dataTable.attributes;>


<!--                    LONG NAME: Data Row                        -->
<!ENTITY % dataRow.content
                       "(%dataEntry;)"
>
<!ENTITY % dataRow.attributes
              "%univ-atts;"
>
<!ELEMENT  dataRow %dataRow.content;>
<!ATTLIST  dataRow %dataRow.attributes;>


<!--                    LONG NAME: Data Entry                      -->
<!ENTITY % dataEntry.content
                       "(%dataPhrase.cnt; |
                         %dataPhrase; |
                         %dataGroup;)*"
>
<!ENTITY % dataEntry.attributes
              "%univ-atts;
               specentry
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  dataEntry %dataEntry.content;>
<!ATTLIST  dataEntry %dataEntry.attributes;>


<!--                    LONG NAME: Data Phrase                     -->
<!ENTITY % dataPhrase.content
                       "(%dataPhrase.cnt;)*"
>
<!ENTITY % dataPhrase.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  dataPhrase %dataPhrase.content;>
<!ATTLIST  dataPhrase %dataPhrase.attributes;>


<!--                    LONG NAME: Data Group                      -->
<!ENTITY % dataGroup.content
                       "(%dataInstance;)"
>
<!ENTITY % dataGroup.attributes
              "%univ-atts;"
>
<!ELEMENT  dataGroup %dataGroup.content;>
<!ATTLIST  dataGroup %dataGroup.attributes;>


<!--                    LONG NAME: Data Instance                   -->
<!ENTITY % dataInstance.content
                       "(%dataInstanceValue;,
                         %dataInstanceMeaning;)+"
>
<!ENTITY % dataInstance.attributes
              "%univ-atts;"
>
<!ELEMENT  dataInstance %dataInstance.content;>
<!ATTLIST  dataInstance %dataInstance.attributes;>


<!--                    LONG NAME: Data Instance Value             -->
<!ENTITY % dataInstanceValue.content
                       "(%sidsc.plain.text.cnt;)*"
>
<!ENTITY % dataInstanceValue.attributes
              "%univ-atts;"
>
<!ELEMENT  dataInstanceValue %dataInstanceValue.content;>
<!ATTLIST  dataInstanceValue %dataInstanceValue.attributes;>


<!--                    LONG NAME: Data Instance Meaning           -->
<!ENTITY % dataInstanceMeaning.content
                       "(%sidsc.plain.text.cnt;)*"
>
<!ENTITY % dataInstanceMeaning.attributes
              "%univ-atts;"
>
<!ELEMENT  dataInstanceMeaning %dataInstanceMeaning.content;>
<!ATTLIST  dataInstanceMeaning %dataInstanceMeaning.attributes;>


<!--                    LONG NAME: Dimension                       -->
<!ENTITY % dimension.content
                       "((%dimensionValue;),
                         (%dimensionIncrement;)?,
                         (unitQualifier)?,
                         (namePattern)?)"
>
<!ENTITY % dimension.attributes
              "%id-atts;
               %localization-atts;
               %select-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  dimension %dimension.content;>
<!ATTLIST  dimension %dimension.attributes;>


<!--                    LONG NAME: Dimension Value                 -->
<!ENTITY % dimensionValue.content
                       "(%dataPhrase.cnt;)*"
>
<!ENTITY % dimensionValue.attributes
              "%id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  dimensionValue %dimensionValue.content;>
<!ATTLIST  dimensionValue %dimensionValue.attributes;>


<!--                    LONG NAME: Dimension Increment             -->
<!ENTITY % dimensionIncrement.content
                       "(%dataPhrase.cnt;)*"
>
<!ENTITY % dimensionIncrement.attributes
              "%id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  dimensionIncrement %dimensionIncrement.content;>
<!ATTLIST  dimensionIncrement %dimensionIncrement.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  dataTable    %global-atts;  class CDATA "- topic/simpletable dataTableDomain/dataTable ">
<!ATTLIST  dataRow      %global-atts;  class CDATA "- topic/strow dataTableDomain/dataRow ">
<!ATTLIST  dataEntry    %global-atts;  class CDATA "- topic/stentry dataTableDomain/dataEntry ">
<!ATTLIST  dataPhrase   %global-atts;  class CDATA "- topic/ph dataTableDomain/dataPhrase ">
<!ATTLIST  dataGroup    %global-atts;  class CDATA "- topic/dl dataTableDomain/dataGroup ">
<!ATTLIST  dataInstance %global-atts;  class CDATA "- topic/dlentry dataTableDomain/dataInstance ">
<!ATTLIST  dataInstanceValue %global-atts;  class CDATA "- topic/dt dataTableDomain/dataInstanceValue ">
<!ATTLIST  dataInstanceMeaning %global-atts;  class CDATA "- topic/dd dataTableDomain/dataInstanceMeaning ">
<!ATTLIST  dimension    %global-atts;  class CDATA "- topic/stentry dataTableDomain/dimension ">
<!ATTLIST  dimensionIncrement %global-atts;  class CDATA "- topic/ph dataTableDomain/dimensionIncrement ">
<!ATTLIST  dimensionValue %global-atts;  class CDATA "- topic/ph dataTableDomain/dimensionValue ">

<!-- ================== End of DITA SIDSC Domain ==================== -->
 