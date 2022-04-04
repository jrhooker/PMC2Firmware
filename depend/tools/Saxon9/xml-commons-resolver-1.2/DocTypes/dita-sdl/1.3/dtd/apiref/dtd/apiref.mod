<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    SDL DITA API Reference                            -->
<!--  VERSION:   1.3                                               -->
<!--  DATE:      June 2018                                         -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % apiref      "apiref"                                      >
<!ENTITY % apifunction "apifunction"                                 >
<!ENTITY % classname   "classname"                                   >
<!ENTITY % classversion
                       "classversion"                                >
<!ENTITY % functionname
                       "functionname"                                >
<!ENTITY % apidesc     "apidesc"                                     >
<!ENTITY % paramlist   "paramlist"                                   >
<!ENTITY % paramStringIn
                       "paramStringIn"                               >
<!ENTITY % paramStringOut
                       "paramStringOut"                              >
<!ENTITY % paramStringInOut
                       "paramStringInOut"                            >
<!ENTITY % paramLongIn "paramLongIn"                                 >
<!ENTITY % paramLongOut
                       "paramLongOut"                                >
<!ENTITY % paramLongInOut
                       "paramLongInOut"                              >
<!ENTITY % paramIntegerIn
                       "paramIntegerIn"                              >
<!ENTITY % paramIntegerOut
                       "paramIntegerOut"                             >
<!ENTITY % paramIntegerInOut
                       "paramIntegerInOut"                           >
<!ENTITY % paramBooleanIn
                       "paramBooleanIn"                              >
<!ENTITY % paramBooleanOut
                       "paramBooleanOut"                             >
<!ENTITY % paramBooleanInOut
                       "paramBooleanInOut"                           >
<!ENTITY % paramBlobIn "paramBlobIn"                                 >
<!ENTITY % paramBlobOut
                       "paramBlobOut"                                >
<!ENTITY % paramBlobInOut
                       "paramBlobInOut"                              >
<!ENTITY % paramDateIn "paramDateIn"                                 >
<!ENTITY % paramDateOut
                       "paramDateOut"                                >
<!ENTITY % paramEnumIn "paramEnumIn"                                 >
<!ENTITY % paramEnumOut
                       "paramEnumOut"                                >
<!ENTITY % paramEnumInOut
                       "paramEnumInOut"                              >
<!ENTITY % paramEnumName
                       "paramEnumName"                               >
<!ENTITY % paramName   "paramName"                                   >
<!ENTITY % paramDesc   "paramDesc"                                   >
<!ENTITY % paramStringArrayIn
                       "paramStringArrayIn"                          >
<!ENTITY % paramStringArrayOut
                       "paramStringArrayOut"                         >
<!ENTITY % paramStringArrayInOut
                       "paramStringArrayInOut"                       >
<!ENTITY % paramLongArrayIn
                       "paramLongArrayIn"                            >
<!ENTITY % paramLongArrayOut
                       "paramLongArrayOut"                           >
<!ENTITY % paramLongArrayInOut
                       "paramLongArrayInOut"                         >
<!ENTITY % purpose     "purpose"                                     >
<!ENTITY % remarks     "remarks"                                     >
<!ENTITY % knownissues "knownissues"                                 >
<!ENTITY % knownissue  "knownissue"                                  >
<!ENTITY % limitation  "limitation"                                  >
<!ENTITY % workaround  "workaround"                                  >
<!ENTITY % history     "history"                                     >
<!ENTITY % since       "since"                                       >
<!ENTITY % deprecated  "deprecated"                                  >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % apiref-info-types
              "%info-types;"
>
<!--                    LONG NAME: API reference topic             -->
<!ENTITY % apiref.content
                       "((%apifunction;),
                         (%apidesc;))"
>
<!ENTITY % apiref.attributes
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
<!ELEMENT  apiref %apiref.content;>
<!ATTLIST  apiref %apiref.attributes;
                 %arch-atts;
                 domains 
                        CDATA
                                  "&included-domains;"
