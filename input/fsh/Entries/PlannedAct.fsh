Profile: PlannedAct
Parent: $Act
Id: 2.16.840.1.113883.10.20.22.4.39
Title: "Planned Act"
Description: """This template represents planned acts that are not classified as an observation or a procedure according to the HL7 RIM. Examples of these acts are a dressing change, the teaching or feeding of a patient or the providing of comfort measures. 
The priority of the activity to the patient and provider is communicated through Priority Preference. The effectiveTime indicates the time when the activity is intended to take place."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.39:2014-06-09"
* ^version = "2014-06-09"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #ACT
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"ACT\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-8538)."
* moodCode 1..1
* moodCode from $2.16.840.1.113883.11.20.9.23 (required)
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Planned moodCode (Act/Encounter/Procedure) urn:oid:2.16.840.1.113883.11.20.9.23 STATIC 2014-09-01 (CONF:1098-8539)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-30430) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.39"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.39\" (CONF:1098-30431)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32552)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-8546)."
* code 1..1
  * obeys 1098-32030
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-31687)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-30432)."
  * code 1..1
  * code = "active"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"active\" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1098-32019)."
* effectiveTime 0..1
  * ^short = "The effectiveTime in a planned act represents the time that the act should occur."
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-30433)."
* performer 0..*
  * ^short = "The clinician who is expected to carry out the act could be identified using act/performer."
  * ^requirements = "MAY contain zero or more [0..*] performer (CONF:1098-30435)."
* author 0..1
* author only AuthorParticipation
  * ^short = "The author in a planned act represents the clinician who is requesting or planning the act."
  * ^requirements = "SHOULD contain zero or one [0..1] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-32020)."
* entryRelationship ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "act"
  * ^slicing.rules = #open
  * ^short = "The following entryRelationship captures any instructions associated with the planned act."
* entryRelationship contains
    priorityPreference 0..* and
    indication 0..* and
    instruction 0..*
* entryRelationship[priorityPreference] ^short = "The following entryRelationship represents the priority that a patient or a provider places on the activity."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-31067) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-31068)."
  * observation 1..1
  * observation only PriorityPreference
    * ^requirements = "SHALL contain exactly one [1..1] Priority Preference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.143) (CONF:1098-31069)."
* entryRelationship[indication] ^short = "The following entryRelationship represents the indication for the act."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-32021) such that it"
  * typeCode 1..1
  * typeCode = #RSON
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"RSON\" Has Reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32022)."
  * observation 1..1
  * observation only Indication
    * ^requirements = "SHALL contain exactly one [1..1] Indication (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.19:2014-06-09) (CONF:1098-32023)."
* entryRelationship[instruction] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-32024) such that it"
  * typeCode 1..1
  * typeCode = #SUBJ
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SUBJ\" Has subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32025)."
  * act 1..1
  * act only Instruction
    * ^requirements = "SHALL contain exactly one [1..1] Instruction (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.20:2014-06-09) (CONF:1098-32026)."

Invariant: 1098-32030
Description: "This code in a Planned Act **SHOULD** be selected from LOINC (CodeSystem: 2.16.840.1.113883.6.1) *OR* SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) (CONF:1098-32030)."
Severity: #warning