Profile: CaregiverCharacteristics
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.72
Title: "Caregiver Characteristics"
Description: """This clinical statement represents a caregiver's willingness to provide care and the abilities of that caregiver to provide assistance to a patient in relation to a specific need.
"""
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.4.72"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:81-14219)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:81-14220)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-14221) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.72"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.72\" (CONF:81-14222)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:81-14223)."
* code 1..1
  * obeys 81-26513
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-14230)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:81-14233)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:81-19090)."
* value 1..1
* value only $CD
  * obeys 81-14600
  * ^requirements = "SHALL contain exactly one [1..1] value with @xsi:type=\"CD\" (CONF:81-14599)."
* participant 1..*
  * ^requirements = "SHALL contain at least one [1..*] participant (CONF:81-14227)."
  * typeCode 1..1
  * typeCode = #IND
    * ^requirements = "Such participants SHALL contain exactly one [1..1] @typeCode=\"IND\" (CONF:81-26451)."
  * time 0..1
    * ^requirements = "Such participants MAY contain zero or one [0..1] time (CONF:81-14830)."
    * low 1..1
      * ^requirements = "The time, if present, SHALL contain exactly one [1..1] low (CONF:81-14831)."
    * high 0..1
      * ^requirements = "The time, if present, MAY contain zero or one [0..1] high (CONF:81-14832)."
  * participantRole 1..1
    * ^requirements = "Such participants SHALL contain exactly one [1..1] participantRole (CONF:81-14228)."
    * classCode 1..1
    * classCode = #CAREGIVER
      * ^requirements = "This participantRole SHALL contain exactly one [1..1] @classCode=\"CAREGIVER\" (CONF:81-14229)."

Invariant: 81-26513
Description: "This code MAY be drawn from LOINC (CodeSystem: LOINC 2.16.840.1.113883.6.1)  or MAY be bound to ASSERTION (CodeSystem: ActCode 2.16.840.1.113883.5.4 STATIC) (CONF:81-26513)."
Severity: #warning

Invariant: 81-14600
Description: "The code **SHALL** be selected from LOINC (codeSystem: 2.16.840.1.113883.6.1) or SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) (CONF:81-14600)."
Severity: #error