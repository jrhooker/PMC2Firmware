<!--====================== 

firmware test construct domain

Provides firmware test structure.

Author: Jeff Hooker

Copyright (c) 2016 Microsemi

========================-->

<!ENTITY % test "test" >
<!ENTITY % test.attributes
             "%univ-atts;"               
>

<!ENTITY % test-row "test-row"  >
<!ENTITY % test-row-type "test-row-type" >
<!ENTITY % test-owner "test-owner" >
<!ENTITY % test-pri "test-pri" >
<!ENTITY % test-desc "test-desc" >
<!ENTITY % test-proc "test-proc" >
<!ENTITY % test-exp-rslt "test-exp-rslt" >
<!ENTITY % test-sched-est "test-sched-est" >
<!ENTITY % test-sched-act "test-sched-act" >
<!ENTITY % test-result "test-result"  >
<!ENTITY % test-fw "test-fw"  >
<!ENTITY % test-hw "test-hw"  >
<!ENTITY % test-notes "test-notes"  >
<!ENTITY % test-req "test-req"  >
<!ENTITY % test-misc "test-misc"  >

<!ENTITY % test-name-short "test-name-short" > 
<!ENTITY % test-name-long "test-name-long" >

<!ENTITY % test-matrix-nm-short "test-matrix-nm-short" > 
<!ENTITY % test-matrix-nm-long "test-matrix-nm-long" >




<!ELEMENT test-row-type ( p | ul | ol | note | fig | table | codeblock )*  >
<!ATTLIST test-row-type %univ-atts; 
outputclass CDATA #IMPLIED 
bg_color CDATA #IMPLIED>

<!ELEMENT test-owner ( p | ul | ol | note | fig | table | codeblock )*  >
<!ATTLIST test-owner %univ-atts; outputclass CDATA #IMPLIED>

<!ELEMENT test-pri ( p | ul | ol | note | fig | table | codeblock )*  >
<!ATTLIST test-pri %univ-atts; outputclass CDATA #IMPLIED>

<!ELEMENT test-desc ( p | ul | ol | note | fig | table | codeblock )*  >
<!ATTLIST test-desc %univ-atts; outputclass CDATA #IMPLIED>

<!ELEMENT test-proc ( p | ul | ol | note | fig | table | codeblock )*  >
<!ATTLIST test-proc %univ-atts; outputclass CDATA #IMPLIED>

<!ELEMENT test-exp-rslt  ( p | ul | ol | note | fig | table | codeblock )*  >
<!ATTLIST test-exp-rslt  %univ-atts; outputclass CDATA #IMPLIED>

<!ELEMENT test-sched-est ( p | ul | ol | note | fig | table | codeblock )*  >
<!ATTLIST test-sched-est %univ-atts; outputclass CDATA #IMPLIED>

<!ELEMENT test-sched-act ( p | ul | ol | note | fig | table | codeblock )*  >
<!ATTLIST test-sched-act %univ-atts; outputclass CDATA #IMPLIED>

<!ELEMENT test-result ( p | ul | ol | note | fig | table | codeblock )*  >
<!ATTLIST test-result %univ-atts; outputclass CDATA #IMPLIED>

<!ELEMENT test-fw ( p | ul | ol | note | fig | table | codeblock )*  >
<!ATTLIST test-fw %univ-atts; outputclass CDATA #IMPLIED>

<!ELEMENT test-hw ( p | ul | ol | note | fig | table | codeblock )*  >
<!ATTLIST test-hw %univ-atts; outputclass CDATA #IMPLIED>

<!ELEMENT test-notes ( p | ul | ol | note | fig | table | codeblock )*  >
<!ATTLIST test-notes %univ-atts; outputclass CDATA #IMPLIED>

<!ELEMENT test-req ( p | ul | ol | note | fig | table | codeblock )*  >
<!ATTLIST test-req %univ-atts; outputclass CDATA #IMPLIED>

