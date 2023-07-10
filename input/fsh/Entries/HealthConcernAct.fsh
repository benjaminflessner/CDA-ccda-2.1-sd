Profile: HealthConcernAct
Parent: $Act
Id: 2.16.840.1.113883.10.20.22.4.132
Title: "Health Concern Act"
Description: """This template represents a health concern. 

It is a wrapper for a single health concern which may be derived from a variety of sources within an EHR (such as Problem List, Family History, Social History, Social Worker Note, etc.). 

A Health Concern Act is used to track non-optimal physical or psychological situations drawing the patient to the healthcare system. These may be from the perspective of the care team or from the perspective of the patient. 

When the underlying condition is of concern (i.e., as long as the condition, whether active or resolved, is of ongoing concern and interest), the statusCode is active. Only when the underlying condition is no longer of concern is the statusCode set to completed. The effectiveTime reflects the time that the underlying condition was felt to be a concern; it may or may not correspond to the effectiveTime of the condition (e.g., even five years later, a prior heart attack may remain a concern).

Health concerns require intervention(s) to increase the likelihood of achieving the goals of care for the patient and they specify the condition oriented reasons for creating the plan."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.132:2015-08-01"
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
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"ACT\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1198-30750)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1198-30751)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-30752) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.132"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.132\" (CONF:1198-30753)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32861)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1198-30754)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-32310)."
  * code 1..1
  * code = "75310-3"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"75310-3\" Health Concern (CONF:1198-32311)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1198-32312)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1198-30758)."
  * code 1..1
  * code from $2.16.840.1.113883.11.20.9.19 (required)
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ProblemAct statusCode urn:oid:2.16.840.1.113883.11.20.9.19 STATIC (CONF:1198-32313)."
* effectiveTime 0..1
  * ^requirements = "MAY contain zero or one [0..1] effectiveTime (CONF:1198-30759)."
* author 0..*
* author only AuthorParticipation
  * ^short = "A health concern may be a patient or provider concern. If the author is set to the recordTarget (patient), this is a patient concern. If the author is set to a provider, this is a provider concern. If both patient and provider are set as authors, this is a concern of both the patient and the provider."
  * ^requirements = "SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1198-31546)."
* entryRelationship ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "act"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "organizer"
  * ^slicing.rules = #open
  * ^short = "Where a Health Concern needs to reference another entry already described in the CDA document instance, rather than repeating the full content of the entry, the Entry Reference template may be used to reference this entry."
* entryRelationship contains
    problemObservation 0..* and
    allergy-IntoleranceObservation 0..* and
    entryReference 0..* and
    entryReference 0..* and
    assessmentScaleObservation 0..* and
    mentalStatusObservation 0..* and
    smokingStatus-MeaningfulUse 0..* and
    encounterDiagnosis 0..* and
    entryRelationship10 0..* and
    functionalStatusObservation 0..* and
    hospitalAdmissionDiagnosis 0..* and
    nutritionAssessment 0..* and
    postprocedureDiagnosis 0..* and
    pregnancyObservation 0..* and
    preoperativeDiagnosis 0..* and
    reactionObservation 0..* and
    resultObservation 0..* and
    sensoryStatus 0..* and
    socialHistoryObservation 0..* and
    substanceorDeviceAllergy-IntoleranceObservation 0..* and
    tobaccoUse 0..* and
    vitalSignObservation 0..* and
    longitudinalCareWoundObservation 0..* and
    problemObservation 0..* and
    caregiverCharacteristics 0..* and
    culturalandReligiousObservation 0..* and
    characteristicsofHomeEnvironment 0..* and
    nutritionalStatusObservation 0..* and
    entryRelationship30 0..* and
    priorityPreference 0..* and
    problemConcernAct 0..* and
    entryReference 0..*
* entryRelationship[problemObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-30761) such that it"
  * ^short = "The following entryRelationship represents the relationship Health Concern HAS SUPPORT Observation."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31365) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-30762)."
  * typeCode 1..1
  * typeCode = #SPRT
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SPRT\" Has support (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31366)."
  * observation 1..1
  * observation only ProblemObservation
    * ^requirements = "SHALL contain exactly one [1..1] Problem Observation (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.4:2015-08-01) (CONF:1198-31001)."
  * observation 1..1
  * observation only ProblemObservation
    * ^requirements = "SHALL contain exactly one [1..1] Problem Observation (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.4:2015-08-01) (CONF:1198-31367)."
* entryRelationship[allergy-IntoleranceObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31007) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31008)."
  * observation 1..1
  * observation only AllergyIntoleranceObservation
    * ^requirements = "SHALL contain exactly one [1..1] Allergy - Intolerance Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.7:2014-06-09) (CONF:1198-31186)."
* entryRelationship[entryReference] ^short = "The following entryRelationship represents the relationship between two Health Concern Acts where there is a general relationship between the source and the target (Health Concern REFERS TO Health Concern).  For example, a patient has 2 health concerns identified in a CARE Plan: Failure to Thrive and Poor Feeding, while it could be that one may have caused the other, at the time of care planning and documentation it is not necessary, nor desirable to have to assert what caused what. The Entry Reference template is used here because the target Health Concern Act will be defined elsewhere in the Health Concerns Section and thus a reference to that template is all that is required."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31157) such that it"
  * ^short = "The following entryRelationship represents the relationship between two Health Concern Acts where the target is a component of the source (Health Concern HAS COMPONENT Health Concern). For example, a patient has an Impaired Mobility Health Concern. There may then be the need to document several component health concerns, such as \"Unable to Transfer Bed to Chair\", \"Unable to Rise from Commode\", \"Short of Breath Walking with Walker\". The Entry Reference template is used here because the target Health Concern Act will be defined elsewhere in the Health Concerns Section and thus a reference to that template is all that is required."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31160) such that it"
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31549) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31158)."
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" Has component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31161)."
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31550)."
  * act 1..1
  * act only EntryReference
    * obeys 1198-32860
    * ^requirements = "SHALL contain exactly one [1..1] Entry Reference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.122) (CONF:1198-32106)."
  * act 1..1
  * act only EntryReference
    * obeys 1198-32745
    * ^requirements = "SHALL contain exactly one [1..1] Entry Reference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.122) (CONF:1198-32107)."
  * act 1..1
  * act only EntryReference
    * ^requirements = "SHALL contain exactly one [1..1] Entry Reference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.122) (CONF:1198-31551)."
* entryRelationship[assessmentScaleObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31190) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31191)."
  * observation 1..1
  * observation only AssessmentScaleObservation
    * ^requirements = "SHALL contain exactly one [1..1] Assessment Scale Observation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.69) (CONF:1198-31192)."
* entryRelationship[self-CareActivities(ADLandIADL)] contains self-CareActivities(ADLandIADL) 0..*
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31232) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31264)."
  * observation 1..1
  * observation only SelfCareActivitiesADLandIADL
    * ^requirements = "SHALL contain exactly one [1..1] Self-Care Activities (ADL and IADL) (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.128) (CONF:1198-31265)."
* entryRelationship[mentalStatusObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31234) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31268)."
  * observation 1..1
  * observation only MentalStatusObservation
    * ^requirements = "SHALL contain exactly one [1..1] Mental Status Observation (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.74:2015-08-01) (CONF:1198-31273)."
* entryRelationship[smokingStatus-MeaningfulUse] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31235) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31269)."
  * observation 1..1
  * observation only SmokingStatusMeaningfulUse
    * ^requirements = "SHALL contain exactly one [1..1] Smoking Status - Meaningful Use (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.78:2014-06-09) (CONF:1198-31275)."
* entryRelationship[encounterDiagnosis] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31236) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31270)."
  * act 1..1
  * act only EncounterDiagnosis
    * ^requirements = "SHALL contain exactly one [1..1] Encounter Diagnosis (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.80:2015-08-01) (CONF:1198-31277)."
* entryRelationship[entryRelationship10] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31237) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers To (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31279)."
  * organizer 1..1
  * organizer only FamilyHistoryOrganizer
    * ^requirements = "SHALL contain exactly one [1..1] Family History Organizer (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.45:2015-08-01) (CONF:1198-31280)."
* entryRelationship[functionalStatusObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31238) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31282)."
  * observation 1..1
  * observation only FunctionalStatusObservation
    * ^requirements = "SHALL contain exactly one [1..1] Functional Status Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.67:2014-06-09) (CONF:1198-31283)."
* entryRelationship[hospitalAdmissionDiagnosis] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31241) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31291)."
  * act 1..1
  * act only HospitalAdmissionDiagnosis
    * ^requirements = "SHALL contain exactly one [1..1] Hospital Admission Diagnosis (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.34:2015-08-01) (CONF:1198-31292)."
* entryRelationship[nutritionAssessment] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31244) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31300)."
  * observation 1..1
  * observation only NutritionAssessment
    * ^requirements = "SHALL contain exactly one [1..1] Nutrition Assessment (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.138) (CONF:1198-31301)."
* entryRelationship[postprocedureDiagnosis] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31246) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31306)."
  * act 1..1
  * act only PostprocedureDiagnosis
    * ^requirements = "SHALL contain exactly one [1..1] Postprocedure Diagnosis (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.51:2015-08-01) (CONF:1198-31307)."
* entryRelationship[pregnancyObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31247) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31309)."
  * observation 1..1
  * observation only PregnancyObservation
    * ^requirements = "SHALL contain exactly one [1..1] Pregnancy Observation (identifier: urn:oid:2.16.840.1.113883.10.20.15.3.8) (CONF:1198-31310)."
* entryRelationship[preoperativeDiagnosis] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31248) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31312)."
  * act 1..1
  * act only PreoperativeDiagnosis
    * ^requirements = "SHALL contain exactly one [1..1] Preoperative Diagnosis (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.65:2015-08-01) (CONF:1198-31313)."
* entryRelationship[reactionObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31250) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31318)."
  * observation 1..1
  * observation only ReactionObservation
    * ^requirements = "SHALL contain exactly one [1..1] Reaction Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.9:2014-06-09) (CONF:1198-31319)."
* entryRelationship[resultObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31251) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31321)."
  * observation 1..1
  * observation only ResultObservation
    * ^requirements = "SHALL contain exactly one [1..1] Result Observation (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.2:2015-08-01) (CONF:1198-31322)."
* entryRelationship[sensoryStatus] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31252) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31324)."
  * observation 1..1
  * observation only SensoryStatus
    * ^requirements = "SHALL contain exactly one [1..1] Sensory Status (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.127) (CONF:1198-31325)."
* entryRelationship[socialHistoryObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31253) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31327)."
  * observation 1..1
  * observation only SocialHistoryObservation
    * ^requirements = "SHALL contain exactly one [1..1] Social History Observation (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.38:2015-08-01) (CONF:1198-31328)."
* entryRelationship[substanceorDeviceAllergy-IntoleranceObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31254) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32955)."
  * observation 1..1
  * observation only SubstanceOrDeviceAllergyIntoleranceObservation
    * ^requirements = "SHALL contain exactly one [1..1] Substance or Device Allergy - Intolerance Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.24.3.90:2014-06-09) (CONF:1198-31331)."
* entryRelationship[tobaccoUse] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31255) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31333)."
  * observation 1..1
  * observation only TobaccoUse
    * ^requirements = "SHALL contain exactly one [1..1] Tobacco Use (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.85:2014-06-09) (CONF:1198-31334)."
* entryRelationship[vitalSignObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31256) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31336)."
  * observation 1..1
  * observation only VitalSignObservation
    * ^requirements = "SHALL contain exactly one [1..1] Vital Sign Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.27:2014-06-09) (CONF:1198-31337)."
* entryRelationship[longitudinalCareWoundObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31257) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31339)."
  * observation 1..1
  * observation only LongitudinalCareWoundObservation
    * ^requirements = "SHALL contain exactly one [1..1] Longitudinal Care Wound Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.114:2015-08-01) (CONF:1198-31340)."
* entryRelationship[caregiverCharacteristics] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31368) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31369)."
  * observation 1..1
  * observation only CaregiverCharacteristics
    * ^requirements = "SHALL contain exactly one [1..1] Caregiver Characteristics (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.72) (CONF:1198-31370)."
* entryRelationship[culturalandReligiousObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31371) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31372)."
  * observation 1..1
  * observation only CulturalandReligiousObservation
    * ^requirements = "SHALL contain exactly one [1..1] Cultural and Religious Observation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.111) (CONF:1198-31373)."
* entryRelationship[characteristicsofHomeEnvironment] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31374) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31375)."
  * observation 1..1
  * observation only CharacteristicsofHomeEnvironment
    * ^requirements = "SHALL contain exactly one [1..1] Characteristics of Home Environment (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.109) (CONF:1198-31376)."
* entryRelationship[nutritionalStatusObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31377) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31378)."
  * observation 1..1
  * observation only NutritionalStatusObservation
    * ^requirements = "SHALL contain exactly one [1..1] Nutritional Status Observation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.124) (CONF:1198-31379)."
* entryRelationship[entryRelationship30] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31380) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31381)."
  * organizer 1..1
  * organizer only ResultOrganizer
    * ^requirements = "SHALL contain exactly one [1..1] Result Organizer (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.1:2015-08-01) (CONF:1198-31382)."
* entryRelationship[priorityPreference] ^short = "The following entryRelationship represents the priority that the patient or a provider puts on the health concern."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31442) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31443)."
  * observation 1..1
  * observation only PriorityPreference
    * ^requirements = "SHALL contain exactly one [1..1] Priority Preference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.143) (CONF:1198-31444)."
* entryRelationship[problemConcernAct] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31544) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31547)."
  * act 1..1
  * act only ProblemConcernAct
    * ^requirements = "SHALL contain exactly one [1..1] Problem Concern Act (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.3:2015-08-01) (CONF:1198-31548)."
* reference 0..*
  * ^short = "Where it is necessary to reference an external clinical document such a Referral document, Discharge Summary document etc., the External Document Reference template can be used to reference this document.  However, if this Care Plan document is replacing or appending another Care Plan document in the same set, that relationship is set in the header, using ClinicalDocument/relatedDocument."
  * ^requirements = "MAY contain zero or more [0..*] reference (CONF:1198-32757)."
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "The reference, if present, SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32758)."
  * externalDocument 1..1
  * externalDocument only ExternalDocumentReference
    * ^requirements = "The reference, if present, SHALL contain exactly one [1..1] External Document Reference (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.115:2014-06-09) (CONF:1198-32759)."

Invariant: 1198-32860
Description: "The Entry Reference template **SHALL** contain an id that references a Health Concern Act (CONF:1198-32860)."
Severity: #error

Invariant: 1198-32745
Description: "The Entry Reference template **SHALL** contain an id that references a Health Concern Act (CONF:1198-32745)."
Severity: #error