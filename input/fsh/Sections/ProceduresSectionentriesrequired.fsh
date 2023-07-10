Profile: ProceduresSectionentriesrequired
Parent: ProceduresSectionEntriesOptional
Id: 2.16.840.1.113883.10.20.22.2.7.1
Title: "Procedures Section (entries required)"
Description: "This section describes all interventional, surgical, diagnostic, or therapeutic procedures or treatments pertinent to the patient historically at the time the document is generated. The section should include notable procedures, but can contain all procedures for the period of time being summarized. The common notion of \"procedure\" is broader than that specified by the HL7 Version 3 Reference Information Model (RIM), therefore this section contains procedure templates represented with three RIM classes: Act. Observation, and Procedure. Procedure act is for procedures that alter the physical condition of a patient (e.g., splenectomy). Observation act is for procedures that result in new information about a patient but do not cause physical alteration (e.g., EEG). Act is for all other types of procedures (e.g., dressing change)."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.7.1:2014-06-09"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* nullFlavor 0..1
* nullFlavor = #NI
  * ^requirements = "MAY contain zero or one [0..1] @nullFlavor=\"NI\" No information (CodeSystem: HL7NullFlavor urn:oid:2.16.840.1.113883.5.1008) (CONF:1098-32876)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains secondary 1..1
* templateId[secondary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-7891) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.7.1"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.7.1\" (CONF:1098-10447)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32533)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-15425)."
  * code 1..1
  * code = "47519-4"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"47519-4\" History of Procedures (CONF:1098-15426)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-31138)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1098-7893)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1098-7894)."
* entry 1..
  * ^short = "If section/@nullFlavor is not present there SHALL be at least one entry conformant to Procedure Activity Act (V2) (templateId 2.16.840.1.113883.10.20.22.4.12:2014-06-09) OR Procedure Activity Observation (V2) (templateId: 2.16.840.1.113883.10.20.22.4.13:2014-06-09) OR Procedure Activity Procedure (V2) (templateId: 2.16.840.1.113883.10.20.22.4.14:2014-06-09)"
  * ^requirements = "SHALL contain at least one [1..*] entry (CONF:1098-7895) such that it"