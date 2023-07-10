Profile: HighestPressureUlcerStage
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.77
Title: "Highest Pressure Ulcer Stage"
Description: "This observation contains a description of the wound tissue of the most severe or highest staged pressure ulcer observed on a patient."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.4.77"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:81-14726)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:81-14727)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-14728) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.77"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.77\" (CONF:81-14729)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:81-14730)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-14731)."
  * code 1..1
  * code = "420905001"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"420905001\" Highest Pressure Ulcer Stage (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96 STATIC) (CONF:81-14732)."
* value 1..1
  * ^requirements = "SHALL contain exactly one [1..1] value (CONF:81-14733)."