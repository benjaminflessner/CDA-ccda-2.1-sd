Profile: PlannedSupply
Parent: CDAR2Supply
Id: 2.16.840.1.113883.10.20.22.4.43
Title: "Planned Supply"
Description: """This template represents both medicinal and non-medicinal supplies ordered, requested, or intended for the patient (e.g., medication prescription, order for wheelchair). The importance of the supply order or request to the patient and provider may be indicated in the Priority Preference. 
The effective time indicates the time when the supply is intended to take place and author time indicates when the documentation of the plan occurred. The Planned Supply template may also indicate the potential insurance coverage for the procedure. 
Depending on the type of supply, the product or participant will be either a Medication Information product (medication), an Immunization Medication Information product (immunization), or a Product Instance participant (device/equipment)."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.43:2014-06-09"
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
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"SPLY\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-8577)."
* moodCode 1..1
* moodCode from $2.16.840.1.113883.11.20.9.24 (required)
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Planned moodCode (SubstanceAdministration/Supply) urn:oid:2.16.840.1.113883.11.20.9.24 STATIC 2011-09-30 (CONF:1098-8578)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-30463) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.43"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.43\" (CONF:1098-30464)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32556)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-8580)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-30458)."
  * code 1..1
  * code = "active"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"active\" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1098-32047)."
* effectiveTime 0..1
  * ^short = "The effectiveTime in a planned supply represents the time that the supply should occur."
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-30459)."
* repeatNumber 0..1
  * ^short = "In a Planned Supply, repeatNumber indicates the number of times the supply event can occur. For example, if a medication is filled at a pharmacy and the prescription may be refilled 3 more times, the supply RepeatNumber equals 4."
  * ^requirements = "MAY contain zero or one [0..1] repeatNumber (CONF:1098-32063)."
* quantity 0..1
  * ^requirements = "MAY contain zero or one [0..1] quantity (CONF:1098-32064)."
* product 0..1
  * obeys 1098-32092
  * ^short = "A product is recommended or even required under certain implementations. This IG makes product as recommended (SHOULD)."
  * ^requirements = "MAY contain zero or one [0..1] product (CONF:1098-32049 and CONF:1098-32051 and CONF:1098-32325)."
  * manufacturedProduct 1..1
  * manufacturedProduct only MedicationInformation or ImmunizationMedicationInformation
    * ^requirements = "The product, if present, SHALL contain exactly one [1..1] Medication Information (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.23:2014-06-09) (CONF:1098-32050)."
* performer 0..*
  * ^short = "The clinician who is expected to perform the supply could be identified using supply/performer."
  * ^requirements = "MAY contain zero or more [0..*] performer (CONF:1098-32048)."
* author 0..1
* author only AuthorParticipation
  * ^short = "The author in a supply represents the clinician who is requesting or planning the supply."
  * ^requirements = "SHOULD contain zero or one [0..1] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31129)."
* participant ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "participantRole"
  * ^slicing.rules = #open
  * ^short = "This participant represents a device that is ordered, requested or intended for the patient."
* participant contains productInstance 0..1
* participant[productInstance] obeys 1098-32096
  * ^requirements = "MAY contain zero or one [0..1] participant (CONF:1098-32094) such that it"
  * participantRole 1..1
  * participantRole only ProductInstance
    * ^requirements = "SHALL contain exactly one [1..1] Product Instance (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.37) (CONF:1098-32095)."
* entryRelationship ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "act"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.rules = #open
  * ^short = "The following entryRelationship represents the insurance coverage the patient may have for the supply."
* entryRelationship contains
    priorityPreference 0..* and
    indication 0..* and
    instruction 0..* and
    plannedCoverage 0..*
* entryRelationship[priorityPreference] ^short = "The following entryRelationship represents the priority that a patient or a provider places on the supply."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-31110) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-31111)."
  * observation 1..1
  * observation only PriorityPreference
    * ^requirements = "SHALL contain exactly one [1..1] Priority Preference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.143) (CONF:1098-31112)."
* entryRelationship[indication] ^short = "The following entryRelationship represents the indication for the supply."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-32054) such that it"
  * typeCode 1..1
  * typeCode = #RSON
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"RSON\" Has Reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32055)."
  * observation 1..1
  * observation only Indication
    * ^requirements = "SHALL contain exactly one [1..1] Indication (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.19:2014-06-09) (CONF:1098-32056)."
* entryRelationship[instruction] ^short = "The following entryRelationship captures any instructions associated with the planned supply."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-32057) such that it"
  * typeCode 1..1
  * typeCode = #SUBJ
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SUBJ\" Has Subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32058)."
  * act 1..1
  * act only Instruction
    * ^requirements = "SHALL contain exactly one [1..1] Instruction (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.20:2014-06-09) (CONF:1098-32059)."
* entryRelationship[plannedCoverage] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-32060) such that it"
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" Has Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32061)."
  * act 1..1
  * act only PlannedCoverage
    * ^requirements = "SHALL contain exactly one [1..1] Planned Coverage (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.129) (CONF:1098-32062)."

Invariant: 1098-32092
Description: "If the product is Medication Information (V2) (2.16.840.1.113883.10.20.22.4.23.2) then the product **SHALL NOT** be Immunization Medication Information (2.16.840.1.113883.10.20.22.4.54.2) and the participant **SHALL NOT** be Product Instance (CONF:1098-32092)."
Severity: #error

Invariant: 1098-32096
Description: "If the participant is Product Instance then the product **SHALL NOT** be Medication Information (V2) (2.16.840.1.113883.10.20.22.4.23.2) and the product **SHALL NOT** be Immunization Medication Information (V2) (2.16.840.1.113883.10.20.22.4.54.2) (CONF:1098-32096)."
Severity: #error