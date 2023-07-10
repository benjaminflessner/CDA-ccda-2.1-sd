Profile: GeneralStatusSection
Parent: $Section
Id: 2.16.840.1.113883.10.20.2.5
Title: "General Status Section"
Description: "The General Status section describes general observations and readily observable attributes of the patient, including affect and demeanor, apparent age compared to actual age, gender, ethnicity, nutritional status based on appearance, body build and habitus (e.g., muscular, cachectic, obese), developmental or other deformities, gait and mobility, personal hygiene, evidence of distress, and voice quality and speech."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.2.5"
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
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-7985) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.2.5"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.2.5\" (CONF:81-10457)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-15472)."
  * code 1..1
  * code = "10210-3"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"10210-3\" General Status (CONF:81-15473)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:81-26477)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:81-7987)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:81-7988)."