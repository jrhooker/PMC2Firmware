<!--====================== 

CSR registers construct domain

Provides csr register structure.

Author: Jeff Hooker

Copyright (c) 2015 PMC Sierra

========================-->

<!ENTITY % csr-reg "csr-reg" >

<!ENTITY % csrreg-reference "csrreg-reference" >
<!ENTITY % csrreg-address "csrreg-address" >
<!ENTITY % csrreg-location "csrreg-location" > 
<!ENTITY % csrreg-offset "csrreg-offset" > 
<!ENTITY % csrreg-name "csrreg-name" >
<!ENTITY % csrreg-mnemonic "csrreg-mnemonic" >
<!ENTITY % csrreg-prefix "csrreg-prefix" >
<!ENTITY % csrreg-instances "csrreg-instances" >
<!ENTITY % csrreg-instance "csrreg-instance" >
<!ENTITY % instance-title "instance-title" >
<!ENTITY % instance-start "instance-start" >
<!ENTITY % instance-stop "instance-stop" >
<!ENTITY % csrreg-details "csrreg-details" >

<!-- LONG csr-reg element -->

<!ELEMENT csr-reg (csrreg-reference+)  >
<!ATTLIST csr-reg %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1">

<!-- LONG csrreg-reference element -->

<!ELEMENT csrreg-reference (csrreg-address,csrreg-name,csrreg-details)  >
<!ATTLIST csrreg-reference %univ-atts; outputclass CDATA #IMPLIED >

<!-- LONG csrreg-address element -->

<!ELEMENT csrreg-address (csrreg-location,csrreg-offset)  >
<!ATTLIST csrreg-address %univ-atts; outputclass CDATA #IMPLIED >

<!-- LONG csrreg-location element -->

<!ELEMENT  csrreg-location (#PCDATA)  >
<!ATTLIST csrreg-location %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true">



<!ELEMENT  csrreg-offset (#PCDATA)  >
<!ATTLIST csrreg-offset %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true"> 

<!-- LONG csrreg-name element -->

<!ELEMENT  csrreg-name ((csrreg-mnemonic+,csrreg-instances?)|csrreg-prefix)  >
<!ATTLIST csrreg-name %univ-atts; outputclass CDATA #IMPLIED >

<!-- LONG csrreg-name element -->

<!ELEMENT  csrreg-prefix (#PCDATA|xref)*  >
<!ATTLIST csrreg-prefix %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true">

<!-- LONG csrreg-name element -->

<!ELEMENT  csrreg-mnemonic (#PCDATA|xref)*  >
<!ATTLIST csrreg-mnemonic %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true">

<!-- LONG csrreg-name element -->

<!ELEMENT  csrreg-instances (csrreg-instance+)  >
<!ATTLIST csrreg-instances %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true">

<!ELEMENT  csrreg-instance (instance-title*, instance-start, instance-stop)  >
<!ATTLIST csrreg-instances %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true">

<!ELEMENT instance-title (#PCDATA)  >
<!ATTLIST instance-title %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true">

<!ELEMENT instance-start (#PCDATA)  >
<!ATTLIST instance-start %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true">

<!ELEMENT  instance-stop (#PCDATA)  >
<!ATTLIST instance-stop %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true">

<!-- LONG csrreg-details element -->

<!ELEMENT csrreg-details ( p | ul | ol )+  >
<!ATTLIST csrreg-details %univ-atts; outputclass CDATA #IMPLIED >

<!-- LONG registers element -->



<!--=========================================================
                  SPECIALIZATION ATTRIBUTE DECLARATIONS
 ==========================================================-->

<!ATTLIST csr-reg  %global-atts; class CDATA "- topic/tbody csrreg-d/csr-reg " >
<!ATTLIST csrreg-reference  %global-atts; class CDATA "- topic/row csrreg-d/csrreg-reference " >
<!ATTLIST csrreg-address  %global-atts; class CDATA "- topic/entry csrreg-d/csrreg-address " >
<!ATTLIST csrreg-location  %global-atts; class CDATA "- topic/ph csrreg-d/csrreg-location " >
<!ATTLIST csrreg-offset  %global-atts; class CDATA "- topic/ph csrreg-d/csrreg-offset " >
<!ATTLIST csrreg-name %global-atts; class CDATA "- topic/entry csrreg-d/csrreg-name " >
<!ATTLIST csrreg-prefix  %global-atts; class CDATA "- topic/p csrreg-d/csrreg-prefix " >
<!ATTLIST csrreg-mnemonic  %global-atts; class CDATA "- topic/p csrreg-d/csrreg-mnemonic " >
<!ATTLIST csrreg-instances  %global-atts; class CDATA "- topic/dl csrreg-d/csrreg-instances " >
<!ATTLIST csrreg-instance  %global-atts; class CDATA "- topic/dlentry csrreg-d/csrreg-instance " >
<!ATTLIST instance-title  %global-atts; class CDATA "- topic/dt csrreg-d/instance-title " >
<!ATTLIST instance-start  %global-atts; class CDATA "- topic/dd csrreg-d/instance-start " >
<!ATTLIST instance-stop  %global-atts; class CDATA "- topic/dd csrreg-d/instance-stop " >
<!ATTLIST csrreg-details  %global-atts; class CDATA "- topic/entry csrreg-d/csrreg-details " >

