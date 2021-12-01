<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA SIDSC Register                               -->
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
<!-- PUBLIC "-//Atmel//ELEMENTS DITA SIDSC Register//EN"           -->
<!--       Delivered as file "sidsc-register.mod"                  -->
<!-- ============================================================= -->
<!-- Copyright OASIS 2009                                          -->
<!-- Author: Seth Park                                             -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % register    "register"                                    >
<!ENTITY % registerName
                       "registerName"                                >
<!ENTITY % registerNameMore
                       "registerNameMore"                            >
<!ENTITY % registerNameFull
                       "registerNameFull"                            >
<!ENTITY % registerBriefDescription
                       "registerBriefDescription"                    >
<!ENTITY % registerBody
                       "registerBody"                                >
<!ENTITY % registerDescription
                       "registerDescription"                         >
<!ENTITY % registerProperties
                       "registerProperties"                          >
<!ENTITY % registerPropset
                       "registerPropset"                             >
<!ENTITY % registerBitsInLau
                       "registerBitsInLau"                           >
<!ENTITY % addressOffset
                       "addressOffset"                               >
<!ENTITY % registerSize
                       "registerSize"                                >
<!ENTITY % registerAccess
                       "registerAccess"                              >
<!ENTITY % registerResetValue
                       "registerResetValue"                          >
<!ENTITY % bitOrder    "bitOrder"                                    >
<!ENTITY % resetTrig   "resetTrig"                                   >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % sidsc-register-info-types
              "%info-types;"
>
<!ENTITY % dataPhrase.cnt
              "#PCDATA |
               %text; |
               ph"
>
<!ENTITY % sidsc.registerBitsInLau.cnt
              "#PCDATA |
               %text; |
               %foreign; |
               %ph;"
>
<!ENTITY % sidsc.plain.text.cnt
              "#PCDATA |
               %text; |
               ph"
>
<!ENTITY % ish-atts.registerName
              ""
>
<!ENTITY % ish-atts.registerNameMore
              ""
>
<!ENTITY % ish-atts.registerBody
              ""
>
<!ENTITY % ish-atts.registerNameFull
              ""
>
<!ENTITY % ish-atts.registerBitsInLau
              ""
>
<!ENTITY % ish-atts.registerBriefDescription
              ""
>
<!ENTITY % ish-atts.registerDescription
              ""
>
<!ENTITY % ish-atts.registerProperties
              ""
>
<!ENTITY % ish-atts.registerPropset
              ""
>
<!ENTITY % ish-atts.addressOffset
              ""
>
<!ENTITY % ish-atts.registerSize
              ""
>
<!ENTITY % ish-atts.registerAccess
              ""
>
<!ENTITY % ish-atts.registerResetValue
              ""
>
<!ENTITY % ish-atts.bitOrder
              ""
>
<!ENTITY % ish-atts.resetTrig
              ""
>
<!--                    LONG NAME: Register                        -->
<!ENTITY % register.content
                       "((%registerName;),
                         (%registerNameMore;),
                         (%registerBody;),
                         (%sidsc-register-info-types;)*)"
>
<!ENTITY % register.attributes
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
<!ELEMENT  register %register.content;>
<!ATTLIST  register %register.attributes;
                 %arch-atts;
                 domains 
                        CDATA
                                  "&included-domains;"
>


<!--                    LONG NAME: Register Name                   -->
<!ENTITY % registerName.content
                       "(%title.cnt;)*"
>
<!ENTITY % registerName.attributes
              "%ish-atts.registerName;
               %id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  registerName %registerName.content;>
<!ATTLIST  registerName %registerName.attributes;>


<!--                    LONG NAME: Register Name More              -->
<!ENTITY % registerNameMore.content
                       "((%registerNameFull;),
                         (%registerBriefDescription;)?)"
>
<!ENTITY % registerNameMore.attributes
              "%ish-atts.registerNameMore;
               %id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  registerNameMore %registerNameMore.content;>
<!ATTLIST  registerNameMore %registerNameMore.attributes;>


<!--                    LONG NAME: Register Name Full              -->
<!ENTITY % registerNameFull.content
                       "(%title.cnt;)*"
>
<!ENTITY % registerNameFull.attributes
              "%ish-atts.registerNameFull;
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  registerNameFull %registerNameFull.content;>
<!ATTLIST  registerNameFull %registerNameFull.attributes;>


<!--                    LONG NAME: Register Brief Description      -->
<!ENTITY % registerBriefDescription.content
                       "(%title.cnt;)*"
>
<!ENTITY % registerBriefDescription.attributes
              "%ish-atts.registerBriefDescription;
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  registerBriefDescription %registerBriefDescription.content;>
<!ATTLIST  registerBriefDescription %registerBriefDescription.attributes;>


<!--                    LONG NAME: Register Body                   -->
<!ENTITY % registerBody.content
                       "((%registerDescription;),
                         (%registerProperties;))"
>
<!ENTITY % registerBody.attributes
              "%ish-atts.registerBody;
               %id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  registerBody %registerBody.content;>
<!ATTLIST  registerBody %registerBody.attributes;>


<!--                    LONG NAME: Register Description            -->
<!ENTITY % registerDescription.content
                       "(%sidsc.plain.text.cnt; |
                         %body.cnt;)*"
>
<!ENTITY % registerDescription.attributes
              "%ish-atts.registerDescription;
               %id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  registerDescription %registerDescription.content;>
<!ATTLIST  registerDescription %registerDescription.attributes;>


<!--                    LONG NAME: Register Properties             -->
<!ENTITY % registerProperties.content
                       "(%registerPropset;)"
>
<!ENTITY % registerProperties.attributes
              "%ish-atts.registerProperties;
               %id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  registerProperties %registerProperties.content;>
