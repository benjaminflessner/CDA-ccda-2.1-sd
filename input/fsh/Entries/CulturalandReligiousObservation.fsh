Profile: CulturalandReligiousObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.111
Title: "Cultural and Religious Observation"
Description: "This template represents a patient's spiritual, religious, and cultural belief practices, such as a kosher diet or fasting ritual. religiousAffiliationCode in the document header captures only the patient's religious affiliation."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.4.111"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-27924)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-27925)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-27926) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.111"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.111\" (CONF:1098-27927)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-27928)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-27929)."
  * code 1..1
  * code = "75281-6"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"75281-6\" Personal belief (CONF:1098-27930)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-27931)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-27936)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-27937)."
* value 1..1
* value only $CD
  * obeys 1098-32487
  * ^requirements = "SHALL contain exactly one [1..1] value (CONF:1098-28442)."

Invariant: 1098-32487
Description: "If xsi:type is CD, **SHALL** contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.96\" (CodeSystem: SNOMED-CT  urn:oid:2.16.840.1.113883.6.96 STATIC) (CONF:1098-32487)."
Severity: #error