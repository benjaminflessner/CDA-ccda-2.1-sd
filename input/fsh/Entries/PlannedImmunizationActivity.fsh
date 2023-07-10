Profile: PlannedImmunizationActivity
Parent: $SubstanceAdministration
Id: 2.16.840.1.113883.10.20.22.4.120
Title: "Planned Immunization Activity"
Description: """This template represents planned immunizations. Planned Immunization Activity is very similar to Planned Medication Activity with some key differences, for example, the drug code system is constrained to CVX codes. 
The priority of the immunization activity to the patient and provider is communicated through Priority Preference. The effectiveTime indicates the time when the immunization activity is intended to take place and authorTime indicates when the documentation of the plan occurred."""
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.4.120"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #SBADM
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"SBADM\" (CONF:1098-32091)."
* moodCode 1..1
* moodCode from $2.16.840.1.113883.11.20.9.24 (required)
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Planned moodCode (SubstanceAdministration/Supply) urn:oid:2.16.840.1.113883.11.20.9.24 STATIC 2014-09-01 (CONF:1098-32097)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-32098) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.120"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.120\" (CONF:1098-32099)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-32100)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-32101)."
  * code 1..1
  * code = "active"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"active\" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1098-32102)."
* effectiveTime 1..1
  * ^short = "The effectiveTime in a planned immunization activity represents the time that the immunization activity should occur."
  * ^requirements = "SHALL contain exactly one [1..1] effectiveTime (CONF:1098-32103)."
* repeatNumber 0..1
  * ^short = "In a Planned Immunization Activity, repeatNumber defines the number of allowed administrations. For example, a repeatNumber of \"3\" means that the substance can be administered up to 3 times."
  * ^requirements = "MAY contain zero or one [0..1] repeatNumber (CONF:1098-32126)."
* routeCode 0..1
* routeCode from $2.16.840.1.113883.3.88.12.3221.8.7 (required)
  * ^requirements = "MAY contain zero or one [0..1] routeCode, which SHALL be selected from ValueSet SPL Drug Route of Administration Terminology urn:oid:2.16.840.1.113883.3.88.12.3221.8.7 DYNAMIC (CONF:1098-32127)."
  * translation 0..*
  * translation from $2.16.840.1.113762.1.4.1099.12 (required)
    * ^requirements = "The routeCode, if present, SHOULD contain zero or more [0..*] translation, which SHALL be selected from ValueSet Medication Route urn:oid:2.16.840.1.113762.1.4.1099.12 DYNAMIC (CONF:1098-32951)."
* approachSiteCode 0..*
* approachSiteCode from $2.16.840.1.113883.3.88.12.3221.8.9 (required)
  * ^requirements = "MAY contain zero or more [0..*] approachSiteCode, which SHALL be selected from ValueSet Body Site Value Set urn:oid:2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:1098-32128)."
* doseQuantity 0..1
  * ^requirements = "MAY contain zero or one [0..1] doseQuantity (CONF:1098-32129)."
  * unit 0..1
  * unit from $2.16.840.1.113883.1.11.12839 (required)
    * ^requirements = "The doseQuantity, if present, SHOULD contain zero or one [0..1] @unit, which SHALL be selected from ValueSet UnitsOfMeasureCaseSensitive urn:oid:2.16.840.1.113883.1.11.12839 DYNAMIC (CONF:1098-32130)."
* consumable 1..1
  * ^requirements = "SHALL contain exactly one [1..1] consumable (CONF:1098-32131)."
  * manufacturedProduct 1..1
  * manufacturedProduct only ImmunizationMedicationInformation
    * ^requirements = "This consumable SHALL contain exactly one [1..1] Immunization Medication Information (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.54:2014-06-09) (CONF:1098-32132)."
* performer 0..*
  * ^short = "The clinician who is expected to perform the planned immunization activity could be identified using substanceAdministration/performer."
  * ^requirements = "MAY contain zero or more [0..*] performer (CONF:1098-32104)."
* author 0..*
* author only AuthorParticipation
  * ^short = "The author in a planned immunization activity represents the clinician who is requesting or planning the immunization activity."
  * ^requirements = "MAY contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-32105)."
* entryRelationship ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "act"
  * ^slicing.rules = #open
  * ^short = "The following entryRelationship captures any instructions associated with the planned immunization activity."
* entryRelationship contains
    priorityPreference 0..* and
    indication 0..* and
    instruction 0..*
* entryRelationship[priorityPreference] ^short = "The following entryRelationship represents the priority that a patient or a provider places on the immunization activity."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-32108) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32109)."
  * observation 1..1
  * observation only PriorityPreference
    * ^requirements = "SHALL contain exactly one [1..1] Priority Preference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.143) (CONF:1098-32110)."
* entryRelationship[indication] ^short = "The following entryRelationship represents the indication for the immunization activity."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-32114) such that it"
  * typeCode 1..1
  * typeCode = #RSON
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"RSON\" Has Reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32115)."
  * observation 1..1
  * observation only Indication
    * ^requirements = "SHALL contain exactly one [1..1] Indication (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.19:2014-06-09) (CONF:1098-32116)."
* entryRelationship[instruction] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-32117) such that it"
  * typeCode 1..1
  * typeCode = #SUBJ
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SUBJ\" Has Subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32118)."
  * act 1..1
  * act only Instruction
    * ^requirements = "SHALL contain exactly one [1..1] Instruction (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.20:2014-06-09) (CONF:1098-32119)."
* precondition ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "criterion"
  * ^slicing.rules = #open
* precondition contains pronditionForSubstanceAdmin 0..*
* precondition[pronditionForSubstanceAdmin] ^requirements = "MAY contain zero or more [0..*] precondition (CONF:1098-32123) such that it"
  * typeCode 1..1
  * typeCode = #PRCN
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"PRCN\" Precondition (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32124)."
  * criterion 1..1
  * criterion only PreconditionforSubstanceAdministration
    * ^requirements = "SHALL contain exactly one [1..1] Precondition for Substance Administration (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.25:2014-06-09) (CONF:1098-32125)."