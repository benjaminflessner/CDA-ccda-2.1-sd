Profile: InterventionAct
Parent: $Act
Id: 2.16.840.1.113883.10.20.22.4.131
Title: "Intervention Act"
Description: """This template represents an Intervention Act. It is a wrapper for intervention-type activities considered to be parts of the same intervention. For example, an activity such as "elevate head of bed" combined with "provide humidified O2 per nasal cannula" may be the interventions performed for a health concern of "respiratory insufficiency" to achieve a goal of "pulse oximetry greater than 92%". These intervention activities may be newly described or derived from a variety of sources within an EHR.

Interventions are actions taken to increase the likelihood of achieving the patient's or providers' goals. An Intervention Act should contain a reference to a Goal Observation representing the reason for the intervention.

Intervention Acts can be related to each other, or to Planned Intervention Acts. (E.g., a Planned Intervention Act with moodCode of INT could be related to a series of Intervention Acts with moodCode of EVN, each having an effectiveTime containing the time of the intervention.) 

All interventions referenced in an Intervention Act must have a moodCode of EVN, indicating that they have occurred."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.131:2015-08-01"
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
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"ACT\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1198-30971)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1198-30972)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-30973) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.131"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.131\" (CONF:1198-30974)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32916)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1198-30975)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-30976)."
  * code 1..1
  * code = "362956003"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"362956003\" procedure / intervention (navigational concept) (CONF:1198-30977)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.96"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.96\" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:1198-30978)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1198-30979)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1198-32316)."
* effectiveTime 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:1198-31624)."
* author 0..*
* author only AuthorParticipation
  * ^requirements = "SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1198-31552)."
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
    nonMedSupply 0..* and
    nutritionRecommendation 0..* and
    entryReference 0..* and
    entryReference 0..* and
    handoffCommunicationParticipants 0..* and
    plannedInterventionAct 0..*
* entryRelationship[advanceDirectiveObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-30980) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-30981)."
  * observation 1..1
  * observation only AdvanceDirectiveObservation
    * ^requirements = "SHALL contain exactly one [1..1] Advance Directive Observation (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.48:2015-08-01) (CONF:1198-30982)."
* entryRelationship[immunizationActivity] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-30984) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-30985)."
  * substanceAdministration 1..1
  * substanceAdministration only ImmunizationActivity
    * ^requirements = "SHALL contain exactly one [1..1] Immunization Activity (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.52:2015-08-01) (CONF:1198-30986)."
* entryRelationship[medicationActivity] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-30988) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-30989)."
  * substanceAdministration 1..1
  * substanceAdministration only MedicationActivity
    * ^requirements = "SHALL contain exactly one [1..1] Medication Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.16:2014-06-09) (CONF:1198-30990)."
* entryRelationship[procedureActivityAct] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-30991) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-30992)."
  * act 1..1
  * act only ProcedureActivityAct
    * ^requirements = "SHALL contain exactly one [1..1] Procedure Activity Act (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.12:2014-06-09) (CONF:1198-30993)."
* entryRelationship[interventionAct] ^short = "The following entryRelationship represents the relationship between two Intervention Acts (Intervention RELATES TO Intervention)."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31154) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31155)."
  * act 1..1
  * act only InterventionAct
    * ^requirements = "SHALL contain exactly one [1..1] Intervention Act (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.131:2015-08-01) (CONF:1198-32460)."
* entryRelationship[procedureActivityObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31164) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31165)."
  * observation 1..1
  * observation only ProcedureActivityObservation
    * ^requirements = "SHALL contain exactly one [1..1] Procedure Activity Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.13:2014-06-09) (CONF:1198-31166)."
* entryRelationship[procedureActivityProcedure] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31168) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31169)."
  * procedure 1..1
  * procedure only ProcedureActivityProcedure
    * ^requirements = "SHALL contain exactly one [1..1] Procedure Activity Procedure (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.14:2014-06-09) (CONF:1198-31170)."
* entryRelationship[encounterActivity] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31171) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31172)."
  * encounter 1..1
  * encounter only EncounterActivity
    * ^requirements = "SHALL contain exactly one [1..1] Encounter Activity (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.49:2015-08-01) (CONF:1198-31173)."
* entryRelationship[instruction] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31174) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32956)."
  * act 1..1
  * act only Instruction
    * ^requirements = "SHALL contain exactly one [1..1] Instruction (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.20:2014-06-09) (CONF:1198-31176)."
* entryRelationship[nonMedSupply] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31177) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31178)."
  * supply 1..1
  * supply only NonMedicinalSupplyActivity
    * ^requirements = "SHALL contain exactly one [1..1] Non-Medicinal Supply Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.50:2014-06-09) (CONF:1198-31179)."
* entryRelationship[nutritionRecommendation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31413) such that it"
  * act 1..1
  * act only NutritionRecommendation
    * ^requirements = "SHALL contain exactly one [1..1] Nutrition Recommendation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.130) (CONF:1198-31414)."
* entryRelationship[entryReference] ^short = "Where an Intervention needs to reference another entry already described in the CDA document instance, rather than repeating the full content of the entry, the Entry Reference template may be used to reference this entry."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31545) such that it"
  * obeys 1198-32459
  * ^short = "An Intervention Act should reference a Goal Observation. Because the Goal Observation is already described in the CDA document instance's Goals section, rather than repeating the full content of the Goal Observation, the Entry Reference template can be used to reference this entry. The following entryRelationship represents an Entry Reference to Goal Observation."
  * ^requirements = "SHOULD contain zero or more [0..*] entryRelationship (CONF:1198-31621) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31554)."
  * typeCode 1..1
  * typeCode = #RSON
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"RSON\" Has reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31622)."
  * act 1..1
  * act only EntryReference
    * ^requirements = "SHALL contain exactly one [1..1] Entry Reference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.122) (CONF:1198-31555)."
  * act 1..1
  * act only EntryReference
    * ^requirements = "SHALL contain exactly one [1..1] Entry Reference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.122) (CONF:1198-31623)."
* entryRelationship[handoffCommunicationParticipants] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32317) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32318)."
  * act 1..1
  * act only HandoffCommunicationParticipants
    * ^requirements = "SHALL contain exactly one [1..1] Handoff Communication Participants (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.141) (CONF:1198-32319)."
* entryRelationship[plannedInterventionAct] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32914) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32773)."
  * act 1..1
  * act only PlannedInterventionAct
    * ^requirements = "SHALL contain exactly one [1..1] Planned Intervention Act (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.146:2015-08-01) (CONF:1198-32915)."
* reference 0..*
  * ^requirements = "MAY contain zero or more [0..*] reference (CONF:1198-32760)."
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "The reference, if present, SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32761)."
  * externalDocument 1..1
  * externalDocument only ExternalDocumentReference
    * ^requirements = "The reference, if present, SHALL contain exactly one [1..1] External Document Reference (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.115:2014-06-09) (CONF:1198-32762)."

Invariant: 1198-32459
Description: "This entryReference template **SHALL** reference an instance of a Goal Observation template (CONF:1198-32459)."
Severity: #error