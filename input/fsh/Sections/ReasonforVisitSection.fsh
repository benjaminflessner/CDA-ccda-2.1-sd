Profile: ReasonforVisitSection
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.12
Title: "Reason for Visit Section"
Description: "This section records the patient's reason for the patient's visit (as documented by the provider). Local policy determines whether Reason for Visit and Chief Complaint are in separate or combined sections."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.2.12"
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
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-7836) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.12"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.12\" (CONF:81-10448)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-15429)."
  * code 1..1
  * code = "29299-5"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"29299-5\" Reason for Visit (CONF:81-15430)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:81-26494)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:81-7838)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:81-7839)."