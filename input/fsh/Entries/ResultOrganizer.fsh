Profile: ResultOrganizer
Parent: $Organizer
Id: 2.16.840.1.113883.10.20.22.4.1
Title: "Result Organizer"
Description: """This template provides a mechanism for grouping result observations. It contains information applicable to all of the contained result observations. The Result Organizer code categorizes the contained results into one of several commonly accepted values (e.g., "Hematology", "Chemistry", "Nuclear Medicine"). 

If any Result Observation within the organizer has a statusCode of "active", the Result Organizer must also have a statusCode of "active"."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.1:2015-08-01"
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
  * ^requirements = "SHALL contain exactly one [1..1] @classCode (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1198-7121)."
* moodCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1198-7122)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-7126) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.1"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.1\" (CONF:1198-9134)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32588)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1198-7127)."
* code 1..1
  * obeys 1198-19218 and 1198-19219
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-7128)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1198-7123)."
  * code 1..1
  * code from $2.16.840.1.113883.11.20.9.39 (required)
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Result Status urn:oid:2.16.840.1.113883.11.20.9.39 STATIC (CONF:1198-14848)."
* effectiveTime 0..1
  * ^label = "The effectiveTime is an interval that spans the effectiveTimes of the contained result observations. Because all contained result observations have a required time stamp, it is not required that this effectiveTime be populated."
  * ^short = "The effectiveTime is an interval that spans the effectiveTimes of the contained result observations. Because all contained result observations have a required time stamp, it is not required that this effectiveTime be populated."
  * ^requirements = "MAY contain zero or one [0..1] effectiveTime (CONF:1198-31865)."
  * low 1..1
    * ^requirements = "The effectiveTime, if present, SHALL contain exactly one [1..1] low (CONF:1198-32488)."
  * high 1..1
    * ^requirements = "The effectiveTime, if present, SHALL contain exactly one [1..1] high (CONF:1198-32489)."
* author 0..*
* author only AuthorParticipation
  * ^requirements = "SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1198-31149)."
* component ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.rules = #open
* component contains result 1..*
* component[result] ^requirements = "SHALL contain at least one [1..*] component (CONF:1198-7124) such that it"
  * observation 1..1
  * observation only ResultObservation
    * ^requirements = "SHALL contain exactly one [1..1] Result Observation (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.2:2015-08-01) (CONF:1198-14850)."

Invariant: 1198-19218
Description: "**SHOULD** be selected from LOINC (codeSystem 2.16.840.1.113883.6.1) **OR** SNOMED CT (codeSystem 2.16.840.1.113883.6.96), and **MAY** be selected from CPT-4 (codeSystem 2.16.840.1.113883.6.12) (CONF:1198-19218)."
Severity: #warning

Invariant: 1198-19219
Description: "Laboratory results **SHOULD** be from LOINC (CodeSystem: 2.16.840.1.113883.6.1) or other constrained terminology named by the US Department of Health and Human Services Office of National Coordinator or other federal agency (CONF:1198-19219)."
Severity: #warning