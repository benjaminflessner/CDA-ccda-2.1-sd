Profile: ImmunizationsSectionEntriesOptional
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.2
Title: "Immunizations Section (entries optional)"
Description: "The Immunizations Section defines a patient's current immunization status and pertinent immunization history. The primary use case for the Immunization Section is to enable communication of a patient's immunization status. The section should include current immunization status, and may contain the entire immunization history that is relevant to the period of time being summarized."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.2:2015-08-01"
* ^version = "2015-08-01"
* ^publisher = "WaveOne Associates"
* ^contact.name = "Brett Marquard"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "4135496886"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "brett@waveoneassociates.com"
* ^contact.telecom[=].use = #work
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-7965) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.2"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.2\" (CONF:1198-10399)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32529)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-15367)."
  * code 1..1
  * code = "11369-6"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"11369-6\" Immunizations (CONF:1198-15368)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1198-32146)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1198-7967)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1198-7968)."
* entry ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "substanceAdministration"
  * ^slicing.rules = #open
* entry contains activity 0..*
* entry[activity] ^requirements = "SHOULD contain zero or more [0..*] entry (CONF:1198-7969) such that it"
  * substanceAdministration 1..1
  * substanceAdministration only ImmunizationActivity
    * ^requirements = "SHALL contain exactly one [1..1] Immunization Activity (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.52:2015-08-01) (CONF:1198-15494)."