Profile: PlannedProcedure
Parent: $Procedure
Id: 2.16.840.1.113883.10.20.22.4.41
Title: "Planned Procedure"
Description: "This template represents planned alterations of the patient's physical condition. Examples of such procedures are tracheostomy, knee replacement, and craniectomy. The priority of the procedure to the patient and provider is communicated through Priority Preference. The effectiveTime indicates the time when the procedure is intended to take place and authorTime indicates when the documentation of the plan occurred. The Planned Procedure Template may also indicate the potential insurance coverage for the procedure."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.41:2014-06-09"
* ^version = "2014-06-09"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #PROC
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"PROC\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-8568)."
* moodCode 1..1
* moodCode from $2.16.840.1.113883.11.20.9.23 (required)
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Planned moodCode (Act/Encounter/Procedure) urn:oid:2.16.840.1.113883.11.20.9.23 STATIC 2011-09-30 (CONF:1098-8569)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-30444) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.41"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.41\" (CONF:1098-30445)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32554)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-8571)."
* code 1..1
  * obeys 1098-31977
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-31976)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-30446)."
  * code 1..1
  * code = "active"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"active\" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1098-31978)."
* effectiveTime 0..1
  * ^short = "The effectiveTime in a planned procedure represents the time that the procedure should occur."
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-30447)."
* methodCode 0..*
  * ^short = "In a planned procedure the provider may suggest that a procedure should be performed using a particular method.\n\nMethodCode *SHALL NOT* conflict with the method inherent in Procedure / code."
  * ^requirements = "MAY contain zero or more [0..*] methodCode (CONF:1098-31980)."
* targetSiteCode 0..*
* targetSiteCode from $2.16.840.1.113883.3.88.12.3221.8.9 (required)
  * ^short = "The targetSiteCode is used to identify the part of the body of concern for the planned procedure."
  * ^requirements = "MAY contain zero or more [0..*] targetSiteCode, which SHALL be selected from ValueSet Body Site Value Set urn:oid:2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:1098-31981)."
* performer 0..*
  * ^short = "The clinician who is expected to perform the procedure could be identified using procedure/performer."
  * ^requirements = "MAY contain zero or more [0..*] performer (CONF:1098-30449)."
* author 0..1
* author only AuthorParticipation
  * ^short = "The author in a planned procedure represents the clinician who is requesting or planning the procedure."
  * ^requirements = "SHOULD contain zero or one [0..1] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31979)."
* entryRelationship ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "act"
  * ^slicing.rules = #open
  * ^short = "The following entryRelationship represents the insurance coverage the patient may have for the procedure."
* entryRelationship contains
    priorityPreference 0..* and
    indication 0..* and
    instruction 0..* and
    plannedCoverage 0..*
* entryRelationship[priorityPreference] ^short = "The following entryRelationship represents the priority that a patient or a provider places on the procedure."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-31079) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-31080)."
  * observation 1..1
  * observation only PriorityPreference
    * ^requirements = "SHALL contain exactly one [1..1] Priority Preference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.143) (CONF:1098-31081)."
* entryRelationship[indication] ^short = "The following entryRelationship represents the indication for the procedure."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-31982) such that it"
  * typeCode 1..1
  * typeCode = #RSON
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"RSON\" Has Reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-31983)."
  * observation 1..1
  * observation only Indication
    * ^requirements = "SHALL contain exactly one [1..1] Indication (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.19:2014-06-09) (CONF:1098-31984)."
* entryRelationship[instruction] ^short = "The following entryRelationship captures any instructions associated with the planned procedure."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-31985) such that it"
  * typeCode 1..1
  * typeCode = #SUBJ
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SUBJ\" Has Subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-31986)."
  * inversionInd 1..1
  * inversionInd = true
    * ^requirements = "SHALL contain exactly one [1..1] @inversionInd=\"true\" True (CONF:1098-31987)."
  * act 1..1
  * act only Instruction
    * ^requirements = "SHALL contain exactly one [1..1] Instruction (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.20:2014-06-09) (CONF:1098-31989)."
* entryRelationship[plannedCoverage] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-31990) such that it"
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" Has component (CONF:1098-31991)."
  * act 1..1
  * act only PlannedCoverage
    * ^requirements = "SHALL contain exactly one [1..1] Planned Coverage (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.129) (CONF:1098-31992)."

Invariant: 1098-31977
Description: "The procedure/code in a planned procedure **SHOULD** be selected from LOINC (codeSystem 2.16.840.1.113883.6.1) *OR* SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96), and **MAY** be selected from CPT-4 (CodeSystem: 2.16.840.1.113883.6.12) **OR** ICD10 PCS (CodeSystem: 2.16.840.1.113883.6.4) (CONF:1098-31977)."
Severity: #warning