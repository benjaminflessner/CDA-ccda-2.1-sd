Profile: RiskConcernAct
Parent: $Act
Id: 2.16.840.1.113883.10.20.22.4.136
Title: "Risk Concern Act"
Description: """This template represents a risk concern. 

It is a wrapper for a single risk concern which may be derived from a variety of sources within an EHR (such as Problem List, Family History, Social History, Social Worker Note, etc.). 

A Risk Concern Act represents a health concern that is a risk. A risk is a clinical or socioeconomic condition that the patient does not currently have, but the probability of developing that condition rises to the level of concern such that an intervention and/or monitoring is needed."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.136:2015-08-01"
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
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"ACT\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1198-32220)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1198-32221)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-32180) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.136"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.136\" (CONF:1198-32222)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32910)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1198-32223)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-32305)."
  * code 1..1
  * code = "281694009"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"281694009\" At risk for (CONF:1198-32306)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.96"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.96\" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:1198-32307)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1198-32225)."
  * code 1..1
  * code from $2.16.840.1.113883.11.20.9.19 (required)
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ProblemAct statusCode urn:oid:2.16.840.1.113883.11.20.9.19 STATIC (CONF:1198-32314)."
* effectiveTime 0..1
  * ^requirements = "MAY contain zero or one [0..1] effectiveTime (CONF:1198-32226)."
* author 0..*
* author only AuthorParticipation
  * ^requirements = "SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1198-32300)."
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
    mentalStatusObservation 0..* and
    smokingStatus-MeaningfulUse 0..* and
    encounterDiagnosis 0..* and
    entryRelationship11 0..* and
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
    resultOrganizer 0..* and
    priorityPreference 0..* and
    priorityPreference 0..* and
    problemConcernAct 0..* and
    entryReference 0..*
* entryRelationship[problemObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32179) such that it"
  * ^short = "The following entryRelationship represents the relationship Health Concern HAS SUPPORT Observation."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32208) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32227)."
  * typeCode 1..1
  * typeCode = #SPRT
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SPRT\" Has support (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32282)."
  * observation 1..1
  * observation only ProblemObservation
    * ^requirements = "SHALL contain exactly one [1..1] Problem Observation (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.4:2015-08-01) (CONF:1198-32219)."
  * observation 1..1
  * observation only ProblemObservation
    * ^requirements = "SHALL contain exactly one [1..1] Problem Observation (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.4:2015-08-01) (CONF:1198-32283)."
* entryRelationship[allergy-IntoleranceObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32181) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32228)."
  * observation 1..1
  * observation only AllergyIntoleranceObservation
    * ^requirements = "SHALL contain exactly one [1..1] Allergy - Intolerance Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.7:2014-06-09) (CONF:1198-32229)."
* entryRelationship[entryReference] ^short = "The following entryRelationship represents the relationship between two Health Concern Acts where there is a general relationship between the source and the target (Health Concern RELATES TO Health Concern). The Entry Reference template is used here because the target Health Concern Act will be defined elsewhere in the Health Concerns Section and thus a reference to that template is all that is required."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32182) such that it"
  * ^short = "The following entryRelationship represents the relationship between two Health Concern Acts where the target is a component of the source (Health Concern HAS COMPONENT Health Concern). The Enry Reference template is used here because the target Health Concern Act will be defined elsewhere in the Health Concerns Section and thus a reference to that template is all that is required."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32183) such that it"
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32217) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32230)."
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" Has component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32232)."
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32301)."
  * act 1..1
  * act only EntryReference
    * ^requirements = "SHALL contain exactly one [1..1] Entry Reference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.122) (CONF:1198-32231)."
  * act 1..1
  * act only EntryReference
    * ^requirements = "SHALL contain exactly one [1..1] Entry Reference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.122) (CONF:1198-32233)."
  * act 1..1
  * act only EntryReference
    * ^requirements = "SHALL contain exactly one [1..1] Entry Reference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.122) (CONF:1198-32302)."
* entryRelationship[assessmentScaleObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32184) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32234)."
  * observation 1..1
  * observation only AssessmentScaleObservation
    * ^requirements = "SHALL contain exactly one [1..1] Assessment Scale Observation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.69) (CONF:1198-32235)."
* entryRelationship[mentalStatusObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32185) such that it"
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32188) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32236)."
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32242)."
  * observation 1..1
  * observation only MentalStatusObservation
    * ^requirements = "SHALL contain exactly one [1..1] Mental Status Observation (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.74:2015-08-01) (CONF:1198-32237)."
  * observation 1..1
  * observation only MentalStatusObservation
    * ^requirements = "SHALL contain exactly one [1..1] Mental Status Observation (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.74:2015-08-01) (CONF:1198-32243)."
* entryRelationship[self-CareActivities(ADLandIADL)] contains self-CareActivities(ADLandIADL) 0..*
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32186) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32238)."
  * observation 1..1
  * observation only SelfCareActivitiesADLandIADL
    * ^requirements = "SHALL contain exactly one [1..1] Self-Care Activities (ADL and IADL) (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.128) (CONF:1198-32239)."
* entryRelationship[smokingStatus-MeaningfulUse] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32189) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32244)."
  * observation 1..1
  * observation only SmokingStatusMeaningfulUse
    * ^requirements = "SHALL contain exactly one [1..1] Smoking Status - Meaningful Use (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.78:2014-06-09) (CONF:1198-32245)."
* entryRelationship[encounterDiagnosis] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32190) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32246)."
  * act 1..1
  * act only EncounterDiagnosis
    * ^requirements = "SHALL contain exactly one [1..1] Encounter Diagnosis (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.80:2015-08-01) (CONF:1198-32247)."
* entryRelationship[entryRelationship11] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32191) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers To (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32248)."
  * organizer 1..1
  * organizer only FamilyHistoryOrganizer
    * ^requirements = "SHALL contain exactly one [1..1] Family History Organizer (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.45:2015-08-01) (CONF:1198-32249)."
* entryRelationship[functionalStatusObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32192) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32250)."
  * observation 1..1
  * observation only FunctionalStatusObservation
    * ^requirements = "SHALL contain exactly one [1..1] Functional Status Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.67:2014-06-09) (CONF:1198-32251)."
* entryRelationship[hospitalAdmissionDiagnosis] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32193) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32252)."
  * act 1..1
  * act only HospitalAdmissionDiagnosis
    * ^requirements = "SHALL contain exactly one [1..1] Hospital Admission Diagnosis (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.34:2015-08-01) (CONF:1198-32253)."
* entryRelationship[nutritionAssessment] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32195) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32256)."
  * observation 1..1
  * observation only NutritionAssessment
    * ^requirements = "SHALL contain exactly one [1..1] Nutrition Assessment (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.138) (CONF:1198-32257)."
* entryRelationship[postprocedureDiagnosis] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32197) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32260)."
  * act 1..1
  * act only PostprocedureDiagnosis
    * ^requirements = "SHALL contain exactly one [1..1] Postprocedure Diagnosis (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.51:2015-08-01) (CONF:1198-32261)."
* entryRelationship[pregnancyObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32198) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32262)."
  * observation 1..1
  * observation only PregnancyObservation
    * ^requirements = "SHALL contain exactly one [1..1] Pregnancy Observation (identifier: urn:oid:2.16.840.1.113883.10.20.15.3.8) (CONF:1198-32263)."
* entryRelationship[preoperativeDiagnosis] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32199) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32264)."
  * act 1..1
  * act only PreoperativeDiagnosis
    * ^requirements = "SHALL contain exactly one [1..1] Preoperative Diagnosis (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.65:2015-08-01) (CONF:1198-32265)."
* entryRelationship[reactionObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32200) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32266)."
  * observation 1..1
  * observation only ReactionObservation
    * ^requirements = "SHALL contain exactly one [1..1] Reaction Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.9:2014-06-09) (CONF:1198-32267)."
* entryRelationship[resultObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32201) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32268)."
  * observation 1..1
  * observation only ResultObservation
    * ^requirements = "SHALL contain exactly one [1..1] Result Observation (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.2:2015-08-01) (CONF:1198-32269)."
* entryRelationship[sensoryStatus] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32202) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32270)."
  * observation 1..1
  * observation only SensoryStatus
    * ^requirements = "SHALL contain exactly one [1..1] Sensory Status (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.127) (CONF:1198-32271)."
* entryRelationship[socialHistoryObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32203) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32272)."
  * observation 1..1
  * observation only SocialHistoryObservation
    * ^requirements = "SHALL contain exactly one [1..1] Social History Observation (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.38:2015-08-01) (CONF:1198-32273)."
* entryRelationship[substanceorDeviceAllergy-IntoleranceObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32204) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32958)."
  * observation 1..1
  * observation only SubstanceOrDeviceAllergyIntoleranceObservation
    * ^requirements = "SHALL contain exactly one [1..1] Substance or Device Allergy - Intolerance Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.24.3.90:2014-06-09) (CONF:1198-32275)."
* entryRelationship[tobaccoUse] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32205) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32276)."
  * observation 1..1
  * observation only TobaccoUse
    * ^requirements = "SHALL contain exactly one [1..1] Tobacco Use (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.85:2014-06-09) (CONF:1198-32277)."
* entryRelationship[vitalSignObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32206) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32278)."
  * observation 1..1
  * observation only VitalSignObservation
    * ^requirements = "SHALL contain exactly one [1..1] Vital Sign Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.27:2014-06-09) (CONF:1198-32279)."
* entryRelationship[longitudinalCareWoundObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32207) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32280)."
  * observation 1..1
  * observation only LongitudinalCareWoundObservation
    * ^requirements = "SHALL contain exactly one [1..1] Longitudinal Care Wound Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.114:2015-08-01) (CONF:1198-32281)."
* entryRelationship[caregiverCharacteristics] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32209) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32284)."
  * observation 1..1
  * observation only CaregiverCharacteristics
    * ^requirements = "SHALL contain exactly one [1..1] Caregiver Characteristics (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.72) (CONF:1198-32285)."
* entryRelationship[culturalandReligiousObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32210) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32286)."
  * observation 1..1
  * observation only CulturalandReligiousObservation
    * ^requirements = "SHALL contain exactly one [1..1] Cultural and Religious Observation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.111) (CONF:1198-32287)."
* entryRelationship[characteristicsofHomeEnvironment] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32211) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32288)."
  * observation 1..1
  * observation only CharacteristicsofHomeEnvironment
    * ^requirements = "SHALL contain exactly one [1..1] Characteristics of Home Environment (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.109) (CONF:1198-32289)."
* entryRelationship[nutritionalStatusObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32212) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32290)."
  * observation 1..1
  * observation only NutritionalStatusObservation
    * ^requirements = "SHALL contain exactly one [1..1] Nutritional Status Observation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.124) (CONF:1198-32291)."
* entryRelationship[resultOrganizer] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32213) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32292)."
  * organizer 1..1
  * organizer only ResultOrganizer
    * ^requirements = "SHALL contain exactly one [1..1] Result Organizer (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.1:2015-08-01) (CONF:1198-32293)."
* entryRelationship[priorityPreference] ^short = "The following entryRelationship represents the priority that the patient puts on the health concern."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32214) such that it"
  * ^short = "The following entryRelationship represents the priority that the provider puts on the health concern."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32215) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32294)."
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32296)."
  * observation 1..1
  * observation only PriorityPreference
    * ^requirements = "SHALL contain exactly one [1..1] Priority Preference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.143) (CONF:1198-32295)."
  * observation 1..1
  * observation only PriorityPreference
    * ^requirements = "SHALL contain exactly one [1..1] Priority Preference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.143) (CONF:1198-32297)."
* entryRelationship[problemConcernAct] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-32216) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32298)."
  * act 1..1
  * act only ProblemConcernAct
    * ^requirements = "SHALL contain exactly one [1..1] Problem Concern Act (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.3:2015-08-01) (CONF:1198-32299)."
* reference 0..*
  * ^requirements = "MAY contain zero or more [0..*] reference (CONF:1198-32769)."
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "The reference, if present, SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32908)."
  * externalDocument 1..1
  * externalDocument only ExternalDocumentReference
    * ^requirements = "The reference, if present, SHALL contain exactly one [1..1] External Document Reference (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.115:2014-06-09) (CONF:1198-32909)."