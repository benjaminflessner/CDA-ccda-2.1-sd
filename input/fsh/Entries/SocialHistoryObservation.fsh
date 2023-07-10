Profile: SocialHistoryObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.38
Title: "Social History Observation"
Description: "This template represents a patient's occupations, lifestyle, and environmental health risk factors. Demographic data (e.g., marital status, race, ethnicity, religious affiliation) are captured in the header. Though tobacco use and exposure may be represented with a Social History Observation, it is recommended to use the Current Smoking Status template or the Tobacco Use template instead, to represent smoking or tobacco habits."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.38:2015-08-01"
* ^version = "2015-08-01"
* ^publisher = "WaveOne Associates"
* ^contact.name = "Brett Marquard"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "4135496886"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "brett@waveoneassociates.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1198-8548)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1198-8549)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-8550) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.38"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.38\" (CONF:1198-10526)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32495)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1198-8551)."
* code 1..1
* code from $2.16.840.1.113883.3.88.12.80.60 (preferred)
  * obeys 1198-32951
  * ^requirements = "SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Social History Type urn:oid:2.16.840.1.113883.3.88.12.80.60 DYNAMIC (CONF:1198-8558)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1198-8553)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1198-19117)."
* effectiveTime 1..1
  * ^requirements = "SHALL contain exactly one [1..1] effectiveTime (CONF:1198-31868)."
* value 0..1
  * obeys 1198-8555
  * ^requirements = "SHOULD contain zero or one [0..1] value (CONF:1198-8559)."
* author 0..*
* author only AuthorParticipation
  * ^requirements = "SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1198-31869)."

Invariant: 1198-32951
Description: "If @codeSystem is not LOINC, then this code **SHALL** contain at least one [1..*] translation, which **SHOULD** be selected from CodeSystem LOINC (urn:oid:2.16.840.1.113883.6.1) (CONF:1198-32951)."
Severity: #error

Invariant: 1198-8555
Description: "If Observation/value is a physical quantity (xsi:type=\"PQ\"), the unit of measure **SHALL** be selected from ValueSet UnitsOfMeasureCaseSensitive (2.16.840.1.113883.1.11.12839) *DYNAMIC* (CONF:1198-8555)."
Severity: #error