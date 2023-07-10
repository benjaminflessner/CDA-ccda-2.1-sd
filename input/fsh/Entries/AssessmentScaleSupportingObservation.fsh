Profile: AssessmentScaleSupportingObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.86
Title: "Assessment Scale Supporting Observation"
Description: "An Assessment Scale Supporting Observation represents the components of a scale used in an Assessment Scale Observation. The individual parts that make up the component may be a group of cognitive or functional status observations."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.4.86"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:81-16715)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:81-16716)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-16722) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.86"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.86\" (CONF:81-16723)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:81-16724)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-19178)."
  * code 1..1
    * obeys 81-19180
    * ^requirements = "This code SHALL contain exactly one [1..1] @code (CONF:81-19179)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:81-16720)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:81-19089)."
* value 1..*
  * obeys 81-16755
  * ^requirements = "SHALL contain at least one [1..*] value (CONF:81-16754)."

Invariant: 81-19180
Description: "Such that the @code SHALL be from LOINC (CodeSystem: 2.16.840.1.113883.6.1) or SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) and represents components of the scale (CONF:81-19180)."
Severity: #error

Invariant: 81-16755
Description: "If xsi:type=\"CD\", MAY have a translation code to further specify the source if the instrument has an applicable code system and value set for the integer (CONF:14639) (CONF:81-16755)."
Severity: #warning