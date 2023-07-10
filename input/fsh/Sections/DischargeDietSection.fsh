Profile: DischargeDietSection
Parent: $Section
Id: 1.3.6.1.4.1.19376.1.5.3.1.3.33
Title: "Discharge Diet Section (DEPRECATED)"
Description: """This section records a narrative description of the expectations for diet and nutrition, including nutrition prescription, proposals, goals, and order requests for monitoring, tracking, or improving the nutritional status of the patient, used in a discharge from a facility such as an emergency department, hospital, or nursing home.

THIS TEMPLATE HAS BEEN DEPRECATED IN C-CDA R2 AND MAY BE DELETED FROM A FUTURE RELEASE OF THIS IMPLEMENTATION GUIDE. USE OF THIS TEMPLATE IS NOT RECOMMENDED.

*Reason for deprecation*: This template has been replaced by the Nutrition Section (2.16.840.1.113883.10.20.22.2.57)."""
* ^identifier.value = "urn:hl7ii:1.3.6.1.4.1.19376.1.5.3.1.3.33:2014-06-09"
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
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-7975) such that it"
  * root 1..1
  * root = "1.3.6.1.4.1.19376.1.5.3.1.3.33"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"1.3.6.1.4.1.19376.1.5.3.1.3.33\" (CONF:1098-10455)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32593)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-15459)."
  * code 1..1
  * code = "42344-2"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"42344-2\" Discharge Diet (CONF:1098-15460)."
  * codeSystem 1..1
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem (CONF:1098-31140)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1098-7977)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1098-7978)."