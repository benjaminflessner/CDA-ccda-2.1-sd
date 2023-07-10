Profile: ImplantsSection
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.33
Title: "Implants Section (DEPRECATED)"
Description: """THIS TEMPLATE HAS BEEN DEPRECATED IN C-CDA R2 AND MAY BE DELETED FROM A FUTURE RELEASE OF THIS IMPLEMENTATION GUIDE. USE OF THIS TEMPLATE IS NOT RECOMMENDED.

*Reason for Deprecation*: Replaced by the Procedure Implants Section (2.16.840.1.113883.10.20.22.2.40)"""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.33:2014-06-09"
* ^version = "2014-06-09"
* ^publisher = "Lantana Consulting Group"
* ^contact.name = "Eric Parapini"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "+13604405780"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "eric.parapini@lantanagroup.com"
* ^contact.telecom[=].use = #work
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-8042) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.33"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.33\" (CONF:1098-32608)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32609)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-15371)."
  * code 1..1
  * code = "55122-6"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"55122-6\" Implants (CONF:1098-15372)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-26471)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1098-8044)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1098-8045)."