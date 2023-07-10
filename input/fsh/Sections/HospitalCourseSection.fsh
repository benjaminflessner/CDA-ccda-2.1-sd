Profile: HospitalCourseSection
Parent: $Section
Id: 1.3.6.1.4.1.19376.1.5.3.1.3.5
Title: "Hospital Course Section"
Description: "The Hospital Course Section describes the sequence of events from admission to discharge in a hospital facility."
* ^identifier.value = "urn:oid:1.3.6.1.4.1.19376.1.5.3.1.3.5"
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
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-7852) such that it"
  * root 1..1
  * root = "1.3.6.1.4.1.19376.1.5.3.1.3.5"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"1.3.6.1.4.1.19376.1.5.3.1.3.5\" (CONF:81-10459)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-15487)."
  * code 1..1
  * code = "8648-8"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"8648-8\" Hospital Course (CONF:81-15488)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:81-26480)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:81-7854)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:81-7855)."