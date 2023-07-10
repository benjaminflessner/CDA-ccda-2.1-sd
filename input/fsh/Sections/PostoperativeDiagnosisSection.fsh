Profile: PostoperativeDiagnosisSection
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.35
Title: "Postoperative Diagnosis Section"
Description: "The Postoperative Diagnosis Section records the diagnosis or diagnoses discovered or confirmed during the surgery. Often it is the same as the preoperative diagnosis."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.2.35"
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
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-8101) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.35"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.35\" (CONF:81-10437)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-15401)."
  * code 1..1
  * code = "10218-6"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"10218-6\" Postoperative Diagnosis (CONF:81-15402)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:81-26488)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:81-8103)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:81-8104)."