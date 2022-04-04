<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA Map                                          -->
<!--  VERSION:   1.O                                               -->
<!--  DATE:      February 2005                                     -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identfier or an 
      appropriate system identifier 
PUBLIC "-//OASIS//Elements DITA Map//EN"
      Delivered as file "map.mod"                                  -->

<!-- ============================================================= -->
<!-- SYSTEM:     Darwin Information Typing Architecture (DITA)     -->
<!--                                                               -->
<!-- PURPOSE:    Declaring the elements and specialization         -->
<!--             attributes for the DITA Maps                      -->
<!--                                                               -->
<!-- ORIGINAL CREATION DATE:                                       -->
<!--             March 2001                                        -->
<!--                                                               -->
<!--             (C) Copyright OASIS Open 2005.                    -->
<!--             (C) Copyright IBM Corporation 2001, 2004.         -->
<!--             All Rights Reserved.                              -->
<!-- ============================================================= -->


<!-- ============================================================= -->
<!--                   ARCHITECTURE ENTITIES                       -->
<!-- ============================================================= -->

<!-- default namespace prefix for DITAArchVersion attribute can be
     overridden through predefinition in the document type shell   -->
<!ENTITY % DITAArchNSPrefix
                       "ditaarch"                                    >

<!-- must be instanced on each topic type                          -->
<!ENTITY % arch-atts "
             xmlns:%DITAArchNSPrefix; 
                        CDATA                              #FIXED
                       'http://dita.oasis-open.org/architecture/2005/'
             %DITAArchNSPrefix;:DITAArchVersion
                        CDATA                              #FIXED
                       '1.0'"                                        >


<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->


<!ENTITY % map         "map"                                         >
<!ENTITY % anchor      "anchor"                                      >
<!ENTITY % keyword     "keyword"                                     >
<!ENTITY % linktext    "linktext"                                    >
<!ENTITY % navref      "navref"                                      >
<!ENTITY % relcell     "relcell"                                     >
<!ENTITY % relcolspec  "relcolspec"                                  >
<!ENTITY % relheader   "relheader"                                   >
<!ENTITY % relrow      "relrow"                                      >
<!ENTITY % reltable    "reltable"                                    >
<!ENTITY % searchtitle "searchtitle"                                 >
<!ENTITY % shortdesc   "shortdesc"                                   >
<!ENTITY % topicmeta   "topicmeta"                                   >
<!ENTITY % topicref    "topicref"                                    >

<!-- ============================================================= -->
<!--                    INFOSHARE ATTRIBUTE                        -->
<!-- ============================================================= -->

<!ENTITY % ish-condition-atts
                         'ishcondition CDATA #IMPLIED
                          ishresult CDATA #IMPLIED'                  >

<!ENTITY % ish-variables-atts
                   'ishvarinusexpath    CDATA #FIXED    "./@varref"
                    ishvarassignedxpath CDATA #FIXED    "./@varid"
                    varref              CDATA #IMPLIED
                    varid               CDATA #IMPLIED'              >

<!-- ============================================================= -->
<!--                    ENTITY DECLARATIONS FOR ATTRIBUTE VALUES   -->
<!-- ============================================================= -->


<!--                    DATE FORMAT                                -->
<!ENTITY % date-format  'CDATA'                                      >


<!--                    TOPIC REFERENCE TYPES                      -->
<!ENTITY % topicreftypes 
                        'topic | concept | task | 
                         reference | external | local'               >


<!-- ============================================================= -->
<!--                    COMMON ATTLIST SETS                        -->
<!-- ============================================================= -->


<!ENTITY % select-atts   
            'platform   CDATA                             #IMPLIED
             product    CDATA                             #IMPLIED
             audience   CDATA                             #IMPLIED
             otherprops CDATA                             #IMPLIED
             importance (obsolete | deprecated | 
                         optional | default | low | 
                         normal | high | recommended | 
                         required | urgent )              #IMPLIED
             rev        CDATA                             #IMPLIED
             status     (new | changed | deleted | 
                         unchanged)                       #IMPLIED
             %ish-condition-atts;
             xml:lang NMTOKEN #IMPLIED'                                   >


<!ENTITY % id-atts
            'id         NMTOKEN                           #IMPLIED
             conref     CDATA                             #IMPLIED
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"'  >



<!ENTITY % univ-atts     
            'translate  (yes | no)                        #IMPLIED
             %id-atts;
             %select-atts;'                                          >


<!ENTITY % global-atts
            'xtrc       CDATA                             #IMPLIED
             xtrf       CDATA                             #IMPLIED'  >


