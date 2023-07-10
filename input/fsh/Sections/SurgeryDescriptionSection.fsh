Profile: SurgeryDescriptionSection
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.26
Title: "Surgery Description Section (DEPRECATED)"
Description: """THIS TEMPLATE HAS BEEN DEPRECATED IN C-CDA R2 AND MAY BE DELETED FROM A FUTURE RELEASE OF THIS IMPLEMENTATION GUIDE. USE OF THIS TEMPLATE IS NOT RECOMMENDED.

*Reason for deprecation*: This template has been replaced by the Procedure Description Section (2.16.840.1.113883.10.20.22.2.27)."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.26:2014-06-09"
* ^version = "2014-06-09"
* ^publisher = "Lantana Consulting Group"
* ^contact.name = "Sarah Gaunt"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "+6 141-029-2506"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "sarah.gaunt@lantanagroup.com"
* ^contact.telecom[=].use = #work
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-8022) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.26"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.26\" (CONF:1098-10450)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32893)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-15439)."
  * code 1..1
  * code = "29554-3"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"29554-3\" Surgery Description (CONF:1098-15440)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-26497)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1098-8024)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1098-8025)."