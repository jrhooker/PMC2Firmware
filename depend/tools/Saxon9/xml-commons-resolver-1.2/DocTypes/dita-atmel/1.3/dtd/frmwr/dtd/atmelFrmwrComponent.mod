<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    Atmel DITA FRMWR Component                        -->
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
<!-- PUBLIC "-//Atmel//ELEMENTS DITA FRMWR Component//EN"          -->
<!--       Delivered as file "atmelFrmwrComponent.mod"                -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % frmwrComponent
                       "frmwrComponent"                              >
<!ENTITY % frmwrName   "frmwrName"                                   >
<!ENTITY % frmwrBody   "frmwrBody"                                   >
<!ENTITY % frmwrDescription
                       "frmwrDescription"                            >
<!ENTITY % frmwrEnumvalue
                       "frmwrEnumvalue"                              >
<!ENTITY % frmwrIncludelist
                       "frmwrIncludelist"                            >
<!ENTITY % frmwrInclude
                       "frmwrInclude"                                >
<!ENTITY % frmwrIncludeName
                       "frmwrIncludeName"                            >
<!ENTITY % frmwrIncludeDesc
                       "frmwrIncludeDesc"                            >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % frmwrComponent-info-types
              "no-topic-nesting"
>
<!--                    LONG NAME: Structure Dword                 -->
<!ENTITY % frmwrComponent.content
                       "((%frmwrName;),
                         (%frmwrBody;))"
>
<!ENTITY % frmwrComponent.attributes
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
<!ELEMENT  frmwrComponent %frmwrComponent.content;>
<!ATTLIST  frmwrComponent %frmwrComponent.attributes;
                 %arch-atts;
                 domains 
                        CDATA
                                  "&included-domains;"
>


<!--                    LONG NAME: Firmware Name                   -->
<!ENTITY % frmwrName.content
                       "(%title.cnt;)*"
>
<!ENTITY % frmwrName.attributes
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
<!ELEMENT  frmwrName %frmwrName.content;>
<!ATTLIST  frmwrName %frmwrName.attributes;>


<!--                    LONG NAME: Firmware Body                   -->
<!ENTITY % frmwrBody.content
                       "((%frmwrDescription;)?,
                         (%frmwrEnumvalue;),
                         (%frmwrIncludelist;)?)"
>
<!ENTITY % frmwrBody.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  frmwrBody %frmwrBody.content;>
<!ATTLIST  frmwrBody %frmwrBody.attributes;>


<!--                    LONG NAME: Firmware Description            -->
<!ENTITY % frmwrDescription.content
                       "(%section.cnt;)*"
>
<!ENTITY % frmwrDescription.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  frmwrDescription %frmwrDescription.content;>
<!ATTLIST  frmwrDescription %frmwrDescription.attributes;>


<!--                    LONG NAME: Firmware Enumaration value      -->
<!ENTITY % frmwrEnumvalue.content
                       "(%para.cnt;)*"
>
<!ENTITY % frmwrEnumvalue.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  frmwrEnumvalue %frmwrEnumvalue.content;>
<!ATTLIST  frmwrEnumvalue %frmwrEnumvalue.attributes;>


<!--                    LONG NAME: Firmware Include List           -->
<!ENTITY % frmwrIncludelist.content
                       "(%frmwrInclude;)+"
>
<!ENTITY % frmwrIncludelist.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  frmwrIncludelist %frmwrIncludelist.content;>
<!ATTLIST  frmwrIncludelist %frmwrIncludelist.attributes;>


<!--                    LONG NAME: Firmware Include List Entry     -->
<!ENTITY % frmwrInclude.content
                       "((%frmwrIncludeName;),
                         (%frmwrIncludeDesc;))"
>
<!ENTITY % frmwrInclude.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  frmwrInclude %frmwrInclude.content;>
<!ATTLIST  frmwrInclude %frmwrInclude.attributes;>


<!--                    LONG NAME: Firmware Include Name           -->
<!ENTITY % frmwrIncludeName.content
                       "(%term.cnt;)*"
>
<!ENTITY % frmwrIncludeName.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  frmwrIncludeName %frmwrIncludeName.content;>
<!ATTLIST  frmwrIncludeName %frmwrIncludeName.attributes;>


<!--                    LONG NAME: Firmware Include Description    -->
<!ENTITY % frmwrIncludeDesc.content
                       "(%defn.cnt;)*"
>
<!ENTITY % frmwrIncludeDesc.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  frmwrIncludeDesc %frmwrIncludeDesc.content;>
<!ATTLIST  frmwrIncludeDesc %frmwrIncludeDesc.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  frmwrComponent %global-atts;  class CDATA "- topic/topic reference/reference frmwrComponent/frmwrComponent ">
<!ATTLIST  frmwrName    %global-atts;  class CDATA "- topic/title reference/title frmwrComponent/frmwrName ">
<!ATTLIST  frmwrBody    %global-atts;  class CDATA "- topic/body reference/refbody frmwrComponent/frmwrBody ">
<!ATTLIST  frmwrDescription %global-atts;  class CDATA "- topic/section reference/section frmwrComponent/frmwrDescription ">
<!ATTLIST  frmwrEnumvalue %global-atts;  class CDATA "- topic/p reference/p frmwrComponent/frmwrEnumvalue ">
<!ATTLIST  frmwrIncludelist %global-atts;  class CDATA "- topic/dl reference/dl frmwrComponent/frmwrIncludelist ">
<!ATTLIST  frmwrInclude %global-atts;  class CDATA "- topic/dlentry reference/dlentry frmwrComponent/frmwrInclude ">
<!ATTLIST  frmwrIncludeName %global-atts;  class CDATA "- topic/dt reference/dt frmwrComponent/frmwrIncludeName ">
<!ATTLIST  frmwrIncludeDesc %global-atts;  class CDATA "- topic/dd reference/dd frmwrComponent/frmwrIncludeDesc ">

<!-- ================== End of Atmel DITA FRMWR Component ==================== -->
 