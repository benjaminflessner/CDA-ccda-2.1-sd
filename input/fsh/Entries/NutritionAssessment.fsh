Profile: NutritionAssessment
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.138
Title: "Nutrition Assessment"
Description: "This template represents the patient's nutrition abilities and habits including intake, diet requirements or diet followed."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.4.138"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-32914)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-32915)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-32916) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.138"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.138\" (CONF:1098-32917)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-32918)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-32919)."
  * code 1..1
  * code = "75303-8"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"75303-8\" Nutrition assessment (CONF:1098-32926)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-32927)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-32920)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-32921)."
* effectiveTime 1..1
  * ^requirements = "SHALL contain exactly one [1..1] effectiveTime (CONF:1098-32923)."
* value 1..1
  * obeys 1098-32925
  * ^requirements = "SHALL contain exactly one [1..1] value (CONF:1098-32922)."
* author 0..*
* author only AuthorParticipation
  * ^requirements = "SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-32924)."

Invariant: 1098-32925
Description: "If xsi:type=“CD”, **SHOULD** contain a code from SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) (CONF:1098-32925)."
Severity: #warning