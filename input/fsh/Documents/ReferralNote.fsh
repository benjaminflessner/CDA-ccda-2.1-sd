Profile: ReferralNote
Parent: USRealmHeader
Id: 2.16.840.1.113883.10.20.22.1.14
Title: "Referral Note"
Description: """A Referral Note communicates pertinent information from a provider who is requesting services of another provider of clinical or non-clinical services. The information in this document includes the reason for the referral and additional information that would augment decision making and care delivery. 

Examples of referral situations are when a patient is referred from a family physician to a cardiologist for cardiac evaluation or when patient is sent by a cardiologist to an emergency department for angina or when a patient is referred by a nurse practitioner to an audiologist for hearing screening or when a patient is referred by a hospitalist to social services."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.1.14:2015-08-01"
* ^publisher = "WaveOne Associates"
* ^contact.name = "Brett Marquard"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "4135496886"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "brett@waveoneassociates.com"
* ^contact.telecom[=].use = #work
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId[primary] 1..1
  * obeys 1198-32943
  * ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-28947) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.1.14"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.1.14\" (CONF:1198-28948)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32911)."
* code 1..1
* code from $2.16.840.1.113883.1.11.20.2.3 (required)
  * ^short = "The Referral Note recommends use of the document type code 57133-1 \"Referral Note\", with further specification provided by author or performer, setting, or specialty. When pre-coordinated codes are used, any coded values describing the author or performer of the service act or the practice setting must be consistent with the LOINC document type. For example, an Obstetrics and Gynecology Referral note would not be authored by a Pediatric Cardiologist.  The type of referral and the target of the referral are specified via the participant (and not via the author)."
  * ^requirements = "SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet ReferralDocumentType http://hl7.org/fhir/ccda/ValueSet/2.16.840.1.113883.1.11.20.2.3 DYNAMIC (CONF:1198-28949)."
* informationRecipient 1..1
  * ^requirements = "SHALL contain exactly one [1..1] informationRecipient (CONF:1198-31589)."
  * intendedRecipient 1..1
    * ^requirements = "This informationRecipient SHALL contain exactly one [1..1] intendedRecipient (CONF:1198-31590)."
    * addr 0..*
      * ^requirements = "This intendedRecipient SHOULD contain zero or more [0..*] addr (CONF:1198-31591)."
    * telecom 0..*
      * ^requirements = "This intendedRecipient SHOULD contain zero or more [0..*] telecom (CONF:1198-31592)."
    * informationRecipient 1..1
      * ^requirements = "This intendedRecipient SHALL contain exactly one [1..1] informationRecipient (CONF:1198-31593)."
      * name 1..*
      * name only USRealmPersonNamePNUSFIELDED
        * ^requirements = "This informationRecipient SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1198-31594)."
* participant ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "typeCode"
  * ^slicing.rules = #open
  * ^short = "This participant represents the clinician to contact for questions about the referral note.  This call back contact individual may be a different person than the individual(s) identified in the author or legalAuthenticator participant."
* participant contains participant2 0..*
* participant[participant1] 0..*
  * ^requirements = "SHOULD contain zero or more [0..*] participant (CONF:1198-31642) such that it"
  * typeCode 1..1
  * typeCode = #IND
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"IND\" Indirect (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:1198-31924)."
  * associatedEntity 1..1
    * ^requirements = "SHALL contain exactly one [1..1] associatedEntity (CONF:1198-31643)."
    * classCode 1..1
    * classCode from $2.16.840.1.113883.11.20.9.33 (required)
      * ^requirements = "This associatedEntity SHALL contain exactly one [1..1] @classCode, which SHALL be selected from ValueSet INDRoleclassCodes urn:oid:2.16.840.1.113883.11.20.9.33 DYNAMIC (CONF:1198-31925)."
    * associatedPerson 1..1
      * ^requirements = "This associatedEntity SHALL contain exactly one [1..1] associatedPerson (CONF:1198-31644)."
      * name 1..*
      * name only USRealmPatientNamePTNUSFIELDED
        * ^requirements = "This associatedPerson SHALL contain at least one [1..*] US Realm Patient Name (PTN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1) (CONF:1198-31645)."
* participant[participant2] ^requirements = "SHOULD contain zero or more [0..*] participant (CONF:1198-31647) such that it"
  * typeCode 1..1
  * typeCode = #CALLBCK
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"CALLBCK\" call back contact (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 DYNAMIC) (CONF:1198-31648)."
  * associatedEntity 1..1
    * ^requirements = "SHALL contain exactly one [1..1] associatedEntity (CONF:1198-31649)."
    * classCode 1..1
    * classCode = #ASSIGNED
      * ^requirements = "This associatedEntity SHALL contain exactly one [1..1] @classCode=\"ASSIGNED\" assigned entity (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:1198-32419)."
    * id 1..*
      * ^requirements = "This associatedEntity SHALL contain at least one [1..*] id (CONF:1198-31650)."
    * addr 0..*
      * ^requirements = "This associatedEntity SHOULD contain zero or more [0..*] addr (CONF:1198-31651)."
    * telecom 1..*
      * ^requirements = "This associatedEntity SHALL contain at least one [1..*] telecom (CONF:1198-31652)."
    * associatedPerson 1..1
      * ^requirements = "This associatedEntity SHALL contain exactly one [1..1] associatedPerson (CONF:1198-31653)."
      * name 1..*
        * ^requirements = "This associatedPerson SHALL contain at least one [1..*] name (CONF:1198-31654)."
    * scopingOrganization 0..1
      * ^requirements = "This associatedEntity MAY contain zero or one [0..1] scopingOrganization (CONF:1198-31655)."
* component 1..1
  * ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "section.code"
  * ^slicing.rules = #open
  * structuredBody 1..1
    * obeys 1198-29102 and 1198-29103
    * ^requirements = "This component SHALL contain exactly one [1..1] structuredBody (CONF:1198-29063)."
    * component 0..1
      * ^slicing.discriminator[0].type = #value
      * ^slicing.discriminator[=].path = "section.code"
      * ^slicing.rules = #open
    * component contains
        planOfTreatment 0..1 and
        advanceDirectives 0..1 and
        historyOfPresentIllness 0..1 and
        familyHistory 0..1 and
        immunizations 0..1 and
        problem 1..1 and
        procedures 0..1 and
        results 0..1 and
        reviewOfSystems 0..1 and
        socialHistory 0..1 and
        vitalSigns 0..1 and
        functionalStatus 0..1 and
        physicalExam 0..1 and
        nutrition 0..1 and
        mentalStatus 0..1 and
        medicalEquip 0..1 and
        allergiesAndIntolerances 1..1 and
        assessment 0..1 and
        assessmentAndPlan 0..1 and
        medicalHistory 0..1 and
        generalStatus 0..1 and
        medications 1..1 and
        reasonForReferral 1..1
    * component[planOfTreatment] ^requirements = "This structuredBody SHOULD contain zero or one [0..1] component (CONF:1198-29066)."
      * section 1..1
      * section only PlanofTreatmentSection
        * ^requirements = "The component, if present, SHALL contain exactly one [1..1] Plan of Treatment Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.10:2014-06-09) (CONF:1198-29067)."
    * component[advanceDirectives] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-29068) such that it"
      * section 1..1
      * section only AdvanceDirectivesSectionEntriesOptional
        * ^requirements = "SHALL contain exactly one [1..1] Advance Directives Section (entries optional) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.21:2015-08-01) (CONF:1198-29069)."
    * component[historyOfPresentIllness] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-29074) such that it"
      * section 1..1
      * section only HistoryofPresentIllnessSection
        * ^requirements = "SHALL contain exactly one [1..1] History of Present Illness Section (identifier: urn:oid:1.3.6.1.4.1.19376.1.5.3.1.3.4) (CONF:1198-29075)."
    * component[familyHistory] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-29076) such that it"
      * section 1..1
      * section only FamilyHistorySection
        * ^requirements = "SHALL contain exactly one [1..1] Family History Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.15:2015-08-01) (CONF:1198-29077)."
    * component[immunizations] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-29082) such that it"
      * section 1..1
      * section only ImmunizationsSectionEntriesRequired
        * ^requirements = "SHALL contain exactly one [1..1] Immunizations Section (entries required) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.2.1:2015-08-01) (CONF:1198-29083)."
    * component[problem] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-29086) such that it"
      * section 1..1
      * section only ProblemSectionEntriesRequired
        * ^requirements = "SHALL contain exactly one [1..1] Problem Section (entries required) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.5.1:2015-08-01) (CONF:1198-29087)."
    * component[procedures] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-29088) such that it"
      * section 1..1
      * section only ProceduresSectionEntriesOptional
        * ^requirements = "SHALL contain exactly one [1..1] Procedures Section (entries optional) (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.7:2014-06-09) (CONF:1198-29089)."
    * component[results] ^requirements = "This structuredBody SHOULD contain zero or one [0..1] component (CONF:1198-29090) such that it"
      * section 1..1
      * section only ResultsSectionEntriesRequired
        * ^requirements = "SHALL contain exactly one [1..1] Results Section (entries required) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.3.1:2015-08-01) (CONF:1198-29091)."
    * component[reviewOfSystems] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-29092) such that it"
      * section 1..1
      * section only ReviewofSystemsSection
        * ^requirements = "SHALL contain exactly one [1..1] Review of Systems Section (identifier: urn:oid:1.3.6.1.4.1.19376.1.5.3.1.3.18) (CONF:1198-29093)."
    * component[socialHistory] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-29094) such that it"
      * section 1..1
      * section only SocialHistorySection
        * ^requirements = "SHALL contain exactly one [1..1] Social History Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.17:2015-08-01) (CONF:1198-29095)."
    * component[vitalSigns] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-29096) such that it"
      * section 1..1
      * section only VitalSignsSectionEntriesRequired
        * ^requirements = "SHALL contain exactly one [1..1] Vital Signs Section (entries required) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.4.1:2015-08-01) (CONF:1198-29097)."
    * component[functionalStatus] ^requirements = "This structuredBody SHOULD contain zero or one [0..1] component (CONF:1198-29098) such that it"
      * section 1..1
      * section only FunctionalStatusSection
        * ^requirements = "SHALL contain exactly one [1..1] Functional Status Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.14:2014-06-09) (CONF:1198-29099)."
    * component[physicalExam] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-29100) such that it"
      * section 1..1
      * section only PhysicalExamSection
        * ^requirements = "SHALL contain exactly one [1..1] Physical Exam Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.2.10:2015-08-01) (CONF:1198-29101)."
    * component[nutrition] ^requirements = "This structuredBody SHOULD contain zero or one [0..1] component (CONF:1198-30780) such that it"
      * section 1..1
      * section only NutritionSection
        * ^requirements = "SHALL contain exactly one [1..1] Nutrition Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.57) (CONF:1198-30781)."
    * component[mentalStatus] ^requirements = "This structuredBody SHOULD contain zero or one [0..1] component (CONF:1198-30796) such that it"
      * section 1..1
      * section only MentalStatusSection
        * ^requirements = "SHALL contain exactly one [1..1] Mental Status Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.56:2015-08-01) (CONF:1198-30926)."
    * component[medicalEquip] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30798) such that it"
      * section 1..1
      * section only MedicalEquipmentSection
        * ^requirements = "SHALL contain exactly one [1..1] Medical Equipment Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.23:2014-06-09) (CONF:1198-30799)."
    * component[allergiesAndIntolerances] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-30911) such that it"
      * section 1..1
      * section only AllergiesAndIntolerancesSectionEntriesRequired
        * ^requirements = "SHALL contain exactly one [1..1] Allergies and Intolerances Section (entries required) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.6.1:2015-08-01) (CONF:1198-30912)."
    * component[assessment] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30913) such that it"
      * section 1..1
      * section only AssessmentSection
        * ^requirements = "SHALL contain exactly one [1..1] Assessment Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.8) (CONF:1198-30914)."
    * component[assessmentAndPlan] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30915) such that it"
      * section 1..1
      * section only AssessmentandPlanSection
        * ^requirements = "SHALL contain exactly one [1..1] Assessment and Plan Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.9:2014-06-09) (CONF:1198-30916)."
    * component[medicalHistory] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30917) such that it"
      * section 1..1
      * section only PastMedicalHistory
        * ^requirements = "SHALL contain exactly one [1..1] Past Medical History (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.20:2015-08-01) (CONF:1198-30918)."
    * component[generalStatus] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30919) such that it"
      * section 1..1
      * section only GeneralStatusSection
        * ^requirements = "SHALL contain exactly one [1..1] General Status Section (identifier: urn:oid:2.16.840.1.113883.10.20.2.5) (CONF:1198-30920)."
    * component[medications] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-30922) such that it"
      * section 1..1
      * section only MedicationsSectionEntriesRequired
        * ^requirements = "SHALL contain exactly one [1..1] Medications Section (entries required) (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.1.1:2014-06-09) (CONF:1198-30923)."
    * component[reasonForReferral] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-30924) such that it"
      * section 1..1
      * section only ReasonforReferralSection
        * ^requirements = "SHALL contain exactly one [1..1] Reason for Referral Section (V2) (identifier: urn:hl7ii:1.3.6.1.4.1.19376.1.5.3.1.3.1:2014-06-09) (CONF:1198-30925)."

Invariant: 1198-32943
Description: "When asserting this templateId, all C-CDA 2.1 section and entry templates that had a previous version in C-CDA R1.1 **SHALL** include both the C-CDA 2.1 templateId and the C-CDA R1.1 templateId root without an extension. See C-CDA R2.1 Volume 1 - Design Considerations for additional detail (CONF:1198-32943)."
Severity: #error

Invariant: 1198-29102
Description: "This structuredBody **SHALL** contain an Assessment and Plan Section (V2) (2.16.840.1.113883.10.20.22.2.9:2014-06-09), or an Assessment Section (2.16.840.1.113883.10.20.22.2.8) and a Plan of Treatment Section (V2) (2.16.840.1.113883.10.20.22.2.10:2014-06-09) (CONF:1198-29102)."
Severity: #error

Invariant: 1198-29103
Description: "This structuredBody **SHALL NOT** contain an Assessment and Plan Section (V2) (2.16.840.1.113883.10.20.22.2.9:2014-06-09) when either an Assessment Section (2.16.840.1.113883.10.20.22.2.8) or a Plan of Treatment Section (V2) (2.16.840.1.113883.10.20.22.2.10:2014-06-09) is present (CONF:1198-29103)."
Severity: #error