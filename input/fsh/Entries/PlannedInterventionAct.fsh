Profile: PlannedInterventionAct
Parent: $Act
Id: 2.16.840.1.113883.10.20.22.4.146
Title: "Planned Intervention Act"
Description: """This template represents a Planned Intervention Act. It is a wrapper for planned intervention-type activities considered to be parts of the same intervention. For example, an activity such as "elevate head of bed" combined with "provide humidified O2 per nasal cannula" may be the interventions planned for a health concern of "respiratory insufficiency" in order to attempt to achieve a goal of "pulse oximetry greater than 92%". These intervention activities may be newly described or derived from a variety of sources within an EHR.

Interventions are actions taken to increase the likelihood of achieving the patient's or providers' goals. An Intervention Act should contain a reference to a Goal Observation representing the reason for the intervention.

Planned Intervention Acts can be related to each other or to Intervention Acts. (E.g., a Planned Intervention Act with moodCode of INT could be related to a series of Intervention Acts with moodCode of EVN, each having an effectiveTime containing the time of the intervention.) 

All interventions referenced in a Planned Intervention Act must have moodCodes indicating that that are planned (have not yet occurred)."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.146:2015-08-01"
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
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"ACT\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1198-32678)."
* moodCode 1..1
* moodCode from $2.16.840.1.113883.11.20.9.54 (required)
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Planned Intervention moodCode urn:oid:2.16.840.1.113883.11.20.9.54 DYNAMIC (CONF:1198-32679)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-32653) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.146"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.146\" (CONF:1198-32680)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32912)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1198-32681)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-32654)."
  * code 1..1
  * code = "362956003"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"362956003\" procedure / intervention (navigational concept) (CONF:1198-32682)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.96"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.96\" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:1198-32683)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1198-32655)."
  * code 1..1
  * code = "active"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"active\" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1198-32684)."
* effectiveTime 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:1198-32723)."
* author 0..*
* author only AuthorParticipation
  * ^requirements = "SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1198-32719)."
* entryRelationship ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "substanceAdministration"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "act"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "procedure"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "encounter"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "supply"
  * ^slicing.rules = #open
* entryRelationship contains
    advanceDirectiveObservation 0..* and
    immunizationActivity 0..* and
    medicationActivity 0..* and
    procedureActivityAct 0..* and
    interventionAct 0..* and
    procedureActivityObservation 0..* and
    procedureActivityProcedure 0..* and
    encounterActivity 0..* and
    instruction 0..* and
    entryRelationship10 0..* and
    plannedAct 0..* and
    plannedEncounter 0..* and
    plannedObservation 0..* and
    plannedProcedure 0..* and
    plannedMedicationActivity 0..* and
    entryRelationship16 0..* and
    nutritionRecommendation 0..* and
    entryReference 0..* and
    entryReference 0..* and
    handoffCommunicationParticipants 0..* and
    plannedImmunizationActivity 0..*
* entryRelationship[advanceDirectiveObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32652) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32685)."
  * observation 1..1
  * observation only AdvanceDirectiveObservation
    * ^requirements = "SHALL contain exactly one [1..1] Advance Directive Observation (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.48:2015-08-01) (CONF:1198-32677)."
* entryRelationship[immunizationActivity] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32656) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32686)."
  * substanceAdministration 1..1
  * substanceAdministration only ImmunizationActivity
    * ^requirements = "SHALL contain exactly one [1..1] Immunization Activity (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.52:2015-08-01) (CONF:1198-32687)."
* entryRelationship[medicationActivity] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32657) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32688)."
  * substanceAdministration 1..1
  * substanceAdministration only MedicationActivity
    * ^requirements = "SHALL contain exactly one [1..1] Medication Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.16:2014-06-09) (CONF:1198-32689)."
* entryRelationship[procedureActivityAct] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32658) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32690)."
  * act 1..1
  * act only ProcedureActivityAct
    * ^requirements = "SHALL contain exactly one [1..1] Procedure Activity Act (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.12:2014-06-09) (CONF:1198-32691)."
* entryRelationship[interventionAct] ^short = "The following entryRelationship represents the relationship between two Intervention Acts (Intervention RELATES TO Intervention)."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32659) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32692)."
  * act 1..1
  * act only InterventionAct
    * ^requirements = "SHALL contain exactly one [1..1] Intervention Act (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.131:2015-08-01) (CONF:1198-32693)."
* entryRelationship[procedureActivityObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32660) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32694)."
  * observation 1..1
  * observation only ProcedureActivityObservation
    * ^requirements = "SHALL contain exactly one [1..1] Procedure Activity Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.13:2014-06-09) (CONF:1198-32695)."
* entryRelationship[procedureActivityProcedure] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32661) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32696)."
  * procedure 1..1
  * procedure only ProcedureActivityProcedure
    * ^requirements = "SHALL contain exactly one [1..1] Procedure Activity Procedure (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.14:2014-06-09) (CONF:1198-32697)."
* entryRelationship[encounterActivity] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32662) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32698)."
  * encounter 1..1
  * encounter only EncounterActivity
    * ^requirements = "SHALL contain exactly one [1..1] Encounter Activity (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.49:2015-08-01) (CONF:1198-32699)."
* entryRelationship[instruction] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32663) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32957)."
  * act 1..1
  * act only Instruction
    * ^requirements = "SHALL contain exactly one [1..1] Instruction (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.20:2014-06-09) (CONF:1198-32701)."
* entryRelationship[entryRelationship10] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32664) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32702)."
  * supply 1..1
  * supply only NonMedicinalSupplyActivity
    * ^requirements = "SHALL contain exactly one [1..1] Non-Medicinal Supply Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.50:2014-06-09) (CONF:1198-32703)."
* entryRelationship[plannedAct] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32665) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32704)."
  * act 1..1
  * act only PlannedAct
    * ^requirements = "SHALL contain exactly one [1..1] Planned Act (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.39:2014-06-09) (CONF:1198-32705)."
* entryRelationship[plannedEncounter] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32666) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32706)."
  * encounter 1..1
  * encounter only PlannedEncounter
    * ^requirements = "SHALL contain exactly one [1..1] Planned Encounter (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.40:2014-06-09) (CONF:1198-32707)."
* entryRelationship[plannedObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32667) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32708)."
  * observation 1..1
  * observation only PlannedObservation
    * ^requirements = "SHALL contain exactly one [1..1] Planned Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.44:2014-06-09) (CONF:1198-32709)."
* entryRelationship[plannedProcedure] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32668) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32710)."
  * procedure 1..1
  * procedure only PlannedProcedure
    * ^requirements = "SHALL contain exactly one [1..1] Planned Procedure (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.41:2014-06-09) (CONF:1198-32711)."
* entryRelationship[plannedMedicationActivity] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32669) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32712)."
  * substanceAdministration 1..1
  * substanceAdministration only PlannedMedicationActivity
    * ^requirements = "SHALL contain exactly one [1..1] Planned Medication Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.42:2014-06-09) (CONF:1198-32713)."
* entryRelationship[entryRelationship16] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32670) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32714)."
  * supply 1..1
  * supply only PlannedSupply
    * ^requirements = "SHALL contain exactly one [1..1] Planned Supply (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.43:2014-06-09) (CONF:1198-32715)."
* entryRelationship[nutritionRecommendation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32671) such that it"
  * act 1..1
  * act only NutritionRecommendation
    * ^requirements = "SHALL contain exactly one [1..1] Nutrition Recommendation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.130) (CONF:1198-32716)."
* entryRelationship[entryReference] ^short = "Where an Intervention needs to reference another entry already described in the CDA document instance, rather than repeating the full content of the entry, the Entry Reference template may be used to reference this entry."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32672) such that it"
  * obeys 1198-32722
  * ^short = "An Intervention Act SHALL reference a Goal Observation. Because the Goal Observation is already described in the CDA document instance's Goals section, rather than repeating the full content of the Goal Observation, the Entry Reference template can be used to reference this entry. The following entryRelationship represents an Entry Reference to Goal Observation."
  * ^requirements = "SHALL contain at least one [1..*] entryRelationship (CONF:1198-32673) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32717)."
  * typeCode 1..1
  * typeCode = #RSON
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"RSON\" Has reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32720)."
  * act 1..1
  * act only EntryReference
    * ^requirements = "SHALL contain exactly one [1..1] Entry Reference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.122) (CONF:1198-32718)."
  * act 1..1
  * act only EntryReference
    * ^requirements = "SHALL contain exactly one [1..1] Entry Reference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.122) (CONF:1198-32721)."
* entryRelationship[handoffCommunicationParticipants] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32675) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32726)."
  * act 1..1
  * act only HandoffCommunicationParticipants
    * ^requirements = "SHALL contain exactly one [1..1] Handoff Communication Participants (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.141) (CONF:1198-32727)."
* entryRelationship[plannedImmunizationActivity] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32676) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32728)."
  * substanceAdministration 1..1
  * substanceAdministration only PlannedImmunizationActivity
    * ^requirements = "SHALL contain exactly one [1..1] Planned Immunization Activity (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.120) (CONF:1198-32729)."
* reference 0..*
  * ^requirements = "MAY contain zero or more [0..*] reference (CONF:1198-32766)."
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "The reference, if present, SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32767)."
  * externalDocument 1..1
  * externalDocument only ExternalDocumentReference
    * ^requirements = "The reference, if present, SHALL contain exactly one [1..1] External Document Reference (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.115:2014-06-09) (CONF:1198-32768)."

Invariant: 1198-32722
Description: "This entryReference template **SHALL** reference an instance of a Goal Observation template (CONF:1198-32722)."
Severity: #error