<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA SIDSC Memory Map                             -->
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
<!-- PUBLIC "-//Atmel//ELEMENTS DITA SIDSC Memory Map//EN"         -->
<!--       Delivered as file "sidsc-memoryMap.mod"                 -->
<!-- ============================================================= -->
<!-- Copyright OASIS 2009                                          -->
<!-- Author: Seth Park                                             -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % memoryMap   "memoryMap"                                   >
<!ENTITY % memoryMapName
                       "memoryMapName"                               >
<!ENTITY % memoryMapBody
                       "memoryMapBody"                               >
<!ENTITY % bitsInLau   "bitsInLau"                                   >
<!ENTITY % memoryMapClass
                       "memoryMapClass"                              >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % sidsc-memoryMap-info-types
              "%info-types;"
>
<!--                    LONG NAME: Memory Map                      -->
<!ENTITY % memoryMap.content
                       "((%memoryMapName;),
                         (%memoryMapBody;),
                         (%sidsc-memoryMap-info-types;)*)"
>
<!ENTITY % memoryMap.attributes
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
<!ELEMENT  memoryMap %memoryMap.content;>
<!ATTLIST  memoryMap %memoryMap.attributes;
                 %arch-atts;
                 domains 
                        CDATA
                                  "&included-domains;"
>


<!--                    LONG NAME: Memory Map Name                 -->
<!ENTITY % memoryMapName.content
                       "(%title.cnt;)*"
>
<!ENTITY % memoryMapName.attributes
              "%id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  memoryMapName %memoryMapName.content;>
<!ATTLIST  memoryMapName %memoryMapName.attributes;>


<!--                    LONG NAME: Memory Map Body                 -->
<!ENTITY % memoryMapBody.content
                       "((%bitsInLau;),
                         (%memoryMapClass;))"
>
<!ENTITY % memoryMapBody.attributes
              "%id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  memoryMapBody %memoryMapBody.content;>
<!ATTLIST  memoryMapBody %memoryMapBody.attributes;>


<!--                    LONG NAME: Bits In Least Adressable Unit   -->
<!ENTITY % bitsInLau.content
                       "(#PCDATA)"
>
<!ENTITY % bitsInLau.attributes
              "%id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  bitsInLau %bitsInLau.content;>
<!ATTLIST  bitsInLau %bitsInLau.attributes;>


<!--                    LONG NAME: Memory Map Class                -->
<!ENTITY % memoryMapClass.content
                       "(#PCDATA)"
>
<!ENTITY % memoryMapClass.attributes
              "%id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  memoryMapClass %memoryMapClass.content;>
<!ATTLIST  memoryMapClass %memoryMapClass.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  memoryMap    %global-atts;  class CDATA "- topic/topic reference/reference sidsc-memoryMap/memoryMap ">
<!ATTLIST  memoryMapName %global-atts;  class CDATA "- topic/title reference/title sidsc-memoryMap/memoryMapName ">
<!ATTLIST  memoryMapBody %global-atts;  class CDATA "- topic/body reference/refbody sidsc-memoryMap/memoryMapBody ">
<!ATTLIST  bitsInLau    %global-atts;  class CDATA "- topic/p reference/p sidsc-memoryMap/bitsInLau ">
<!ATTLIST  memoryMapClass %global-atts;  class CDATA "- topic/p reference/p sidsc-memoryMap/memoryMapClass ">

<!-- ================== End of DITA SIDSC Memory Map ==================== -->
 