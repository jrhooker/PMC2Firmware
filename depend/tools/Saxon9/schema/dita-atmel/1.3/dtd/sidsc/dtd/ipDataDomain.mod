<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA SIDSC IP Data Domain                         -->
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
<!-- PUBLIC "-//Atmel//ELEMENTS DITA SIDSC IP Data Domain//EN"     -->
<!--       Delivered as file "ipDataDomain.mod"                    -->
<!-- ============================================================= -->
<!-- Copyright OASIS 2009                                          -->
<!-- Author: Seth Park                                             -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % ip-data     "ip-data"                                     >
<!ENTITY % ip-name     "ip-name"                                     >
<!ENTITY % ip-system-name
                       "ip-system-name"                              >
<!ENTITY % ip-system-uid
                       "ip-system-uid"                               >
<!ENTITY % technology  "technology"                                  >
<!ENTITY % ip-version  "ip-version"                                  >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % sidsc.plain.text.cnt
              "#PCDATA |
               %text; |
               ph"
>
<!--                    LONG NAME: IP Data                         -->
<!ENTITY % ip-data.content
                       "(%sidsc.plain.text.cnt;)*"
>
<!ENTITY % ip-data.attributes
              "%univ-atts;"
>
<!ELEMENT  ip-data %ip-data.content;>
<!ATTLIST  ip-data %ip-data.attributes;>


<!--                    LONG NAME: IP Name                         -->
<!ENTITY % ip-name.content
                       "(%sidsc.plain.text.cnt;)*"
>
<!ENTITY % ip-name.attributes
              "%univ-atts;"
>
<!ELEMENT  ip-name %ip-name.content;>
<!ATTLIST  ip-name %ip-name.attributes;>


<!--                    LONG NAME: IP System Name                  -->
<!ENTITY % ip-system-name.content
                       "(%sidsc.plain.text.cnt;)*"
>
<!ENTITY % ip-system-name.attributes
              "%univ-atts;"
>
<!ELEMENT  ip-system-name %ip-system-name.content;>
<!ATTLIST  ip-system-name %ip-system-name.attributes;>


<!--                    LONG NAME: IP System UID                   -->
<!ENTITY % ip-system-uid.content
                       "(%sidsc.plain.text.cnt;)*"
>
<!ENTITY % ip-system-uid.attributes
              "%univ-atts;"
>
<!ELEMENT  ip-system-uid %ip-system-uid.content;>
<!ATTLIST  ip-system-uid %ip-system-uid.attributes;>


<!--                    LONG NAME: Technology                      -->
<!ENTITY % technology.content
                       "(%sidsc.plain.text.cnt;)*"
>
<!ENTITY % technology.attributes
              "%univ-atts;"
>
<!ELEMENT  technology %technology.content;>
<!ATTLIST  technology %technology.attributes;>


<!--                    LONG NAME: IP Version                      -->
<!ENTITY % ip-version.content
                       "(%sidsc.plain.text.cnt;)*"
>
<!ENTITY % ip-version.attributes
              "%univ-atts;"
>
<!ELEMENT  ip-version %ip-version.content;>
<!ATTLIST  ip-version %ip-version.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  ip-data      %global-atts;  class CDATA "- topic/data  ipDataDomain/ip-data ">
<!ATTLIST  ip-name      %global-atts;  class CDATA "- topic/data  ipDataDomain/ip-name ">
<!ATTLIST  ip-system-name %global-atts;  class CDATA "- topic/data ipDataDomain/ip-system-name ">
<!ATTLIST  ip-system-uid %global-atts;  class CDATA "- topic/data ipDataDomain/ip-system-name ">
<!ATTLIST  technology   %global-atts;  class CDATA "- topic/data ipDataDomain/technology ">
<!ATTLIST  ip-version   %global-atts;  class CDATA "- topic/data ipDataDomain/ip-version ">

<!-- ================== End of DITA SIDSC IP Data Domain ==================== -->
 