<!ATTLIST  registerProperties %registerProperties.attributes;>


<!--                    LONG NAME: Register Properties Set         -->
<!ENTITY % registerPropset.content
                       "((%registerBitsInLau;)?,
                         (%addressOffset;),
                         (%registerSize;),
                         (%registerAccess;)?,
                         (%registerResetValue;)?,
                         (%bitOrder;),
                         (%resetTrig;)?,
                         (dimension)?)"
>
<!ENTITY % registerPropset.attributes
              "%ish-atts.registerPropset;
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  registerPropset %registerPropset.content;>
<!ATTLIST  registerPropset %registerPropset.attributes;>


<!--                    LONG NAME: Register Bits In Least-accessible Unit -->
<!ENTITY % registerBitsInLau.content
                       "(%sidsc.registerBitsInLau.cnt;)*"
>
<!ENTITY % registerBitsInLau.attributes
              "%ish-atts.registerBitsInLau;
               %id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  registerBitsInLau %registerBitsInLau.content;>
<!ATTLIST  registerBitsInLau %registerBitsInLau.attributes;>


<!--                    LONG NAME: Address Offset                  -->
<!ENTITY % addressOffset.content
                       "(%dataPhrase.cnt;)*"
>
<!ENTITY % addressOffset.attributes
              "%ish-atts.addressOffset;
               %id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  addressOffset %addressOffset.content;>
<!ATTLIST  addressOffset %addressOffset.attributes;>


<!--                    LONG NAME: Register Size                   -->
<!ENTITY % registerSize.content
                       "(%dataPhrase.cnt;)*"
>
<!ENTITY % registerSize.attributes
              "%ish-atts.registerSize;
               %id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  registerSize %registerSize.content;>
<!ATTLIST  registerSize %registerSize.attributes;>


<!--                    LONG NAME: Register Access                 -->
<!ENTITY % registerAccess.content
                       "(%dataPhrase.cnt;)*"
>
<!ENTITY % registerAccess.attributes
              "%ish-atts.registerAccess;
               %id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  registerAccess %registerAccess.content;>
<!ATTLIST  registerAccess %registerAccess.attributes;>


<!--                    LONG NAME: Register Reset Value            -->
<!ENTITY % registerResetValue.content
                       "(%dataPhrase.cnt;)*"
>
<!ENTITY % registerResetValue.attributes
              "%ish-atts.registerResetValue;
               %id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  registerResetValue %registerResetValue.content;>
<!ATTLIST  registerResetValue %registerResetValue.attributes;>


<!--                    LONG NAME: Bit Order                       -->
<!ENTITY % bitOrder.content
                       "(%sidsc.plain.text.cnt;)*"
>
<!ENTITY % bitOrder.attributes
              "%ish-atts.bitOrder;
               %id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  bitOrder %bitOrder.content;>
<!ATTLIST  bitOrder %bitOrder.attributes;>


<!--                    LONG NAME: Reset Trigger                   -->
<!ENTITY % resetTrig.content
                       "(%sidsc.plain.text.cnt;)*"
>
<!ENTITY % resetTrig.attributes
              "%ish-atts.resetTrig;
               %id-atts;
               %cidAtt-d-attribute;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  resetTrig %resetTrig.content;>
<!ATTLIST  resetTrig %resetTrig.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  register     %global-atts;  class CDATA "- topic/topic reference/reference sidsc-register/register ">
<!ATTLIST  registerName %global-atts;  class CDATA "- topic/title reference/title sidsc-register/registerName ">
<!ATTLIST  registerNameMore %global-atts;  class CDATA "- topic/abstract reference/abstract sidsc-register/registerNameMore ">
<!ATTLIST  registerBody %global-atts;  class CDATA "- topic/body reference/refbody sidsc-register/registerBody ">
<!ATTLIST  registerNameFull %global-atts;  class CDATA "- topic/shortdesc reference/shortdesc sidsc-register/registerNameFull ">
<!ATTLIST  registerBitsInLau %global-atts;  class CDATA "- topic/stentry dataTableDomain/dataEntry sidsc-register/registerBitsInLau ">
<!ATTLIST  registerBriefDescription %global-atts;  class CDATA "- topic/p reference/p sidsc-register/registerBriefDescription ">
<!ATTLIST  registerDescription %global-atts;  class CDATA "- topic/section reference/section sidsc-register/registerDescription ">
<!ATTLIST  registerProperties %global-atts;  class CDATA "- topic/simpletable dataTableDomain/dataTable sidsc-register/registerProperties ">
<!ATTLIST  registerPropset %global-atts;  class CDATA "- topic/strow dataTableDomain/dataRow sidsc-register/registerPropset ">
<!ATTLIST  addressOffset %global-atts;  class CDATA "- topic/stentry dataTableDomain/dataEntry sidsc-register/addressOffset ">
<!ATTLIST  registerSize %global-atts;  class CDATA "- topic/stentry dataTableDomain/dataEntry sidsc-register/registerSize ">
<!ATTLIST  registerAccess %global-atts;  class CDATA "- topic/stentry dataTableDomain/dataEntry sidsc-register/registerAccess ">
<!ATTLIST  registerResetValue %global-atts;  class CDATA "- topic/stentry dataTableDomain/dataEntry sidsc-register/registerResetValue ">
<!ATTLIST  bitOrder     %global-atts;  class CDATA "- topic/stentry dataTableDomain/dataEntry sidsc-register/bitOrder ">
<!ATTLIST  resetTrig    %global-atts;  class CDATA "- topic/stentry dataTableDomain/dataEntry sidsc-register/resetTrig ">

<!-- ================== End of DITA SIDSC Register ==================== -->
 