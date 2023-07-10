Profile: ObjectiveSection
Parent: $Section
Id: 2.16.840.1.113883.10.20.21.2.1
Title: "Objective Section"
Description: "The Objective Section contains data about the patient gathered through tests, measures, or observations that produce a quantified or categorized result. It includes important and relevant positive and negative test results, physical findings, review of systems, and other measurements and observations."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.21.2.1"
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
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-7869) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.21.2.1"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.21.2.1\" (CONF:81-10462)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-15389)."
  * code 1..1
  * code = "61149-1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"61149-1\" Objective (CONF:81-15390)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:81-26485)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:81-7871)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:81-7872)."