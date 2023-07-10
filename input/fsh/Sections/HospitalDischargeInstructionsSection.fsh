Profile: HospitalDischargeInstructionsSection
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.41
Title: "Hospital Discharge Instructions Section"
Description: "The Hospital Discharge Instructions Section records instructions at discharge."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.2.41"
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
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-9919) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.41"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.41\" (CONF:81-10395)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-15357)."
  * code 1..1
  * code = "8653-8"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"8653-8\" Hospital Discharge Instructions (CONF:81-15358)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:81-26481)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:81-9921)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:81-9922)."