Profile: PlannedMedicationActivity
Parent: $SubstanceAdministration
Id: 2.16.840.1.113883.10.20.22.4.42
Title: "Planned Medication Activity"
Description: "This template represents planned medication activities. The priority of the medication activity to the patient and provider is communicated through Priority Preference. The effectiveTime indicates the time when the medication activity is intended to take place. The authorTime indicates when the documentation of the plan occurred."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.42:2014-06-09"
* ^version = "2014-06-09"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #SBADM
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"SBADM\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-8572)."
* moodCode 1..1
* moodCode from $2.16.840.1.113883.11.20.9.24 (required)
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Planned moodCode (SubstanceAdministration/Supply) urn:oid:2.16.840.1.113883.11.20.9.24 STATIC 2011-09-30 (CONF:1098-8573)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-30465) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.42"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.42\" (CONF:1098-30466)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32557)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-8575)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-32087)."
  * code 1..1
  * code = "active"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"active\" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1098-32088)."
* effectiveTime 1..1
* effectiveTime only $IVL-TS
  * ^short = "The effectiveTime in a planned medication activity represents the time that the medication activity should occur."
  * ^requirements = "SHALL contain exactly one [1..1] effectiveTime (CONF:1098-30468) such that it"
* repeatNumber 0..1
  * ^short = "In a Planned Medication Activity, repeatNumber defines the number of allowed administrations. For example, a repeatNumber of \"3\" means that the substance can be administered up to 3 times."
  * ^requirements = "MAY contain zero or one [0..1] repeatNumber (CONF:1098-32066)."
* routeCode 0..1
* routeCode from $2.16.840.1.113883.3.88.12.3221.8.7 (required)
  * ^requirements = "MAY contain zero or one [0..1] routeCode, which SHALL be selected from ValueSet SPL Drug Route of Administration Terminology urn:oid:2.16.840.1.113883.3.88.12.3221.8.7 DYNAMIC (CONF:1098-32067)."
  * translation 0..*
  * translation from $2.16.840.1.113762.1.4.1099.12 (required)
    * ^requirements = "The routeCode, if present, SHOULD contain zero or more [0..*] translation, which SHALL be selected from ValueSet Medication Route urn:oid:2.16.840.1.113762.1.4.1099.12 DYNAMIC (CONF:1098-32952)."
* approachSiteCode 0..*
* approachSiteCode from $2.16.840.1.113883.3.88.12.3221.8.9 (required)
  * ^requirements = "MAY contain zero or more [0..*] approachSiteCode, which SHALL be selected from ValueSet Body Site Value Set urn:oid:2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:1098-32078)."
* doseQuantity 0..1
  * ^requirements = "MAY contain zero or one [0..1] doseQuantity (CONF:1098-32068)."
  * unit 0..1
  * unit from $2.16.840.1.113883.1.11.12839 (required)
    * ^requirements = "The doseQuantity, if present, SHOULD contain zero or one [0..1] @unit, which SHALL be selected from ValueSet UnitsOfMeasureCaseSensitive urn:oid:2.16.840.1.113883.1.11.12839 DYNAMIC (CONF:1098-32133)."
* rateQuantity 0..1
  * ^requirements = "MAY contain zero or one [0..1] rateQuantity (CONF:1098-32079)."
  * unit 0..1
  * unit from $2.16.840.1.113883.1.11.12839 (required)
    * ^requirements = "The rateQuantity, if present, SHOULD contain zero or one [0..1] @unit, which SHALL be selected from ValueSet UnitsOfMeasureCaseSensitive urn:oid:2.16.840.1.113883.1.11.12839 DYNAMIC (CONF:1098-32134)."
* maxDoseQuantity 0..1
  * ^requirements = "MAY contain zero or one [0..1] maxDoseQuantity (CONF:1098-32080)."
* administrationUnitCode 0..1
* administrationUnitCode from $2.16.840.1.113762.1.4.1021.30 (required)
  * ^requirements = "MAY contain zero or one [0..1] administrationUnitCode, which SHALL be selected from ValueSet AdministrationUnitDoseForm urn:oid:2.16.840.1.113762.1.4.1021.30 DYNAMIC (CONF:1098-32081)."
* consumable 1..1
  * ^requirements = "SHALL contain exactly one [1..1] consumable (CONF:1098-32082)."
  * manufacturedProduct 1..1
  * manufacturedProduct only MedicationInformation
    * ^requirements = "This consumable SHALL contain exactly one [1..1] Medication Information (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.23:2014-06-09) (CONF:1098-32083)."
* performer 0..*
  * ^short = "The clinician who is expected to perform the medication activity could be identified using substanceAdministration/performer."
  * ^requirements = "MAY contain zero or more [0..*] performer (CONF:1098-30470)."
* author 0..1
* author only AuthorParticipation
  * ^short = "The author in a planned medication activity represents the clinician who is requesting or planning the medication activity."
  * ^requirements = "SHOULD contain zero or one [0..1] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-32046)."
* entryRelationship ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "act"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.rules = #open
  * ^short = "The following entryRelationship captures any instructions associated with the planned medication activity."
* entryRelationship contains
    priorityPreference 0..* and
    indication 0..* and
    instruction 0..*
* entryRelationship[priorityPreference] ^short = "The following entryRelationship represents the priority that a patient or a provider places on the planned medication activity."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-31104) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-31105)."
  * observation 1..1
  * observation only PriorityPreference
    * ^requirements = "SHALL contain exactly one [1..1] Priority Preference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.143) (CONF:1098-31106)."
* entryRelationship[indication] ^short = "The following entryRelationship represents the indication for the planned medication activity."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-32069) such that it"
  * typeCode 1..1
  * typeCode = #RSON
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"RSON\" Has Reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32070)."
  * observation 1..1
  * observation only Indication
    * ^requirements = "SHALL contain exactly one [1..1] Indication (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.19:2014-06-09) (CONF:1098-32071)."
* entryRelationship[instruction] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-32072) such that it"
  * typeCode 1..1
  * typeCode = #SUBJ
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SUBJ\" Has Subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32073)."
  * act 1..1
  * act only Instruction
    * ^requirements = "SHALL contain exactly one [1..1] Instruction (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.20:2014-06-09) (CONF:1098-32074)."
* precondition 0..*
  * ^requirements = "MAY contain zero or more [0..*] precondition (CONF:1098-32084)."
  * typeCode 1..1
  * typeCode = #PRCN
    * ^requirements = "The precondition, if present, SHALL contain exactly one [1..1] @typeCode=\"PRCN\" Precondition (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32085)."
  * criterion 1..1
  * criterion only PreconditionforSubstanceAdministration
    * ^requirements = "The precondition, if present, SHALL contain exactly one [1..1] Precondition for Substance Administration (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.25:2014-06-09) (CONF:1098-32086)."