<!ELEMENT test-misc ( p | ul | ol | note | fig | table | codeblock )*  >
<!ATTLIST test-misc %univ-atts; outputclass CDATA #IMPLIED>

<!ELEMENT test (test-row+)  >
<!ATTLIST test %test.attributes; outputclass CDATA #IMPLIED >

<!ELEMENT test-row (test-row-type,(test-owner|test-pri|test-desc|test-proc|test-exp-rslt|test-sched-est|test-sched-act|test-result|test-fw|test-hw|test-notes|test-req|test-misc))  >
<!ATTLIST test-row %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT  test-name-short (#PCDATA | ph)*  >
<!ATTLIST test-name-short %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true"
verilog CDATA #IMPLIED >

<!ELEMENT  test-name-long (#PCDATA | ph)*  >
<!ATTLIST test-name-long %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true">

<!ELEMENT  test-matrix-nm-short (#PCDATA | ph)*  >
<!ATTLIST test-matrix-nm-short %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true"
verilog CDATA #IMPLIED >

<!ELEMENT  test-matrix-nm-long (#PCDATA | ph)*  >
<!ATTLIST test-matrix-nm-long %univ-atts; outputclass CDATA #IMPLIED  
xmlns:deltaxml CDATA #FIXED "http://www.deltaxml.com/ns/well-formed-delta-v1"
deltaxml:phrase-container CDATA #FIXED "true">

<!--=========================================================
                  SPECIALIZATION ATTRIBUTE DECLARATIONS
 ==========================================================-->

<!ATTLIST test  %global-atts; class CDATA "- topic/tbody firmtest-d/test " >

<!ATTLIST test-name-short %global-atts; class CDATA "- topic/ph firmtest-d/test-name-short " >
<!ATTLIST test-name-long %global-atts; class CDATA "- topic/ph firmtest-d/test-name-long " >

<!ATTLIST test-matrix-nm-short %global-atts; class CDATA "- topic/ph firmtest-d/test-matrix-nm-short " >
<!ATTLIST test-matrix-nm-long %global-atts; class CDATA "- topic/ph firmtest-d/test-matrix-nm-long " >

<!ATTLIST test-row  %global-atts; class CDATA "- topic/row firmtest-d/test-row " >

<!ATTLIST test-row-type  %global-atts; class CDATA "- topic/entry firmtest-d/test-row-type " >
<!ATTLIST test-owner  %global-atts; class CDATA "- topic/entry firmtest-d/test-owner " >
<!ATTLIST test-pri  %global-atts; class CDATA "- topic/entry firmtest-d/test-pri " >
<!ATTLIST test-desc  %global-atts; class CDATA "- topic/entry firmtest-d/test-desc " >
<!ATTLIST test-proc  %global-atts; class CDATA "- topic/entry firmtest-d/test-proc " >
<!ATTLIST test-exp-rslt  %global-atts; class CDATA "- topic/entry firmtest-d/test-exp-rslt " >
<!ATTLIST test-sched-est  %global-atts; class CDATA "- topic/entry firmtest-d/test-sched-est " >
<!ATTLIST test-sched-act  %global-atts; class CDATA "- topic/entry firmtest-d/test-sched-act " >
<!ATTLIST test-result  %global-atts; class CDATA "- topic/entry firmtest-d/test-result " >
<!ATTLIST test-fw  %global-atts; class CDATA "- topic/entry firmtest-d/test-fw " >
<!ATTLIST test-hw  %global-atts; class CDATA "- topic/entry firmtest-d/test-hw " >
<!ATTLIST test-notes  %global-atts; class CDATA "- topic/entry firmtest-d/test-notes " >
<!ATTLIST test-req  %global-atts; class CDATA "- topic/entry firmtest-d/test-req " >
<!ATTLIST test-misc  %global-atts; class CDATA "- topic/entry firmtest-d/test-misc " >



