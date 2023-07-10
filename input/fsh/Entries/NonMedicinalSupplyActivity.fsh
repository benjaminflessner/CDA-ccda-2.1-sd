Profile: NonMedicinalSupplyActivity
Parent: CDAR2Supply
Id: 2.16.840.1.113883.10.20.22.4.50
Title: "Non-Medicinal Supply Activity"
Description: "This template represents equipment supplied to the patient (e.g., pumps, inhalers, wheelchairs). Devices applied to, or placed in, the patient are represented with the Product Instance entry contained within a Procedure Activity Procedure (V2) (identifier: urn:hl7ii: 2.16.840.1.113883.10.20.22.4.14)"
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.50:2014-06-09"
* ^version = "2014-06-09"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #SPLY
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"SPLY\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-8745)."
* moodCode 1..1
* moodCode from $2.16.840.1.113883.11.20.9.18 (required)
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet MoodCodeEvnInt urn:oid:2.16.840.1.113883.11.20.9.18 STATIC 2011-04-03 (CONF:1098-8746)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-8747) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.50"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.50\" (CONF:1098-10509)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32514)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-8748)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-8749)."
  * code 1..1
  * code from $2.16.840.1.113883.1.11.15933 (required)
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ActStatus urn:oid:2.16.840.1.113883.1.11.15933 DYNAMIC (CONF:1098-32363)."
* effectiveTime 0..1
* effectiveTime only $EIVL-TS
  * obeys 1098-16867
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-15498)."
* quantity 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] quantity (CONF:1098-8751)."
* participant ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "typeCode"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "participantRole"
  * ^slicing.rules = #open
* participant contains participant1 0..1
* participant[participant1] ^requirements = "MAY contain zero or one [0..1] participant (CONF:1098-8752) such that it"
  * typeCode 1..1
  * typeCode = #PRD
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"PRD\" Product (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:1098-8754)."
  * participantRole 1..1
  * participantRole only ProductInstance
    * ^requirements = "SHALL contain exactly one [1..1] Product Instance (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.37) (CONF:1098-15900)."
* entryRelationship ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "act"
  * ^slicing.rules = #open
* entryRelationship contains instruction 0..1
* entryRelationship[instruction] ^requirements = "MAY contain zero or one [0..1] entryRelationship (CONF:1098-30277) such that it"
  * typeCode 1..1
  * typeCode = #SUBJ
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SUBJ\" (CONF:1098-30278)."
  * inversionInd 1..1
  * inversionInd = true
    * ^requirements = "SHALL contain exactly one [1..1] @inversionInd=\"true\" (CONF:1098-30279)."
  * act 1..1
  * act only Instruction
    * ^requirements = "SHALL contain exactly one [1..1] Instruction (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.20:2014-06-09) (CONF:1098-31393)."

Invariant: 1098-16867
Description: "The effectiveTime, if present, **SHOULD** contain zero or one [0..1] *high* (CONF:1098-16867)."
Severity: #warning