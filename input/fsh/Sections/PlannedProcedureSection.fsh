Profile: PlannedProcedureSection
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.30
Title: "Planned Procedure Section"
Description: "This section contains the procedure(s) that a clinician planned based on the preoperative assessment."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.30:2014-06-09"
* ^version = "2014-06-09"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-8082) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.30"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.30\" (CONF:1098-10436)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32590)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-15399)."
  * code 1..1
  * code = "59772-4"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"59772-4\" Planned Procedure (CONF:1098-15400)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-32151)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1098-8084)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1098-8085)."
* entry ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "procedure"
  * ^slicing.rules = #open
* entry contains plannedProcedure 0..*
* entry[plannedProcedure] ^requirements = "MAY contain zero or more [0..*] entry (CONF:1098-8744) such that it"
  * procedure 1..1
  * procedure only PlannedProcedure
    * ^requirements = "SHALL contain exactly one [1..1] Planned Procedure (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.41:2014-06-09) (CONF:1098-15502)."