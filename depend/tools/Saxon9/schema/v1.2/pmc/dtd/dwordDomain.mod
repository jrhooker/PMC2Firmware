<!--====================== 

dword construct domain

Provides dword structure.

Author: Jeff Hooker

Copyright (c) 2014 PMC Sierra

========================-->



<!ENTITY % struct "struct" >
<!ENTITY % struct.attributes
             "%univ-atts;              
              opcode  CDATA     #IMPLIED
              structure  (msg | sub) 'msg'"              
>
<!ENTITY % dword "dword" >
<!ENTITY % value "value" >
<!ENTITY % position "position" >
<!ENTITY % name "name" >
<!ENTITY % description "description" >
<!ENTITY % single "single" >
<!ENTITY % double "double" >
<!ENTITY % msb "msb"  >
<!ENTITY % lsb "lsb"  >

<!ENTITY % includeslist "includeslist" >
<!ENTITY % include "include" >

<!ENTITY % enumvalue "enumvalue" >
<!ENTITY % headerfile-name "headerfile-name" >

<!ENTITY % msg-name-main "reg-name-main" > <!-- These two elements are just specialized phrases for the title element of tables containing register data -->
<!ENTITY % msg-desc "reg-desc" >

<!ELEMENT  enumvalue (#PCDATA | ph)*  >
<!ATTLIST enumvalue %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT  headerfile-name (#PCDATA | ph)*  >
<!ATTLIST headerfile-name %univ-atts; outputclass CDATA #IMPLIED >

<!-- LONG NAME:struct element -->

<!ELEMENT struct (dword+)  >
<!ATTLIST struct %struct.attributes; outputclass CDATA #IMPLIED >

<!-- LONG NAME:includeslist element -->

<!ELEMENT includeslist (include+)  >
<!ATTLIST includeslist %univ-atts; outputclass CDATA #IMPLIED >

<!-- LONG NAME:include element -->

<!ELEMENT include (name, description)  >
<!ATTLIST include %univ-atts; outputclass CDATA #IMPLIED >

<!-- LONG NAME:dword element -->

<!ELEMENT dword (value,position,name,description)  >
<!ATTLIST dword %univ-atts; outputclass CDATA #IMPLIED >

<!-- LONG NAME:position element -->

<!ELEMENT position (single | double)  >
<!ATTLIST position %univ-atts; outputclass CDATA #IMPLIED >

<!-- LONG NAME:description element -->

<!ELEMENT description (desc-title | p | ul | ol | note | field-enum-list)*  >
<!ATTLIST description %univ-atts; outputclass CDATA #IMPLIED >

<!-- LONG NAME:name element -->

<!ELEMENT  name (#PCDATA | ph)*  >
<!ATTLIST name %univ-atts; outputclass CDATA #IMPLIED >

<!-- LONG NAME:value element -->

<!ELEMENT  value (#PCDATA | ph)*  >
<!ATTLIST value %univ-atts; outputclass CDATA #IMPLIED >

<!-- LONG NAME:single element -->

<!ELEMENT  single (#PCDATA | ph)*  >
<!ATTLIST single %univ-atts; outputclass CDATA #IMPLIED >

<!-- LONG NAME:single element -->

<!ELEMENT  double (msb,lsb)  >
<!ATTLIST double %univ-atts; outputclass CDATA #IMPLIED >

<!-- LONG NAME:lsb element -->

<!ELEMENT  lsb (#PCDATA | ph)*  >
<!ATTLIST lsb %univ-atts; outputclass CDATA #IMPLIED >

<!-- LONG NAME:msb element -->

<!ELEMENT  msb (#PCDATA | ph)*  >
<!ATTLIST msb %univ-atts; outputclass CDATA #IMPLIED >


<!ELEMENT  msg-name-main (#PCDATA | ph)*  >
<!ATTLIST msg-name-main %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true"
verilog CDATA #IMPLIED >

<!ELEMENT  msg-desc (#PCDATA | ph)*  >
<!ATTLIST msg-desc %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true">

<!--=========================================================
                  SPECIALIZATION ATTRIBUTE DECLARATIONS
 ==========================================================-->

<!ATTLIST msg-name-main %global-atts; class CDATA "- topic/ph struct-d/msg-name-main " >
<!ATTLIST msg-desc %global-atts; class CDATA "- topic/ph struct-d/msg-desc " >

<!ATTLIST struct  %global-atts; class CDATA "- topic/tbody struct-d/struct " >
<!ATTLIST dword  %global-atts; class CDATA "- topic/row struct-d/dword " >
<!ATTLIST value  %global-atts; class CDATA "- topic/entry struct-d/value " >
<!ATTLIST position  %global-atts; class CDATA "- topic/entry struct-d/position " >
<!ATTLIST name %global-atts; class CDATA "- topic/entry struct-d/name " >
<!ATTLIST description  %global-atts; class CDATA "- topic/entry struct-d/description " >

<!ATTLIST includeslist  %global-atts; class CDATA "- topic/tbody struct-d/includeslist " >
<!ATTLIST include  %global-atts; class CDATA "- topic/row struct-d/include " >

<!ATTLIST single  %global-atts; class CDATA "- topic/p struct-d/single " >
<!ATTLIST double  %global-atts; class CDATA "- topic/p struct-d/double " >
<!ATTLIST lsb  %global-atts; class CDATA "- topic/ph struct-d/lsb " >
<!ATTLIST msb  %global-atts; class CDATA "- topic/ph struct-d/msb " >

<!ATTLIST enumvalue  %global-atts; class CDATA "- topic/ph struct-d/enumvalue " >
<!ATTLIST headerfile-name  %global-atts; class CDATA "- topic/ph struct-d/headerfile-name " >



