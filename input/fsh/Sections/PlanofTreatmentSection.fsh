Profile: PlanofTreatmentSection
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.10
Title: "Plan of Treatment Section"
Description: """This section, formerly known as "Plan of Care", contains data that define pending orders, interventions, encounters, services, and procedures for the patient. It is limited to prospective, unfulfilled, or incomplete orders and requests only. These are indicated by the @moodCode of the entries within this section. All active, incomplete, or pending orders, appointments, referrals, procedures, services, or any other pending event of clinical significance to the current care of the patient should be listed. 

This section may also contain information about ongoing care of the patient, clinical reminders, patient’s values, beliefs, preferences, care expectations, and overarching care goals. 

Clinical reminders are placed here to provide prompts for disease prevention and management, patient safety, and healthcare quality improvements, including widely accepted performance measures. 

Values may include the importance of quality of life over longevity. These values are taken into account when prioritizing all problems and their treatments. 

Beliefs may include comfort with dying or the refusal of blood transfusions because of the patient’s religious convictions. 

Preferences may include liquid medicines over tablets, or treatment via secure email instead of in person. 

Care expectations may range from being treated only by female clinicians, to expecting all calls to be returned within 24 hours. 

Overarching goals described in this section are not tied to a specific condition, problem, health concern, or intervention. Examples of overarching goals could be to minimize pain or dependence on others, or to walk a daughter down the aisle for her marriage. 

The plan may also indicate that patient education will be provided."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.10:2014-06-09"
* ^version = "2014-06-09"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-7723) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.10"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.10\" (CONF:1098-10435)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32501)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-14749)."
  * code 1..1
  * code = "18776-5"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"18776-5\" Plan of Treatment (CONF:1098-14750)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-30813)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1098-16986)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1098-7725)."
* entry ..*
  * ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "encounter"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "act"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "procedure"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "substanceAdministration"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "supply"
  * ^slicing.rules = #open
* entry contains
    planned 0..* and
    plannedEnc 0..* and
    plannedAct 0..* and
    plannedProc 0..* and
    plannedMed 0..* and
    plannedSupply 0..* and
    instruction 0..* and
    handoffCommParticipants 0..* and
    nutrition 0..* and
    plannedImmunization 0..* and
    goal 0..*
* entry[planned] ^requirements = "MAY contain zero or more [0..*] entry (CONF:1098-7726) such that it"
* entry[plannedObs].observation 1..1
* entry[plannedObs].observation only PlannedObservation
  * ^requirements = "The entry, if present, SHALL contain exactly one [1..1] Planned Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.44:2014-06-09) (CONF:1098-14751)."
* entry[plannedEnc] ^requirements = "MAY contain zero or more [0..*] entry (CONF:1098-8805) such that it"
  * encounter 1..1
  * encounter only PlannedEncounter
    * ^requirements = "SHALL contain exactly one [1..1] Planned Encounter (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.40:2014-06-09) (CONF:1098-30472)."
* entry[plannedAct] ^requirements = "MAY contain zero or more [0..*] entry (CONF:1098-8807) such that it"
  * act 1..1
  * act only PlannedAct
    * ^requirements = "SHALL contain exactly one [1..1] Planned Act (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.39:2014-06-09) (CONF:1098-30473)."
* entry[plannedProc] ^requirements = "MAY contain zero or more [0..*] entry (CONF:1098-8809) such that it"
  * procedure 1..1
  * procedure only PlannedProcedure
    * ^requirements = "SHALL contain exactly one [1..1] Planned Procedure (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.41:2014-06-09) (CONF:1098-30474)."
* entry[plannedMed] ^requirements = "MAY contain zero or more [0..*] entry (CONF:1098-8811) such that it"
  * substanceAdministration 1..1
  * substanceAdministration only PlannedMedicationActivity
    * ^requirements = "SHALL contain exactly one [1..1] Planned Medication Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.42:2014-06-09) (CONF:1098-30475)."
* entry[plannedSupply] ^requirements = "MAY contain zero or more [0..*] entry (CONF:1098-8813) such that it"
  * supply 1..1
  * supply only PlannedSupply
    * ^requirements = "SHALL contain exactly one [1..1] Planned Supply (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.43:2014-06-09) (CONF:1098-30476)."
* entry[instruction] ^requirements = "MAY contain zero or more [0..*] entry (CONF:1098-14695) such that it"
  * act 1..1
  * act only Instruction
    * ^requirements = "SHALL contain exactly one [1..1] Instruction (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.20:2014-06-09) (CONF:1098-31397)."
* entry[handoffCommParticipants] ^requirements = "MAY contain zero or more [0..*] entry (CONF:1098-29621) such that it"
  * act 1..1
  * act only HandoffCommunicationParticipants
    * ^requirements = "SHALL contain exactly one [1..1] Handoff Communication Participants (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.141) (CONF:1098-30868)."
* entry[nutrition] ^requirements = "MAY contain zero or more [0..*] entry (CONF:1098-31841) such that it"
  * act 1..1
  * act only NutritionRecommendation
    * ^requirements = "SHALL contain exactly one [1..1] Nutrition Recommendation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.130) (CONF:1098-31864)."
* entry[plannedImmunization] ^requirements = "MAY contain zero or more [0..*] entry (CONF:1098-32353) such that it"
  * substanceAdministration 1..1
  * substanceAdministration only PlannedImmunizationActivity
    * ^requirements = "SHALL contain exactly one [1..1] Planned Immunization Activity (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.120) (CONF:1098-32354)."
* entry[goal] ^requirements = "MAY contain zero or more [0..*] entry (CONF:1098-32887) such that it"
  * observation 1..1
  * observation only GoalObservation
    * ^requirements = "SHALL contain exactly one [1..1] Goal Observation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.121) (CONF:1098-32888)."