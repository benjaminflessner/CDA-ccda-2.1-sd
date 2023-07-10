Profile: HospitalConsultationsSection
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.42
Title: "Hospital Consultations Section"
Description: "The Hospital Consultations Section records consultations that occurred during the admission."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.2.42"
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
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-9915) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.42"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.42\" (CONF:81-10393)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-15485)."
  * code 1..1
  * code = "18841-7"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"18841-7\" Hospital Consultations Section (CONF:81-15486)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:81-26479)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:81-9917)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:81-9918)."