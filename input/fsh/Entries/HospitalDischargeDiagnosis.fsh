Profile: HospitalDischargeDiagnosis
Parent: $Act
Id: 2.16.840.1.113883.10.20.22.4.33
Title: "Hospital Discharge Diagnosis"
Description: "This template represents problems or diagnoses present at the time of discharge which occurred during the hospitalization or need to be monitored after hospitalization. It requires at least one Problem Observation entry."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.33:2015-08-01"
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
* classCode = #ACT
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"ACT\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1198-7663)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1198-7664)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-16764) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.33"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.33\" (CONF:1198-16765)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32534)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-19147)."
  * code 1..1
  * code = "11535-2"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"11535-2\" Hospital discharge diagnosis (CONF:1198-19148)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1198-32163)."
* entryRelationship ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.rules = #open
* entryRelationship contains problemObservation 1..*
* entryRelationship[problemObservation] ^requirements = "SHALL contain at least one [1..*] entryRelationship (CONF:1198-7666) such that it"
  * typeCode 1..1
  * typeCode = #SUBJ
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SUBJ\" Has Subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1198-7667)."
  * observation 1..1
  * observation only ProblemObservation
    * ^requirements = "SHALL contain exactly one [1..1] Problem Observation (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.4:2015-08-01) (CONF:1198-15536)."