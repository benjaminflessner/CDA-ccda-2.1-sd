Profile: MedicalGeneralHistorySection
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.39
Title: "Medical (General) History Section"
Description: "The Medical History Section describes all aspects of the medical history of the patient even if not pertinent to the current procedure, and may include chief complaint, past medical history, social history, family history, surgical or procedure history, medication history, and other history information. The history may be limited to information pertinent to the current procedure or may be more comprehensive. The history may be reported as a collection of random clinical statements or it may be reported categorically. Categorical report formats may be divided into multiple subsections including Past Medical History, Social History."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.2.39"
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
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-8160) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.39"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.39\" (CONF:81-10403)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-15379)."
  * code 1..1
  * code = "11329-0"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"11329-0\" Medical (General) History (CONF:81-15380)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:81-26484)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:81-8162)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:81-8163)."