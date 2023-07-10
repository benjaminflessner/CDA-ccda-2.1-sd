Profile: AssessmentSection
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.8
Title: "Assessment Section"
Description: "The Assessment Section (also referred to as \"impression\" or \"diagnoses\" outside of the context of CDA) represents the clinician's conclusions and working assumptions that will guide treatment of the patient. The assessment may be a list of specific disease entities or a narrative block."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.2.8"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-7711) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.8"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.8\" (CONF:81-10382)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-14757)."
  * code 1..1
  * code = "51848-0"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"51848-0\" Assessments (CONF:81-14758)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:81-26472)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:81-16774)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:81-7713)."