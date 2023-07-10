Profile: MentalStatusOrganizer
Parent: $Organizer
Id: 2.16.840.1.113883.10.20.22.4.75
Title: "Mental Status Organizer"
Description: "The Mental Status Organizer template may be used to group related Mental Status Observations (e.g., results of mental tests) and associated Assessment Scale Observations into subcategories and/or groupings by time. Subcategories can be things such as Mood and Affect, Behavior, Thought Process, Perception, Cognition, etc."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.75:2015-08-01"
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
* classCode = #CLUSTER
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"CLUSTER\" Cluster (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1198-14369)."
* moodCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1198-14371)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-14375) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.75"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.75\" (CONF:1198-14376)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32566)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1198-14377)."
* code 1..1
  * ^short = "The code selected indicates the category that groups the contained mental status observations (e.g., communication, learning and applying knowledge)."
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-14378)."
  * code 1..1
    * obeys 1198-14698
    * ^requirements = "This code SHALL contain exactly one [1..1] @code (CONF:1198-14697)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1198-14372)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1198-19093)."
* effectiveTime 0..1
  * obeys 1198-32426
  * ^short = "The effectiveTime is an interval that spans the effectiveTimes of the contained mental status observations. Because all contained mental status observations have a required time stamp, it is not required that this effectiveTime be populated."
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:1198-32424)."
* component ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.rules = #open
* component contains mentalStatus 1..*
* component[mentalStatus] ^requirements = "SHALL contain at least one [1..*] component (CONF:1198-14373) such that it"
  * observation 1..1
  * observation only MentalStatusObservation
    * ^requirements = "SHALL contain exactly one [1..1] Mental Status Observation (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.74:2015-08-01) (CONF:1198-14381)."

Invariant: 1198-14698
Description: "**SHOULD** be selected from ICF (codeSystem 2.16.840.1.113883.6.254) *OR* LOINC (codeSystem 2.16.840.1.113883.6.96) (CONF:1198-14698)."
Severity: #warning

Invariant: 1198-32426
Description: "The Organizer **SHALL** have at least one of *code* or *effectiveTime* (CONF:1198-32426)."
Severity: #error