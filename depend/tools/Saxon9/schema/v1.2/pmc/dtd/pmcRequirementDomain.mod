<!--====================== 

PMC Revhistory construct domain

Provides block and phrase level elements for creating the Revision History content for a PMC Document.

Author: Jeff Hooker

Copyright (c) 2015 PMC Sierra

========================-->

<!ENTITY % pmc-requirement "pmc-requirement" >
<!ENTITY % pmc-indexterm "pmc-indexterm" >

<!-- LONG NAME: Basic revision history element  -->

<!ELEMENT pmc-requirement ( #PCDATA | pmc-indexterm )* >
<!ATTLIST pmc-requirement %univ-atts; outputclass CDATA #IMPLIED 
author CDATA #IMPLIED
time CDATA #IMPLIED
>

<!ELEMENT pmc-indexterm ( #PCDATA | indexterm )* >
<!ATTLIST pmc-indexterm %univ-atts; outputclass CDATA #IMPLIED >

<!--=========================================================
                  SPECIALIZATION ATTRIBUTE DECLARATIONS
 ==========================================================-->

<!ATTLIST pmc-requirement  %global-atts; class CDATA "- topic/draft-comment pmcrequirements-d/pmc-requirement " >
<!ATTLIST pmc-indexterm  %global-atts; class CDATA "- topic/indexterm pmcrequirements-d/pmc-indexterm " >



