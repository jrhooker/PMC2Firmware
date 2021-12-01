<!--====================== 

Software registers construct domain

Provides software register structure.

Author: Jeff Hooker

Copyright (c) 2016 Microsemi

========================-->

<!ENTITY % address-map "address-map" >

<!ENTITY % register-reference "register-reference" >
<!ENTITY % address "address" >
<!ENTITY % addr-element "addr-element" >
<!ENTITY % addr-mnemonic "addr-mnemonic" >
<!ENTITY % address-prefix "address-prefix" >
<!ENTITY % instances "instances" >
<!ENTITY % instance "instance" >
<!ENTITY % instance-title "instance-title" >
<!ENTITY % address-details "address-details" >

<!-- Now define the individual registers -->

<!ENTITY % reg-name-main "reg-name-main" > <!-- These two elements are just specialized phrases for the title element of tables containing register data -->
<!ENTITY % reg-desc "reg-desc" >

<!ENTITY % reg-def "reg-def" > <!-- reg-def replaces the tbody element -->
<!ENTITY % field "field" >
<!ENTITY % field-name "field-name" >
<!ENTITY % field-bits "field-bits" >
<!ENTITY % field-type "field-type" >
<!ENTITY % field-default "field-default" >
<!ENTITY % field-desc "field-desc" >

<!ENTITY % field-enum-list "field-enum-list" >
<!ENTITY % field-enum "field-enum" >
<!ENTITY % field-enum-value "field-enum-value" >
<!ENTITY % field-enum-def "field-enum-def" >
<!ENTITY % field-enum-name "field-enum-name" >
<!ENTITY % field-enum-desc "field-enum-desc" >

<!-- Address map members -->

<!ELEMENT address-map (register-reference+) >
<!ATTLIST address-map %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1">

<!ELEMENT register-reference (address,addr-element,address-details)  >
<!ATTLIST register-reference %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT address (#PCDATA|ph)*  >
<!ATTLIST address %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT  addr-element ((addr-mnemonic+,instances?)|address-prefix)  >
<!ATTLIST addr-element %univ-atts; outputclass CDATA #IMPLIED 
 >

<!ELEMENT  address-prefix (#PCDATA|xref)*  >
<!ATTLIST address-prefix %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT  addr-mnemonic (#PCDATA|xref)*  >
<!ATTLIST addr-mnemonic %univ-atts; outputclass CDATA #IMPLIED 
verilog CDATA #IMPLIED >

<!ELEMENT  instances (instance)+  >
<!ATTLIST instances %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT  instance (instance-title*, instance-start, instance-stop)  >
<!ATTLIST instance %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT address-details ( p | ul | ol )+  >
<!ATTLIST address-details %univ-atts; outputclass CDATA #IMPLIED >




<!-- start of register table definition -->

<!ELEMENT  reg-name-main (#PCDATA | ph)*  >
<!ATTLIST reg-name-main %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true"
verilog CDATA #IMPLIED >

<!ELEMENT  reg-desc (#PCDATA | ph)*  >
<!ATTLIST reg-desc %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true">

<!ELEMENT  field-default (#PCDATA | ph)*  >
<!ATTLIST field-default %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true">

<!ELEMENT  field-type (#PCDATA | ph)*  >
<!ATTLIST field-type %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true">
<!ATTLIST field-type sticky (yes | no) "no">

<!ELEMENT  field-name (#PCDATA | ph)*  >
<!ATTLIST field-name %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true"
verilog CDATA #IMPLIED >

<!ELEMENT reg-def (field)+  >
<!ATTLIST reg-def %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT field (field-bits,field-name,field-type,field-default,field-desc)  >
<!ATTLIST field %univ-atts; outputclass CDATA #IMPLIED>

<!ELEMENT field-bits (single | double)  >
<!ATTLIST field-bits %univ-atts; outputclass CDATA #IMPLIED>

<!ELEMENT field-desc ( desc-title | p | ul | ol | note | field-enum-list)*    >
<!ATTLIST field-desc %univ-atts; outputclass CDATA #IMPLIED  >

<!ELEMENT  desc-title (#PCDATA | ph)*  >
<!ATTLIST desc-title %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true">

<!ELEMENT field-enum-list (field-enum)+  >
<!ATTLIST field-enum-list %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT field-enum (field-enum-value, field-enum-def)+  >
<!ATTLIST field-enum %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT  field-enum-value (#PCDATA | ph)*  >
<!ATTLIST field-enum-value %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true">

<!ELEMENT field-enum-def (field-enum-name, field-enum-desc)  >
<!ATTLIST field-enum %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT  field-enum-name (#PCDATA | ph)*  >
<!ATTLIST field-enum-name %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true">

<!ELEMENT  field-enum-desc (#PCDATA | ph)*  >
<!ATTLIST field-enum-desc %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true">


<!--=========================================================
                  SPECIALIZATION ATTRIBUTE DECLARATIONS
 ==========================================================-->

<!ATTLIST reg-name-main %global-atts; class CDATA "- topic/ph m-software-d/reg-name-main " >
<!ATTLIST reg-desc %global-atts; class CDATA "- topic/ph m-software-d/reg-desc " >
<!ATTLIST field-name %global-atts; class CDATA "- topic/entry m-software-d/field-name " >

<!ATTLIST reg-def  %global-atts; class CDATA "- topic/tbody m-software-d/reg-def " >
<!ATTLIST field  %global-atts; class CDATA "- topic/row m-software-d/field " >
<!ATTLIST field-type %global-atts; class CDATA "- topic/entry m-software-d/field-type " >
<!ATTLIST field-bits %global-atts; class CDATA "- topic/entry m-software-d/field-bits " >
<!ATTLIST field-default %global-atts; class CDATA "- topic/entry m-software-d/field-default " >
<!ATTLIST field-desc  %global-atts; class CDATA "- topic/entry m-software-d/field-desc " >

<!ATTLIST address-map  %global-atts; class CDATA "- topic/tbody m-software-d/address-map " >
<!ATTLIST register-reference  %global-atts; class CDATA "- topic/row m-software-d/register-reference " >
<!ATTLIST address  %global-atts; class CDATA "- topic/entry m-software-d/address " >
<!ATTLIST addr-element %global-atts; class CDATA "- topic/entry m-software-d/addr-element " >
<!ATTLIST address-prefix  %global-atts; class CDATA "- topic/p m-software-d/address-prefix " >
<!ATTLIST addr-mnemonic  %global-atts; class CDATA "- topic/p m-software-d/addr-mnemonic " >
<!ATTLIST instances  %global-atts; class CDATA "- topic/dl m-software-d/instances " >
<!ATTLIST instance  %global-atts; class CDATA "- topic/dlentry m-software-d/instance " >
<!ATTLIST address-details  %global-atts; class CDATA "- topic/entry m-software-d/address-details " >

<!ATTLIST desc-title %global-atts; class CDATA "- topic/ph m-software-d/desc-title " >
<!ATTLIST field-enum-list %global-atts; class CDATA "- topic/dl m-software-d/field-enum-list " >
<!ATTLIST field-enum %global-atts; class CDATA "-  topic/dlentry m-software-d/field-enum " >
<!ATTLIST field-enum-value %global-atts; class CDATA "- topic/dt m-software-d/field-enum-value " >
<!ATTLIST field-enum-def %global-atts; class CDATA "- topic/dd m-software-d/field-enum-def " >
<!ATTLIST field-enum-name %global-atts; class CDATA "- topic/ph m-software-d/field-enum-name " >
<!ATTLIST field-enum-desc %global-atts; class CDATA "- topic/ph m-software-d/field-enum-desc " >



