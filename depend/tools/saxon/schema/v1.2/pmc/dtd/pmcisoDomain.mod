<!--====================== 

PMC ISO construct domain

Provides block and phrase level elements for creating the ISO data attached to a PMC document.

Author: Jeff Hooker

Copyright (c) 2008 PMC Sierra

========================-->

<!ENTITY % pmc_iso "pmc_iso" >
<!ENTITY % pmc_abstract "pmc_abstract" >
<!ENTITY % pmc_name "pmc_name" >
<!ENTITY % pmc_title "pmc_title" >
<!ENTITY % pmc_subtitle "pmc_subtitle" >
<!ENTITY % pmc_header "pmc_header" >
<!ENTITY % pmc_coverimage "pmc_coverimage" >
<!ENTITY % show_comments "show_comments" >
<!ENTITY % pmc_date "pmc_date" >
<!ENTITY % agile_part_number "agile_part_number" >
<!ENTITY % pmc_productname "pmc_productname" >
<!ENTITY % pmc_productnumber "pmc_productnumber" >
<!ENTITY % pmc_reviewer "pmc_reviewer "  >
<!ENTITY % pmc_approver "pmc_approver"  >
<!ENTITY % pmc_author "pmc_author" >
<!ENTITY % pmc_releaseinfo "pmc_releaseinfo" >
<!ENTITY % pmc_revhistory "pmc_revhistory" >
<!ENTITY % pmc_revision "pmc_revision" >
<!ENTITY % pmc_revdescription "pmc_revdescription" >
<!ENTITY % pmc_rev_number "pmc_rev_number" >
<!ENTITY % pmc_dev_status "pmc_dev_status" >
<!ENTITY % pmc_dcp_phase "pmc_dcp_phase" >
<!ENTITY % pmc_document_id "pmc_document_id" >
<!ENTITY % pmc_issuenum "pmc_issuenum" >
<!ENTITY % pmc_doc_issue "pmc_doc_issue" >
<!ENTITY % pmc_doc_status "pmc_doc_status" >
<!ENTITY % pmc_doc_type "pmc_doc_type" >
<!ENTITY % pmc_file_name "pmc_file_name" >
<!ENTITY % pmc_issue_date "pmc_issue_date" >
<!ENTITY % pmc_inclusion "pmc_inclusion" >
<!ENTITY % pmc_copyright_year "pmc_copyright_year" >
<!ENTITY % pmc_filing_path "pmc_filing_path" >
<!ENTITY % pmc_patents "pmc_patents" >
<!ENTITY % pmc_footertext "pmc_footertext" >
<!ENTITY % pmc_keywords "pmc_keywords" >
<!ENTITY % pmc_keyword "pmc_keyword" >
<!ENTITY % pmc_keywords "pmc_keywords" >
<!ENTITY % pmc_keyword "pmc_keyword" >
<!ENTITY % pdf_properties "pdf_properties" >
<!ENTITY % pdf_properties_title "pdf_properties_title" >
<!ENTITY % pdf_watermark "pdf_watermark" >
<!ENTITY % pdf_password "pdf_password" >
<!ENTITY % pmc_dev_status_att  'dev_status (Preliminary | Released) "Preliminary"'>
<!ENTITY % pmc_doc_status_att  'doc_status (Draft | Approved) "Draft"'>
<!ENTITY % pmc_dcp_phase_att  "dcp_phase (feasbility | design_planning | design_specification | design_implementation | design_verificatioin | final_layout | fabrication | prototype_release) #IMPLIED">
<!ENTITY % show_comments_att  'show_comments (NO | YES) "NO"'>

<!-- LONG NAME:ISO element -->

<!ELEMENT pmc_iso (
pmc_title,
pmc_subtitle*,
pmc_header*,
pmc_coverimage*,
pmc_abstract*, 
agile_part_number*,
pmc_productnumber*, 
pmc_document_id*,
pmc_issue_date*,
pmc_file_name*,
pmc_filing_path*,
pmc_inclusion*, 
pmc_dev_status*, 
pmc_doc_status*,
pmc_doc_type*,
pmc_dcp_phase*, 
pmc_issuenum, 
pmc_copyright_year*,
pmc_keywords*, 
pmc_footertext+, 
pmc_patents*, 
pmc_revhistory*,
pdf_properties*,
show_comments*)  >

<!ATTLIST pmc_iso %univ-atts; outputclass CDATA #IMPLIED >

<!-- LONG NAME: PMC name (author, reviewer, or approver element) -->

