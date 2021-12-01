<!--====================== 

PMC Revhistory construct domain

Provides block and phrase level elements for creating the Revision History content for a PMC Document.

Author: Jeff Hooker

Copyright (c) 2015 PMC Sierra

========================-->

<!ENTITY % pmc-revhistory "pmc-revhistory" >
<!ENTITY % pmc-revision "pmc-revision" >
<!ENTITY % pmc-description "pmc-description" >
<!ENTITY % pmc-rev-number "pmc-rev-number" >
<!ENTITY % pmc-name "pmc-name" >
<!ENTITY % pmc-date "pmc-date" >


<!-- LONG NAME: Basic revision history element  -->

<!ELEMENT pmc-revhistory (pmc-revision+) >
<!ATTLIST pmc-revhistory %univ-atts; outputclass CDATA #IMPLIED >

<!-- LONG NAME: A  single history element  -->

<!ELEMENT pmc-revision (pmc-rev-number, pmc-date, pmc-name, pmc-description) >
<!ATTLIST pmc-revision %univ-atts; outputclass CDATA #IMPLIED >
<!--  -->
<!ELEMENT pmc-description (p | ul | ol)+ >
<!ATTLIST pmc-description %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc-rev-number (#PCDATA) >
<!ATTLIST pmc-rev-number %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc-name (#PCDATA) >
<!ATTLIST pmc-name %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc-date (#PCDATA) >
<!ATTLIST pmc-date %univ-atts; outputclass CDATA #IMPLIED >

<!--=========================================================
                  SPECIALIZATION ATTRIBUTE DECLARATIONS
 ==========================================================-->

<!ATTLIST pmc-revhistory  %global-atts; class CDATA "- topic/tbody pmcrevhis-d/pmc-revhistory " >
<!ATTLIST pmc-revision  %global-atts; class CDATA "- topic/row pmcrevhis-d/pmc-revision " >
<!ATTLIST pmc-name  %global-atts; class CDATA "- topic/entry pmcrevhis-d/pmc-name " >
<!ATTLIST pmc-date  %global-atts; class CDATA "- topic/entry pmcrevhis-d/pmc-date " >
<!ATTLIST pmc-rev-number  %global-atts; class CDATA "- topic/entry pmcrevhis-d/pmc-rev-number " >
<!ATTLIST pmc-description  %global-atts; class CDATA "- topic/entry pmcrevhis-d/pmc-description " >