>


<!--                    LONG NAME: API function                    -->
<!ENTITY % apifunction.content
                       "((%classname;),
                         (%classversion;),
                         (%functionname;)?)"
>
<!ENTITY % apifunction.attributes
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
<!ELEMENT  apifunction %apifunction.content;>
<!ATTLIST  apifunction %apifunction.attributes;>


<!--                    LONG NAME: Class name                      -->
<!ENTITY % classname.content
                       "(%ph.cnt;)*"
>
<!ENTITY % classname.attributes
              "keyref
                          CDATA
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  classname %classname.content;>
<!ATTLIST  classname %classname.attributes;>


<!--                    LONG NAME: Class version                   -->
<!ENTITY % classversion.content
                       "(%ph.cnt;)*"
>
<!ENTITY % classversion.attributes
              "keyref
                          CDATA
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  classversion %classversion.content;>
<!ATTLIST  classversion %classversion.attributes;>


<!--                    LONG NAME: Function name                   -->
<!ENTITY % functionname.content
                       "(%ph.cnt;)*"
>
<!ENTITY % functionname.attributes
              "keyref
                          CDATA
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  functionname %functionname.content;>
<!ATTLIST  functionname %functionname.attributes;>


<!--                    LONG NAME: API description                 -->
<!ENTITY % apidesc.content
                       "((%purpose;),
                         (%paramlist;)?,
                         (%remarks;)?,
                         (%knownissues;)?,
                         (%history;)?,
                         (%example;)*)"
>
<!ENTITY % apidesc.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  apidesc %apidesc.content;>
<!ATTLIST  apidesc %apidesc.attributes;>


<!--                    LONG NAME: Parameter list                  -->
<!ENTITY % paramlist.content
                       "(%paramStringIn; |
                         %paramStringOut; |
                         %paramStringInOut; |
                         %paramIntegerIn; |
                         %paramIntegerOut; |
                         %paramIntegerInOut; |
                         %paramBooleanIn; |
                         %paramBooleanOut; |
                         %paramBooleanInOut; |
                         %paramEnumIn; |
                         %paramEnumOut; |
                         %paramEnumInOut; |
                         %paramDateIn; |
                         %paramDateOut; |
                         %paramBlobIn; |
                         %paramBlobOut; |
                         %paramBlobInOut; |
                         %paramLongIn; |
                         %paramLongOut; |
                         %paramLongInOut; |
                         %paramStringArrayIn; |
                         %paramStringArrayOut; |
                         %paramStringArrayInOut; |
                         %paramLongArrayIn; |
                         %paramLongArrayOut; |
                         %paramLongArrayInOut;)+"
>
<!ENTITY % paramlist.attributes
              "relcolwidth
                          CDATA
                                    #IMPLIED
               keycol
                          NMTOKEN
                                    #IMPLIED
               refcols
                          NMTOKENS
                                    #IMPLIED
               spectitle
                          CDATA
                                    #IMPLIED
               %display-atts;
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramlist %paramlist.content;>
<!ATTLIST  paramlist %paramlist.attributes;>


<!--                    LONG NAME: String data In parameter        -->
<!ENTITY % paramStringIn.content
                       "((%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramStringIn.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramStringIn %paramStringIn.content;>
<!ATTLIST  paramStringIn %paramStringIn.attributes;>


<!--                    LONG NAME: String data Out parameter       -->
<!ENTITY % paramStringOut.content
                       "((%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramStringOut.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramStringOut %paramStringOut.content;>
<!ATTLIST  paramStringOut %paramStringOut.attributes;>


<!--                    LONG NAME: String In/Out parameter         -->
<!ENTITY % paramStringInOut.content
                       "((%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramStringInOut.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramStringInOut %paramStringInOut.content;>
<!ATTLIST  paramStringInOut %paramStringInOut.attributes;>


<!--                    LONG NAME: Long data In parameter          -->
<!ENTITY % paramLongIn.content
                       "((%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramLongIn.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramLongIn %paramLongIn.content;>
