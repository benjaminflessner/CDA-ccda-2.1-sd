Profile: NutritionalStatusObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.124
Title: "Nutritional Status Observation"
Description: "This template describes the overall nutritional status of the patient including findings related to nutritional status."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.4.124"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-29841)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-29842)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-29843) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.124"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.124\" (CONF:1098-29844)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-29845)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-29846)."
  * code 1..1
  * code = "75305-3"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"75305-3\" Nutrition status (CONF:1098-29897)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-29898)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-29852)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-29853)."
* effectiveTime 1..1
  * ^requirements = "SHALL contain exactly one [1..1] effectiveTime (CONF:1098-31867)."
* value 1..1
* value from $2.16.840.1.113883.1.11.20.2.7 (preferred)
  * ^requirements = "SHALL contain exactly one [1..1] value, which SHOULD be selected from ValueSet Nutritional Status urn:oid:2.16.840.1.113883.1.11.20.2.7 DYNAMIC (CONF:1098-29854)."
* entryRelationship ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "Observation.typeCode"
  * ^slicing.rules = #open
* entryRelationship contains nutritionAssessment 1..*
* entryRelationship[nutritionAssessment] ^requirements = "SHALL contain at least one [1..*] entryRelationship (CONF:1098-30323) such that it"
  * typeCode 1..1
  * typeCode = #SUBJ
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SUBJ\" Has subject (CONF:1098-30335)."
  * observation 1..1
  * observation only NutritionAssessment
    * ^requirements = "SHALL contain exactly one [1..1] Nutrition Assessment (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.138) (CONF:1098-30336)."