<!ENTITY % topicref-atts 
            'collection-type 
                        (choice | unordered | sequence | 
                         family)                          #IMPLIED
             type       CDATA                             #IMPLIED
             scope      (local | peer | external)         #IMPLIED
             locktitle  (yes|no)                          #IMPLIED
             format     CDATA                             #IMPLIED
             linking    (none | normal | sourceonly | targetonly)
                                                          #IMPLIED
             toc        (yes | no)                        #IMPLIED
             print      (yes | no)                        #IMPLIED
             search     (yes | no)                        #IMPLIED
             chunk      CDATA                             #IMPLIED'  >


<!ENTITY % topicref-atts-no-toc 
            'collection-type
                        (choice | unordered | sequence | 
                         family)                          #IMPLIED
             type       CDATA                             #IMPLIED
             scope      (local | peer | external)         #IMPLIED
             locktitle  (yes|no)                             "yes"
             format     CDATA                             #IMPLIED
             linking    (targetonly | sourceonly | 
                         normal | none)                   #IMPLIED
             toc        (yes | no)                            "no"
             print      (yes | no)                        #IMPLIED
             search     (yes | no)                        #IMPLIED
             chunk      CDATA                             #IMPLIED'  >



<!-- ============================================================= -->
<!--                    MODULES CALLS                              -->
<!-- ============================================================= -->


<!ENTITY % words.cnt            "#PCDATA | %keyword;">
             

<!ENTITY % metaXML      PUBLIC 
"-//OASIS//ELEMENTS 1.0 DITA Metadata//EN" "metaDecl.mod"                >
%metaXML;
  

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->


