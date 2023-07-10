Profile: MedicationsSectionEntriesOptional
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.1
Title: "Medications Section (entries optional)"
Description: """The Medications Section contains a patient's current medications and pertinent medication history. At a minimum, the currently active medications are listed. An entire medication history is an option. The section can describe a patient's prescription and dispense history and information about intended drug monitoring. 
"""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.1:2014-06-09"
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
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-7791) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.1"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.1\" (CONF:1098-10432)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32500)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-15385)."
  * code 1..1
  * code = "10160-0"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"10160-0\" History of medication use (CONF:1098-15386)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-30824)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1098-7793)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1098-7794)."
* entry ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "substanceAdministration"
  * ^slicing.rules = #open
* entry contains medActivity 0..*
* entry[medActivity] ^requirements = "SHOULD contain zero or more [0..*] entry (CONF:1098-7795) such that it"
  * substanceAdministration 1..1
  * substanceAdministration only MedicationActivity
    * ^requirements = "SHALL contain exactly one [1..1] Medication Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.16:2014-06-09) (CONF:1098-10076)."