<!ATTLIST  paramLongIn %paramLongIn.attributes;>


<!--                    LONG NAME: Long data Out parameter         -->
<!ENTITY % paramLongOut.content
                       "((%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramLongOut.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramLongOut %paramLongOut.content;>
<!ATTLIST  paramLongOut %paramLongOut.attributes;>


<!--                    LONG NAME: Long In/Out parameter           -->
<!ENTITY % paramLongInOut.content
                       "((%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramLongInOut.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramLongInOut %paramLongInOut.content;>
<!ATTLIST  paramLongInOut %paramLongInOut.attributes;>


<!--                    LONG NAME: Integer data In parameter       -->
<!ENTITY % paramIntegerIn.content
                       "((%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramIntegerIn.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramIntegerIn %paramIntegerIn.content;>
<!ATTLIST  paramIntegerIn %paramIntegerIn.attributes;>


<!--                    LONG NAME: Integer data Out parameter      -->
<!ENTITY % paramIntegerOut.content
                       "((%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramIntegerOut.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramIntegerOut %paramIntegerOut.content;>
<!ATTLIST  paramIntegerOut %paramIntegerOut.attributes;>


<!--                    LONG NAME: Integer In/Out parameter        -->
<!ENTITY % paramIntegerInOut.content
                       "((%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramIntegerInOut.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramIntegerInOut %paramIntegerInOut.content;>
<!ATTLIST  paramIntegerInOut %paramIntegerInOut.attributes;>


<!--                    LONG NAME: Boolean data In parameter       -->
<!ENTITY % paramBooleanIn.content
                       "((%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramBooleanIn.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramBooleanIn %paramBooleanIn.content;>
<!ATTLIST  paramBooleanIn %paramBooleanIn.attributes;>


<!--                    LONG NAME: Boolean data Out parameter      -->
<!ENTITY % paramBooleanOut.content
                       "((%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramBooleanOut.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramBooleanOut %paramBooleanOut.content;>
<!ATTLIST  paramBooleanOut %paramBooleanOut.attributes;>


<!--                    LONG NAME: Boolean In/Out parameter        -->
<!ENTITY % paramBooleanInOut.content
                       "((%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramBooleanInOut.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramBooleanInOut %paramBooleanInOut.content;>
<!ATTLIST  paramBooleanInOut %paramBooleanInOut.attributes;>


<!--                    LONG NAME: Binary data In parameter        -->
<!ENTITY % paramBlobIn.content
                       "((%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramBlobIn.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramBlobIn %paramBlobIn.content;>
<!ATTLIST  paramBlobIn %paramBlobIn.attributes;>


<!--                    LONG NAME: Binary data Out parameter       -->
<!ENTITY % paramBlobOut.content
                       "((%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramBlobOut.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramBlobOut %paramBlobOut.content;>
<!ATTLIST  paramBlobOut %paramBlobOut.attributes;>


<!--                    LONG NAME: Binary data In/Out parameter    -->
<!ENTITY % paramBlobInOut.content
                       "((%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramBlobInOut.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramBlobInOut %paramBlobInOut.content;>
<!ATTLIST  paramBlobInOut %paramBlobInOut.attributes;>


<!--                    LONG NAME: Date In parameter               -->
<!ENTITY % paramDateIn.content
                       "((%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramDateIn.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramDateIn %paramDateIn.content;>
<!ATTLIST  paramDateIn %paramDateIn.attributes;>


<!--                    LONG NAME: Date Out parameter              -->
<!ENTITY % paramDateOut.content
                       "((%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramDateOut.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramDateOut %paramDateOut.content;>
<!ATTLIST  paramDateOut %paramDateOut.attributes;>


