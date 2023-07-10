Profile: DischargeMedication
Parent: $Act
Id: 2.16.840.1.113883.10.20.22.4.35
Title: "Discharge Medication"
Description: "This template represents medications that the patient is intended to take (or stop) after discharge."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.35:2016-03-01"
* ^version = "2016-03-01"
* ^publisher = "Lantana Consulting Group"
* ^contact.name = "Sarah Gaunt"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "+6 141-029-2506"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "sarah.gaunt@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #ACT
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"ACT\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1198-7689)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1198-7690)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-16760) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.35"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.35\" (CONF:1198-16761)."
  * extension 1..1
  * extension = "2016-03-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2016-03-01\" (CONF:1198-32513)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-7691)."
  * code 1..1
  * code = "10183-2"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"10183-2\" Hospital discharge medication (CONF:1198-19161)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1198-32159)."
  * translation 1..1
    * ^requirements = "This code SHALL contain exactly one [1..1] translation (CONF:1198-32952)."
    * code 1..1
    * code = "75311-1"
      * ^requirements = "This translation SHALL contain exactly one [1..1] @code=\"75311-1\" Discharge Medication (CONF:1198-32953)."
    * codeSystem 1..1
    * codeSystem = "2.16.840.1.113883.6.1"
      * ^requirements = "This translation SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1198-32954)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1198-32779)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1198-32780)."
* entryRelationship ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "substanceAdministration"
  * ^slicing.rules = #open
* entryRelationship contains medicationActivity 1..*
* entryRelationship[medicationActivity] ^requirements = "SHALL contain at least one [1..*] entryRelationship (CONF:1198-7692) such that it"
  * typeCode 1..1
  * typeCode = #SUBJ
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SUBJ\" Has Subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1198-7693)."
  * substanceAdministration 1..1
  * substanceAdministration only MedicationActivity
    * ^requirements = "SHALL contain exactly one [1..1] Medication Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.16:2014-06-09) (CONF:1198-15525)."