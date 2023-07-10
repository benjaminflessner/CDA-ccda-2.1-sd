Profile: ProcedureIndicationsSection
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.29
Title: "Procedure Indications Section"
Description: "This section contains the reason(s) for the procedure or surgery. This section may include the preprocedure diagnoses as well as symptoms contributing to the reason for the procedure."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.29:2014-06-09"
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
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-8058) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.29"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.29\" (CONF:1098-10445)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32572)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-15419)."
  * code 1..1
  * code = "59768-2"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"59768-2\" Procedure Indications  (CONF:1098-15420)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-30827)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1098-8060)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1098-8061)."
* entry ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.rules = #open
* entry contains indication 0..*
* entry[indication] ^requirements = "MAY contain zero or more [0..*] entry (CONF:1098-8743) such that it"
  * observation 1..1
  * observation only Indication
    * ^requirements = "SHALL contain exactly one [1..1] Indication (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.19:2014-06-09) (CONF:1098-15508)."