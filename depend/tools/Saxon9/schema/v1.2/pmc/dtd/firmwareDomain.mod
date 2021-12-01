<!--====================== 

firmware registers construct domain

Provides firmware register structure.

Author: Jeff Hooker

Copyright (c) 2014 PMC Sierra

========================-->



<!ENTITY % reg-references "reg-references" >
<!ENTITY % reg-references.attributes
             "%univ-atts;              
              opcode  CDATA     #IMPLIED"
>
<!ENTITY % reg-reference "reg-reference" >
<!ENTITY % reg-address "reg-address" >
<!ENTITY % reg-size "reg-size" >
<!ENTITY % reg-name "reg-name" >
<!ENTITY % reg-details "reg-details" >

<!ENTITY % registers "registers" >
<!ENTITY % register "register" >


<!ENTITY % reg-position "reg-position" >
<!ENTITY % reg-type "reg-type" >
<!ENTITY % reg-default "reg-default" >
<!ENTITY % reg-title "reg-title" >
<!ENTITY % reg-description "reg-description" >
<!ENTITY % reg-action "reg-action" >

<!-- LONG reg-references element -->

<!ELEMENT reg-references (reg-reference+)  >
<!ATTLIST reg-references %reg-references.attributes; outputclass CDATA #IMPLIED 
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1">

<!-- LONG reg-reference element -->

<!ELEMENT reg-reference (reg-address,reg-size,reg-name,reg-details)  >
<!ATTLIST reg-reference %univ-atts; outputclass CDATA #IMPLIED>

<!-- LONG reg-address element -->

<!ELEMENT  reg-address (#PCDATA | ph)*  >
<!ATTLIST reg-address %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true">

<!-- LONG reg-size element -->

<!ELEMENT  reg-size (#PCDATA | ph)*  >
<!ATTLIST reg-size %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true">

<!-- LONG reg-default element -->

<!ELEMENT  reg-default (#PCDATA | ph)*  >
<!ATTLIST reg-default %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true">

<!-- LONG reg-type element -->

<!ELEMENT  reg-type (#PCDATA | ph)*  >
<!ATTLIST reg-type %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true">

<!-- LONG reg-name element -->

<!ELEMENT  reg-name (#PCDATA | ph)*  >
<!ATTLIST reg-name %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true">

<!-- LONG reg-details element -->

<!ELEMENT reg-details ( p | ul | ol )+  >
<!ATTLIST reg-details %univ-atts; outputclass CDATA #IMPLIED >

<!-- LONG registers element -->

<!ELEMENT registers (register)+  >
<!ATTLIST registers %univ-atts; outputclass CDATA #IMPLIED >

<!-- LONG register element -->

<!ELEMENT register (reg-position,reg-name,reg-type,reg-default,reg-description,reg-action*)  >
<!ATTLIST register %univ-atts; outputclass CDATA #IMPLIED>

<!-- LONG reg-position element -->

<!ELEMENT reg-position (single | double)  >
<!ATTLIST reg-position %univ-atts; outputclass CDATA #IMPLIED>

<!-- LONG reg-title element -->

<!ELEMENT reg-title ( p )+  >
<!ATTLIST reg-title %univ-atts; outputclass CDATA #IMPLIED >

<!-- LONG reg-description element -->

<!ELEMENT reg-description ( p | ul | ol | note )*  >
<!ATTLIST reg-description %univ-atts; outputclass CDATA #IMPLIED  >

<!-- LONG reg-action element -->

<!ELEMENT reg-action ( p | ul | ol | note )*  >
<!ATTLIST reg-action %univ-atts; outputclass CDATA #IMPLIED>

<!--=========================================================
                  SPECIALIZATION ATTRIBUTE DECLARATIONS
 ==========================================================-->

<!ATTLIST reg-references  %global-atts; class CDATA "- topic/tbody firmware-d/reg-references " >
<!ATTLIST reg-reference  %global-atts; class CDATA "- topic/row firmware-d/reg-reference " >
<!ATTLIST reg-address  %global-atts; class CDATA "- topic/entry firmware-d/reg-address " >
<!ATTLIST reg-size  %global-atts; class CDATA "- topic/entry firmware-d/reg-size " >
<!ATTLIST reg-name %global-atts; class CDATA "- topic/entry firmware-d/reg-name " >
<!ATTLIST reg-details  %global-atts; class CDATA "- topic/entry firmware-d/reg-details " >

<!ATTLIST registers  %global-atts; class CDATA "- topic/tbody firmware-d/registers " >
<!ATTLIST register  %global-atts; class CDATA "- topic/row firmware-d/register " >
<!ATTLIST reg-type %global-atts; class CDATA "- topic/entry firmware-d/reg-type " >
<!ATTLIST reg-position %global-atts; class CDATA "- topic/entry firmware-d/reg-position " >
<!ATTLIST reg-default %global-atts; class CDATA "- topic/entry firmware-d/reg-default " >
<!ATTLIST reg-title %global-atts; class CDATA "- topic/entry firmware-d/reg-title " >
<!ATTLIST reg-description  %global-atts; class CDATA "- topic/entry firmware-d/reg-description " >
<!ATTLIST reg-action  %global-atts; class CDATA "- topic/entry firmware-d/reg-action " >






