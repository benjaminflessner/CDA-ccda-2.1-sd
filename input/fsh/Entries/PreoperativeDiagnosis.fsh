Profile: PreoperativeDiagnosis
Parent: $Act
Id: 2.16.840.1.113883.10.20.22.4.65
Title: "Preoperative Diagnosis"
Description: "This template represents the surgical diagnosis or diagnoses assigned to the patient before the surgical procedure and is the reason for the surgery. The preoperative diagnosis is, in the opinion of the surgeon, the diagnosis that will be confirmed during surgery."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.65:2015-08-01"
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
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"ACT\" (CONF:1198-10090)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" (CONF:1198-10091)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-16770) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.65"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.65\" (CONF:1198-16771)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32540)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-19155)."
  * code 1..1
  * code = "10219-4"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"10219-4\" Preoperative Diagnosis (CONF:1198-19156)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1198-32167)."
* entryRelationship ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.rules = #open
* entryRelationship contains problemObservation 1..*
* entryRelationship[problemObservation] ^requirements = "SHALL contain at least one [1..*] entryRelationship (CONF:1198-10093) such that it"
  * typeCode 1..1
  * typeCode = #SUBJ
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SUBJ\" Has subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1198-10094)."
  * observation 1..1
  * observation only ProblemObservation
    * ^requirements = "SHALL contain exactly one [1..1] Problem Observation (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.4:2015-08-01) (CONF:1198-15605)."