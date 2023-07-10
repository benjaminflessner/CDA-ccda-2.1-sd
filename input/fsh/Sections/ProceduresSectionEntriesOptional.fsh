Profile: ProceduresSectionEntriesOptional
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.7
Title: "Procedures Section (entries optional)"
Description: "This section describes all interventional, surgical, diagnostic, or therapeutic procedures or treatments pertinent to the patient historically at the time the document is generated. The section should include notable procedures, but can contain all procedures for the period of time being summarized. The common notion of \"procedure\" is broader than that specified by the HL7 Version 3 Reference Information Model (RIM), therefore this section contains procedure templates represented with three RIM classes: Act, Observation, and Procedure. Procedure Activity Procedure (V2) is for procedures that alter the physical condition of a patient (e.g., splenectomy). Procedure Activity Observation (V2) is for procedures that result in new information about a patient but do not cause physical alteration (e.g., EEG). Procedure Activity Act (V2) is for all other types of procedures (e.g., dressing change)."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.7:2014-06-09"
* ^version = "2014-06-09"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-6270) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.7"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.7\" (CONF:1098-6271)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32532)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-15423)."
  * code 1..1
  * code = "47519-4"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"47519-4\" History of Procedures (CONF:1098-15424)."
  * codeSystem 1..1
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-31139)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1098-17184)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1098-6273)."
* entry 0..*
  * ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.rules = #open
* entry contains
    entryProcedure 0..* and
    entryAct 0..* and
    entryObservation 0..*
* entry[entryProcedure] ^requirements = "SHALL contain exactly one [1..1] Procedure Activity Procedure (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.14:2014-06-09) (CONF:1098-15509)."
  * procedure 1..1
  * procedure only ProcedureActivityProcedure
* entry[entryAct] ^requirements = "SHALL contain exactly one [1..1] Procedure Activity Act (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.12:2014-06-09) (CONF:1098-15511)."
  * act 1..1
  * act only ProcedureActivityAct
* entry[entryObservation] ^requirements = "SHALL contain exactly one [1..1] Procedure Activity Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.13:2014-06-09) (CONF:1098-15510)."
  * observation 1..1
  * observation only ProcedureActivityObservation