<!--                    LONG NAME: Enumeration In parameter        -->
<!ENTITY % paramEnumIn.content
                       "((%paramEnumName;),
                         (%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramEnumIn.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramEnumIn %paramEnumIn.content;>
<!ATTLIST  paramEnumIn %paramEnumIn.attributes;>


<!--                    LONG NAME: Enumeration Out parameter       -->
<!ENTITY % paramEnumOut.content
                       "((%paramEnumName;),
                         (%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramEnumOut.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramEnumOut %paramEnumOut.content;>
<!ATTLIST  paramEnumOut %paramEnumOut.attributes;>


<!--                    LONG NAME: Enumeration In/Out parameter    -->
<!ENTITY % paramEnumInOut.content
                       "((%paramEnumName;),
                         (%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramEnumInOut.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramEnumInOut %paramEnumInOut.content;>
<!ATTLIST  paramEnumInOut %paramEnumInOut.attributes;>


<!--                    LONG NAME: Parameter enumeration name      -->
<!ENTITY % paramEnumName.content
                       "(%ph.cnt;)*"
>
<!ENTITY % paramEnumName.attributes
              "specentry
                          CDATA
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramEnumName %paramEnumName.content;>
<!ATTLIST  paramEnumName %paramEnumName.attributes;>


<!--                    LONG NAME: Parameter name                  -->
<!ENTITY % paramName.content
                       "(%ph.cnt;)*"
>
<!ENTITY % paramName.attributes
              "specentry
                          CDATA
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramName %paramName.content;>
<!ATTLIST  paramName %paramName.attributes;>


<!--                    LONG NAME: Parameter description           -->
<!ENTITY % paramDesc.content
                       "(%desc.cnt;)*"
>
<!ENTITY % paramDesc.attributes
              "specentry
                          CDATA
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramDesc %paramDesc.content;>
<!ATTLIST  paramDesc %paramDesc.attributes;>


<!--                    LONG NAME: StringArray In parameter        -->
<!ENTITY % paramStringArrayIn.content
                       "((%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramStringArrayIn.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramStringArrayIn %paramStringArrayIn.content;>
<!ATTLIST  paramStringArrayIn %paramStringArrayIn.attributes;>


<!--                    LONG NAME: StringArray Out parameter       -->
<!ENTITY % paramStringArrayOut.content
                       "((%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramStringArrayOut.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramStringArrayOut %paramStringArrayOut.content;>
<!ATTLIST  paramStringArrayOut %paramStringArrayOut.attributes;>


<!--                    LONG NAME: StringArray In/Out parameter    -->
<!ENTITY % paramStringArrayInOut.content
                       "((%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramStringArrayInOut.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramStringArrayInOut %paramStringArrayInOut.content;>
<!ATTLIST  paramStringArrayInOut %paramStringArrayInOut.attributes;>


<!--                    LONG NAME: LongArray In parameter          -->
<!ENTITY % paramLongArrayIn.content
                       "((%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramLongArrayIn.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramLongArrayIn %paramLongArrayIn.content;>
<!ATTLIST  paramLongArrayIn %paramLongArrayIn.attributes;>


<!--                    LONG NAME: LongArray Out parameter         -->
<!ENTITY % paramLongArrayOut.content
                       "((%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramLongArrayOut.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramLongArrayOut %paramLongArrayOut.content;>
<!ATTLIST  paramLongArrayOut %paramLongArrayOut.attributes;>


<!--                    LONG NAME: LongArray In/Out parameter      -->
<!ENTITY % paramLongArrayInOut.content
                       "((%paramName;),
                         (%paramDesc;))"
>
<!ENTITY % paramLongArrayInOut.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  paramLongArrayInOut %paramLongArrayInOut.content;>
<!ATTLIST  paramLongArrayInOut %paramLongArrayInOut.attributes;>


<!--                    LONG NAME: Purpose                         -->
<!ENTITY % purpose.content
                       "(%section.cnt;)*"
>
<!ENTITY % purpose.attributes
              "spectitle
                          CDATA
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  purpose %purpose.content;>
<!ATTLIST  purpose %purpose.attributes;>


<!--                    LONG NAME: Remarks                         -->
<!ENTITY % remarks.content
                       "(%section.cnt;)*"
>
<!ENTITY % remarks.attributes
              "spectitle
                          CDATA
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  remarks %remarks.content;>
<!ATTLIST  remarks %remarks.attributes;>


<!--                    LONG NAME: Known issues                    -->
<!ENTITY % knownissues.content
                       "(%knownissue;)+"
>
<!ENTITY % knownissues.attributes
              "compact
                          (yes |
                           no)
                                    #IMPLIED
               spectitle
                          CDATA
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  knownissues %knownissues.content;>
<!ATTLIST  knownissues %knownissues.attributes;>


<!--                    LONG NAME: Known issue                     -->
<!ENTITY % knownissue.content
                       "((%limitation;),
                         (%workaround;)?)"
>
<!ENTITY % knownissue.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  knownissue %knownissue.content;>
<!ATTLIST  knownissue %knownissue.attributes;>


<!--                    LONG NAME: Limitation                      -->
<!ENTITY % limitation.content
                       "(%itemgroup.cnt;)*"
>
<!ENTITY % limitation.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  limitation %limitation.content;>
<!ATTLIST  limitation %limitation.attributes;>


<!--                    LONG NAME: Workaround                      -->
<!ENTITY % workaround.content
                       "(%itemgroup.cnt;)*"
>
<!ENTITY % workaround.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  workaround %workaround.content;>
<!ATTLIST  workaround %workaround.attributes;>


<!--                    LONG NAME: History                         -->
<!ENTITY % history.content
                       "((%since;)?,
                         (%deprecated;)?)"