<!ELEMENT pmc_name (#PCDATA) >

<!-- LONG NAME: Basic PMC ISO elements  -->

<!ELEMENT pmc_copyright_year (#PCDATA) >
<!ATTLIST pmc_copyright_year %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc_title %title.content; >
<!ATTLIST pmc_title %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc_subtitle %title.content; >
<!ATTLIST pmc_subtitle %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc_header %title.content; >
<!ATTLIST pmc_header %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc_date (#PCDATA) >
<!ATTLIST pmc_date %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT agile_part_number (#PCDATA) >
<!ATTLIST agile_part_number %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc_productname (#PCDATA) >
<!ATTLIST pmc_productname %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc_productnumber (#PCDATA) >
<!ATTLIST pmc_productnumber %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc_dev_status EMPTY >
<!ATTLIST pmc_dev_status 
%univ-atts;  
outputclass CDATA #IMPLIED 
%pmc_dev_status_att;>

<!ELEMENT show_comments EMPTY >
<!ATTLIST show_comments 
%univ-atts;  
outputclass CDATA #IMPLIED 
%show_comments_att;>

<!ELEMENT pmc_dcp_phase EMPTY >
<!ATTLIST pmc_dcp_phase 
%univ-atts; 
outputclass CDATA #IMPLIED 
%pmc_dcp_phase_att;>

<!ELEMENT pmc_document_id (#PCDATA) >
<!ATTLIST pmc_document_id %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc_issuenum (#PCDATA) >
<!ATTLIST pmc_issuenum %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc_doc_issue (#PCDATA) >
<!ATTLIST pmc_doc_issue %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc_doc_status EMPTY >
<!ATTLIST pmc_doc_status 
%univ-atts; 
outputclass CDATA #IMPLIED 
%pmc_doc_status_att;>

<!ELEMENT pmc_doc_type (#PCDATA) >
<!ATTLIST pmc_doc_type %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc_file_name (#PCDATA) >
<!ATTLIST pmc_file_name %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc_issue_date (#PCDATA) >
<!ATTLIST pmc_issue_date %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc_inclusion (#PCDATA) >
<!ATTLIST pmc_inclusion %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc_filing_path (#PCDATA) >
<!ATTLIST pmc_filing_path %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc_patents (p+) >
<!ATTLIST pmc_patents %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc_footertext  (p+) >
<!ATTLIST pmc_footertext %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc_abstract  (p+) >
<!ATTLIST pmc_abstract %univ-atts; outputclass CDATA #IMPLIED >

<!-- LONG NAME: Basic releaseinfo element  -->

<!ELEMENT pmc_releaseinfo (pmc_author+, pmc_reviewer*, pmc_approver*) >
<!ATTLIST pmc_releaseinfo %univ-atts; outputclass CDATA #IMPLIED >

<!-- LONG NAME: The contents of the releaseinfo element  -->

<!ELEMENT pmc_author (pmc_name, pmc_title, pmc_date) >
<!ATTLIST pmc_author %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc_reviewer (pmc_name, pmc_title, pmc_date)  >
<!ATTLIST pmc_reviewer %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc_approver (pmc_name, pmc_title, pmc_date)  >
<!ATTLIST pmc_approver %univ-atts; outputclass CDATA #IMPLIED >

<!-- LONG NAME: Basic revision history element  -->

<!ELEMENT pmc_revhistory (pmc_revision+) >
<!ATTLIST pmc_revhistory %univ-atts; outputclass CDATA #IMPLIED >

<!-- LONG NAME: A  single history element  -->

<!ELEMENT pmc_revision (pmc_rev_number, pmc_date, pmc_name, pmc_revdescription) >
<!ATTLIST pmc_revision %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc_keywords (pmc_keyword+) >
<!ATTLIST pmc_keywords %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc_keyword (#PCDATA) >
<!ATTLIST pmc_keyword %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc_revdescription ((p | ul)+) >
<!ATTLIST pmc_revdescription %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc_rev_number (#PCDATA) >
<!ATTLIST pmc_rev_number %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pdf_properties (pdf_properties_title, pdf_password*, pdf_watermark*) >
<!ATTLIST pdf_properties %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pdf_properties_title (#PCDATA) >
<!ATTLIST pdf_properties_title %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pdf_password (#PCDATA) >
<!ATTLIST pdf_password %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pdf_watermark (fig) >
<!ATTLIST pdf_watermark %univ-atts; outputclass CDATA #IMPLIED >

<!ELEMENT pmc_coverimage (fig) >
<!ATTLIST pmc_coverimage %univ-atts; outputclass CDATA #IMPLIED >

<!--=========================================================
                  SPECIALIZATION ATTRIBUTE DECLARATIONS
 ==========================================================-->

<!ATTLIST pmc_iso  %global-atts; class CDATA "+ bookmap/bookchangehistory pmciso-d/pmc_iso " >
<!ATTLIST pmc_name  %global-atts; class CDATA "+ topic/p pmciso-d/pmc_name " >
<!ATTLIST pmc_title  %global-atts; class CDATA "+ topic/p pmciso-d/pmc_title " >
<!ATTLIST pmc_header  %global-atts; class CDATA "+ topic/p pmciso-d/pmc_header " >
<!ATTLIST pmc_subtitle  %global-atts; class CDATA "+ topic/p pmciso-d/pmc_subtitle " >
<!ATTLIST pmc_abstract %global-atts; class CDATA "+ topic/section pmciso-d/pmc_abstract " >
<!ATTLIST agile_part_number  %global-atts; class CDATA "+ topic/ph pmciso-d/agile_part_number " >
<!ATTLIST pmc_date  %global-atts; class CDATA "+ topic/ph pmciso-d/pmc_date " >
<!ATTLIST pmc_productname  %global-atts; class CDATA "+ topic/ph pmciso-d/pmc_productname " >
<!ATTLIST pmc_productnumber  %global-atts; class CDATA "+ topic/ph pmciso-d/pmc_productnumber " >
<!ATTLIST pmc_reviewer  %global-atts; class CDATA "+ pmciso-d/pmc_reviewer " >
<!ATTLIST pmc_approver  %global-atts; class CDATA "+ pmciso-d/pmc_approver " >
<!ATTLIST pmc_author  %global-atts; class CDATA "+ pmciso-d/pmc_author " >
<!ATTLIST pmc_releaseinfo  %global-atts; class CDATA "+ topic/section pmciso-d/pmc_releaseinfo " >
<!ATTLIST pmc_revhistory  %global-atts; class CDATA "+ topic/section pmciso-d/pmc_revhistory " >
<!ATTLIST pmc_revision  %global-atts; class CDATA "+ pmciso-d/pmc_revision " >
<!ATTLIST pmc_rev_number  %global-atts; class CDATA "+ topic/ph topic/prognum pmciso-d/pmc_rev_number " >
<!ATTLIST pmc_dev_status  %global-atts; class CDATA "+ topic/ph pmciso-d/pmc_dev_status " >
<!ATTLIST show_comments  %global-atts; class CDATA "+ topic/ph pmciso-d/show_comments " >
<!ATTLIST pmc_dcp_phase  %global-atts; class CDATA "+ topic/ph pmciso-d/pmc_dcp_phase " >
<!ATTLIST pmc_document_id %global-atts; class CDATA "+ topic/ph pmciso-d/pmc_document_id " >
<!ATTLIST pmc_issuenum %global-atts; class CDATA "+ topic/ph pmciso-d/pmc_issuenum " >
<!ATTLIST pmc_doc_issue %global-atts; class CDATA "+ topic/ph pmciso-d/pmc_doc_issue " >
<!ATTLIST pmc_doc_status %global-atts; class CDATA "+ topic/ph pmciso-d/pmc_doc_status " >
<!ATTLIST pmc_doc_type %global-atts; class CDATA "+ topic/ph pmciso-d/pmc_doc_type " >
<!ATTLIST pmc_file_name %global-atts; class CDATA "+topic/ph  pmciso-d/pmc_file_name " >
<!ATTLIST pmc_issue_date %global-atts; class CDATA "+ topic/ph pmciso-d/pmc_issue_date " >
<!ATTLIST pmc_inclusion %global-atts; class CDATA "+ topic/ph pmciso-d/pmc_inclusion " >
<!ATTLIST pmc_copyright_year %global-atts; class CDATA "+ topic/ph pmciso-d/pmc_copyright_year " >
<!ATTLIST pmc_filing_path %global-atts; class CDATA "+ topic/ph pmciso-d/pmc_filing_path " >
<!ATTLIST pmc_patents %global-atts; class CDATA "+ topic/p pmciso-d/pmc_patents " >
<!ATTLIST pmc_revdescription %global-atts; class CDATA "+ topic/section pmciso-d/pmc_revdescription " >
<!ATTLIST pmc_footertext %global-atts; class CDATA "+ topic/p pmciso-d/pmc_footertext " >
<!ATTLIST pmc_keywords %global-atts; class CDATA "+ topic/p pmciso-d/pmc_keywords " >
<!ATTLIST pmc_keyword %global-atts; class CDATA "+ topic/ph pmciso-d/pmc_keyword " >
<!ATTLIST pdf_properties %global-atts; class CDATA "+ topic/p pmciso-d/pdf_properties " >
<!ATTLIST pdf_properties_title %global-atts; class CDATA "+ topic/p pmciso-d/pdf_properties_title " >
<!ATTLIST pdf_password %global-atts; class CDATA "+ topic/ph pmciso-d/pdf_password " >
<!ATTLIST pdf_watermark %global-atts; class CDATA "+ topic/p pmciso-d/pdf_watermark " >
<!ATTLIST pmc_coverimage %global-atts; class CDATA "+ topic/p pmciso-d/pmc_coverimage " >



