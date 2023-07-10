Profile: ChiefComplaintandReasonforVisitSection
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.13
Title: "Chief Complaint and Reason for Visit Section"
Description: "This section records the patient's chief complaint (the patient's own description) and/or the reason for the patient's visit (the provider's description of the reason for visit). Local policy determines whether the information is divided into two sections or recorded in one section serving both purposes."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.2.13"
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
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-7840) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.13"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.13\" (CONF:81-10383)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-15449)."
  * code 1..1
  * code = "46239-0"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"46239-0\" Chief Complaint and Reason for Visit (CONF:81-15450)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:81-26473)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:81-7842)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:81-7843)."