Profile: NutritionSection
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.57
Title: "Nutrition Section"
Description: "The Nutrition Section represents diet and nutrition information including special diet requirements and restrictions (e.g., texture modified diet, liquids only, enteral feeding). It also represents the overall nutritional status of the patient and nutrition assessment findings."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.2.57"
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
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-30477) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.57"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.57\" (CONF:1098-30478)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-30318)."
  * code 1..1
  * code = "61144-2"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"61144-2\"  Diet and nutrition  (CONF:1098-30319)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-30320)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1098-31042)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1098-31043)."
* entry ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "observation"
  * ^slicing.rules = #open
* entry contains nutritionalStatus 0..*
* entry[nutritionalStatus] ^requirements = "SHOULD contain zero or more [0..*] entry (CONF:1098-30321) such that it"
  * observation 1..1
  * observation only NutritionalStatusObservation
    * ^requirements = "SHALL contain exactly one [1..1] Nutritional Status Observation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.124) (CONF:1098-30322)."