<!--                    LONG NAME: Keyword                         -->
<!ELEMENT  keyword      (#PCDATA)                                    >
<!ATTLIST  keyword
             keyref     NMTOKEN                           #IMPLIED
             outputclass
                        CDATA                             #IMPLIED 
             %univ-atts;                                             
             ishlabelxpath CDATA #FIXED "@keyref | . | @conref | @id">



<!--                    LONG NAME: Map                             -->
<!ELEMENT  map          ((%topicmeta;)?, 
                         (%navref;|%anchor;|%topicref;|%reltable;)* )>
<!ATTLIST  map 
             title      CDATA                             #IMPLIED
             id         ID                                #IMPLIED
             anchorref  CDATA                             #IMPLIED
             translate  (yes | no)                        #IMPLIED
             domains    CDATA                  "&included-domains;" 
             %topicref-atts;
             %select-atts;
             ishlabelxpath CDATA #FIXED "@title"                     ><!-- FC included domains & arch-atts caused problems in .NET -->


<!--                    LONG NAME: Navigation Reference            -->
<!ELEMENT  navref       EMPTY                                        >
<!ATTLIST  navref
             mapref     CDATA                             #IMPLIED   >


<!--                    LONG NAME: Topic Reference                 -->
<!ELEMENT  topicref     ((%topicmeta;)?, 
                         (%topicref; | %navref; | %anchor;)* )       >
<!ATTLIST  topicref
             navtitle   CDATA                             #IMPLIED
             href       CDATA                             #IMPLIED
             keyref     CDATA                             #IMPLIED
             query      CDATA                             #IMPLIED
             copy-to    CDATA                             #IMPLIED
             ishtype      CDATA #FIXED "ISHSection"
             ishlinkxpath CDATA #FIXED "@href[not(parent::*/@scope='external')]"
             ishlabelxpath CDATA #FIXED "@href[parent::*/@scope='external']"
             %topicref-atts;
             %id-atts;
             %select-atts;
             translate  (yes | no)                        #IMPLIED
             xml:lang   NMTOKEN                           #IMPLIED   >


<!--                    LONG NAME: Anchor                          -->
<!ELEMENT  anchor       EMPTY                                        >
<!ATTLIST  anchor
             id         ID                               #REQUIRED   
             ishtype       CDATA #FIXED "ISHSection"
             ishlabelxpath CDATA #FIXED "concat(string('Anchor: '), @id)">


<!--                    LONG NAME: Relationship Table              -->
<!ELEMENT  reltable     ((%topicmeta;)?, (%relheader;)?, 
                         (%relrow;)+)                                >
<!ATTLIST  reltable        
             title      CDATA                             #IMPLIED
             translate  (yes | no)                        #IMPLIED
             xml:lang   NMTOKEN                           #IMPLIED 
             %id-atts;
             %topicref-atts-no-toc;
             %select-atts;
             ishtype       CDATA   #FIXED   "ISHSection"
             ishlabelxpath CDATA   #FIXED   "concat(string('Relationship Table'), @title)">

<!--                    LONG NAME: Relationship Header             -->
<!ELEMENT  relheader    (%relcolspec;)+                              >


<!--                    LONG NAME: Relationship Column Specification
                                                                   -->
<!ELEMENT  relcolspec   (%topicmeta;)?                               >
<!ATTLIST  relcolspec
             translate  (yes | no)                        #IMPLIED
             xml:lang   NMTOKEN                           #IMPLIED
             %topicref-atts;
             %select-atts;                                           >


<!--                    LONG NAME: Relationship Table Row          -->
<!ELEMENT relrow        (%relcell;)*                                 >
<!ATTLIST relrow
             %id-atts;
             %select-atts;
             translate   (yes|no)                         #IMPLIED
             xml:lang    NMTOKEN                          #IMPLIED
             ishtype       CDATA   #FIXED   "ISHSection"
             ishlabelxpath CDATA   #FIXED   "string('Related Topics')">


<!--                    LONG NAME: Relationship Table Cell         -->
<!ELEMENT relcell         ((%topicref;)*)>
<!ATTLIST relcell
             %id-atts;
             %topicref-atts;
             translate   (yes|no)                         #IMPLIED
             xml:lang    NMTOKEN                          #IMPLIED
             ishtype       CDATA   #FIXED   "ISHSection"
             ishlabelxpath CDATA   #FIXED   "self::*[count(preceding-sibling::*)+1=1]/../../relheader/relcolspec[1]/@type |  self::*[count(preceding-sibling::*)+1=2]/../../relheader/relcolspec[2]/@type |  self::*[count(preceding-sibling::*)+1=3]/../../relheader/relcolspec[3]/@type |  self::*[count(preceding-sibling::*)+1=4]/../../relheader/relcolspec[4]/@type |  self::*[count(preceding-sibling::*)+1=5]/../../relheader/relcolspec[5]/@type |  self::*[count(preceding-sibling::*)+1=6]/../../relheader/relcolspec[6]/@type |  self::*[count(preceding-sibling::*)+1=7]/../../relheader/relcolspec[7]/@type |  self::*[count(preceding-sibling::*)+1=8]/../../relheader/relcolspec[8]/@type |  ../../relheader/relcolspec[9]/@type | self::*[count(preceding-sibling::*)+1=1]/../../relheader/relcolspec[1]/@linking |  self::*[count(preceding-sibling::*)+1=2]/../../relheader/relcolspec[2]/@linking |  self::*[count(preceding-sibling::*)+1=3]/../../relheader/relcolspec[3]/@linking |  self::*[count(preceding-sibling::*)+1=4]/../../relheader/relcolspec[4]/@linking |  self::*[count(preceding-sibling::*)+1=5]/../../relheader/relcolspec[5]/@linking |  self::*[count(preceding-sibling::*)+1=6]/../../relheader/relcolspec[6]/@linking |  self::*[count(preceding-sibling::*)+1=7]/../../relheader/relcolspec[7]/@linking |  self::*[count(preceding-sibling::*)+1=8]/../../relheader/relcolspec[8]/@linking |  ../../relheader/relcolspec[9]/@linking)"
>


<!--                    LONG NAME: Topic Metadata                   -->
<!ELEMENT  topicmeta    ((%linktext;)?, (%searchtitle;)?, 
                         (%shortdesc;)?, (%author;)*, (%source;)?, 
                         (%publisher;)?, (%copyright;)*, 
                         (%critdates;)?, (%permissions;)?, 
                         (%audience;)*, (%category;)*, 
                         (%keywords;)*, (%prodinfo;)*, (%othermeta;)*, 
                         (%resourceid;)*)                            >
<!ATTLIST  topicmeta
             lockmeta   (yes | no)                        #IMPLIED   >


<!--                    LONG NAME: Link Text                       -->
<!ELEMENT  linktext     (%words.cnt;)*                               >


<!--                    LONG NAME: Search Title                    -->
<!ELEMENT  searchtitle  (%words.cnt;)*                               >


<!--                    LONG NAME: Short Description               -->
<!ELEMENT  shortdesc    (%words.cnt;)*                               >
         

<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->


<!ATTLIST keyword     %global-atts;  class CDATA "- topic/keyword "  >
<!ATTLIST map         %global-atts;  class CDATA "- map/map "        >
<!ATTLIST navref      %global-atts;  class CDATA "- map/navref "     >
<!ATTLIST topicref    %global-atts;  class CDATA "- map/topicref "   >
<!ATTLIST anchor      %global-atts;  class CDATA "- map/anchor "     >
<!ATTLIST reltable    %global-atts;  class CDATA "- map/reltable "   >
<!ATTLIST relheader   %global-atts;  class CDATA "- map/relheader "  >
<!ATTLIST relcolspec  %global-atts;  class CDATA "- map/relcolspec " >
<!ATTLIST relrow      %global-atts;  class CDATA "- map/relrow "     >
<!ATTLIST relcell     %global-atts;  class CDATA "- map/relcell "    >
<!ATTLIST topicmeta   %global-atts;  class CDATA "- map/topicmeta "  >
<!ATTLIST linktext    %global-atts;  class CDATA "- map/linktext "   >
<!ATTLIST searchtitle %global-atts;  class CDATA "- map/searchtitle ">
<!ATTLIST shortdesc   %global-atts;  class CDATA "- map/shortdesc "  >


<!-- ================== End DITA Map ============================= -->