Profile: NutritionRecommendation
Parent: $Act
Id: 2.16.840.1.113883.10.20.22.4.130
Title: "Nutrition Recommendation"
Description: "This template represents nutrition regimens (e.g., fluid restrictions, calorie minimum), interventions (e.g., NPO, nutritional supplements), and procedures (e.g., G-Tube by bolus, TPN by central line). It may also depict the need for nutrition education."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.4.130"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #ACT
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"ACT\" act (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1098-30385)."
* moodCode 1..1
* moodCode from $2.16.840.1.113883.11.20.9.23 (required)
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Planned moodCode (Act/Encounter/Procedure) urn:oid:2.16.840.1.113883.11.20.9.23 STATIC 2014-09-01 (CONF:1098-30386)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-30340) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.130"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.130\" (CONF:1098-30341)."
* code 1..1
* code from $2.16.840.1.113883.1.11.20.2.9 (preferred)
  * ^requirements = "SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Nutrition Recommendations urn:oid:2.16.840.1.113883.1.11.20.2.9 DYNAMIC (CONF:1098-30342)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-31697)."
  * code 1..1
  * code = "active"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"active\" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1098-31698)."
* effectiveTime 0..1
  * ^short = "The effectiveTime indicates the time when the activity is intended to take place."
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-31699)."
* entryRelationship ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "act"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "encounter"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "substanceAdministration"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "supply"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "procedure"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.rules = #open
* entryRelationship contains
    plannedEncounter 0..* and
    plannedMedActivity 0..* and
    plannedObs 0..* and
    plannedProc 0..* and
    plannedSupply 0..* and
    plannedAct 0..*
* entryRelationship[plannedEncounter] ^comment = "STU Comment 1501: Updated to add \"such that it\""
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-32382) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32928)."
  * encounter 1..1
  * encounter only PlannedEncounter
    * ^requirements = "SHALL contain exactly one [1..1] Planned Encounter (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.40:2014-06-09) (CONF:1098-32383)."
* entryRelationship[plannedMedActivity] ^comment = "STU Comment 1501: Updated to add \"such that it\""
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-32384) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32929)."
  * substanceAdministration 1..1
  * substanceAdministration only PlannedMedicationActivity
    * ^requirements = "SHALL contain exactly one [1..1] Planned Medication Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.42:2014-06-09) (CONF:1098-32385)."
* entryRelationship[plannedObs] ^comment = "STU Comment 1501: Updated to add \"such that it\""
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-32386) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32930)."
  * observation 1..1
  * observation only PlannedObservation
    * ^requirements = "SHALL contain exactly one [1..1] Planned Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.44:2014-06-09) (CONF:1098-32387)."
* entryRelationship[plannedProc] ^comment = "STU Comment 1501: Updated to add \"such that it\""
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-32388) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32931)."
  * procedure 1..1
  * procedure only PlannedProcedure
    * ^requirements = "SHALL contain exactly one [1..1] Planned Procedure (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.41:2014-06-09) (CONF:1098-32389)."
* entryRelationship[plannedSupply] ^comment = "STU Comment 1501: Updated to add \"such that it\""
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-32390) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32932)."
  * supply 1..1
  * supply only PlannedSupply
    * ^requirements = "SHALL contain exactly one [1..1] Planned Supply (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.43:2014-06-09) (CONF:1098-32391)."
* entryRelationship[plannedAct] ^comment = "STU Comment 1501: Updated to add \"such that it\""
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-32632) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32933)."
  * act 1..1
  * act only PlannedAct
    * ^requirements = "SHALL contain exactly one [1..1] Planned Act (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.39:2014-06-09) (CONF:1098-32633)."