>
<!ENTITY % history.attributes
              "spectitle
                          CDATA
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  history %history.content;>
<!ATTLIST  history %history.attributes;>


<!--                    LONG NAME: Since version                   -->
<!ENTITY % since.content
                       "(%ph.cnt;)*"
>
<!ENTITY % since.attributes
              "specentry
                          CDATA
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  since %since.content;>
<!ATTLIST  since %since.attributes;>


<!--                    LONG NAME: Deprecated in version           -->
<!ENTITY % deprecated.content
                       "(%ph.cnt;)*"
>
<!ENTITY % deprecated.attributes
              "specentry
                          CDATA
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  deprecated %deprecated.content;>
<!ATTLIST  deprecated %deprecated.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  apiref       %global-atts;  class CDATA "- topic/topic apiref/apiref ">
<!ATTLIST  apifunction  %global-atts;  class CDATA "- topic/title  apiref/apifunction ">
<!ATTLIST  classname    %global-atts;  class CDATA "- topic/ph  apiref/classname ">
<!ATTLIST  classversion %global-atts;  class CDATA "- topic/ph  apiref/classversion ">
<!ATTLIST  functionname %global-atts;  class CDATA "- topic/ph  apiref/functionname ">
<!ATTLIST  apidesc      %global-atts;  class CDATA "- topic/body  apiref/apidesc ">
<!ATTLIST  paramlist    %global-atts;  class CDATA "- topic/simpletable  apiref/paramlist ">
<!ATTLIST  paramLongIn  %global-atts;  class CDATA "- topic/strow  apiref/paramLongIn ">
<!ATTLIST  paramLongOut %global-atts;  class CDATA "- topic/strow  apiref/paramLongOut ">
<!ATTLIST  paramLongInOut %global-atts;  class CDATA "- topic/strow  apiref/paramLongInOut ">
<!ATTLIST  paramStringIn %global-atts;  class CDATA "- topic/strow  apiref/paramStringIn ">
<!ATTLIST  paramStringOut %global-atts;  class CDATA "- topic/strow  apiref/paramStringOut ">
<!ATTLIST  paramStringInOut %global-atts;  class CDATA "- topic/strow  apiref/paramStringInOut ">
<!ATTLIST  paramIntegerIn %global-atts;  class CDATA "- topic/strow  apiref/paramIntegerIn ">
<!ATTLIST  paramIntegerOut %global-atts;  class CDATA "- topic/strow  apiref/paramIntegerOut ">
<!ATTLIST  paramIntegerInOut %global-atts;  class CDATA "- topic/strow  apiref/paramIntegerInOut ">
<!ATTLIST  paramBooleanIn %global-atts;  class CDATA "- topic/strow  apiref/paramBooleanIn ">
<!ATTLIST  paramBooleanOut %global-atts;  class CDATA "- topic/strow  apiref/paramBooleanOut ">
<!ATTLIST  paramBooleanInOut %global-atts;  class CDATA "- topic/strow  apiref/paramBooleanInOut ">
<!ATTLIST  paramDateIn  %global-atts;  class CDATA "- topic/strow  apiref/paramDateIn ">
<!ATTLIST  paramDateOut %global-atts;  class CDATA "- topic/strow  apiref/paramDateOut ">
<!ATTLIST  paramEnumIn  %global-atts;  class CDATA "- topic/strow  apiref/paramEnumIn ">
<!ATTLIST  paramEnumOut %global-atts;  class CDATA "- topic/strow  apiref/paramEnumOut ">
<!ATTLIST  paramEnumInOut %global-atts;  class CDATA "- topic/strow  apiref/paramEnumInOut ">
<!ATTLIST  paramBlobIn  %global-atts;  class CDATA "- topic/strow  apiref/paramBlobIn ">
<!ATTLIST  paramBlobOut %global-atts;  class CDATA "- topic/strow  apiref/paramBlobOut ">
<!ATTLIST  paramBlobInOut %global-atts;  class CDATA "- topic/strow  apiref/paramBlobInOut ">
<!ATTLIST  paramStringArrayIn %global-atts;  class CDATA "- topic/strow  apiref/paramStringArrayIn ">
<!ATTLIST  paramStringArrayOut %global-atts;  class CDATA "- topic/strow  apiref/paramStringArrayOut ">
<!ATTLIST  paramStringArrayInOut %global-atts;  class CDATA "- topic/strow  apiref/paramStringArrayInOut ">
<!ATTLIST  paramLongArrayIn %global-atts;  class CDATA "- topic/strow  apiref/paramLongArrayIn ">
<!ATTLIST  paramLongArrayOut %global-atts;  class CDATA "- topic/strow  apiref/paramLongArrayOut ">
<!ATTLIST  paramLongArrayInOut %global-atts;  class CDATA "- topic/strow  apiref/paramLongArrayInOut ">
<!ATTLIST  paramName    %global-atts;  class CDATA "- topic/stentry  apiref/paramName ">
<!ATTLIST  paramDesc    %global-atts;  class CDATA "- topic/stentry  apiref/paramDesc ">
<!ATTLIST  paramEnumName %global-atts;  class CDATA "- topic/stentry  apiref/paramEnumName ">
<!ATTLIST  purpose      %global-atts;  class CDATA "- topic/section  apiref/purpose ">
<!ATTLIST  remarks      %global-atts;  class CDATA "- topic/section  apiref/remarks ">
<!ATTLIST  knownissues  %global-atts;  class CDATA "- topic/ul  apiref/knownissues ">
<!ATTLIST  knownissue   %global-atts;  class CDATA "- topic/li  apiref/knownissue ">
<!ATTLIST  history      %global-atts;  class CDATA "- topic/section  apiref/history ">
<!ATTLIST  since        %global-atts;  class CDATA "- topic/ph  apiref/since ">
<!ATTLIST  deprecated   %global-atts;  class CDATA "- topic/ph  apiref/deprecated ">
<!ATTLIST  limitation   %global-atts;  class CDATA "- topic/itemgroup  apiref/limitation ">
<!ATTLIST  workaround   %global-atts;  class CDATA "- topic/itemgroup  apiref/workaround ">

<!-- ================== End of SDL DITA API Reference ==================== -->
 