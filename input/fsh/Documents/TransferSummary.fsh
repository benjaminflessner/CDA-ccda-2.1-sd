Profile: TransferSummary
Parent: USRealmHeader
Id: 2.16.840.1.113883.10.20.22.1.13
Title: "Transfer Summary"
Description: """This document describes constraints on the Clinical Document Architecture (CDA) header and body elements for a Transfer Summary. The Transfer Summary standardizes critical information for exchange of information between providers of care when a patient moves between health care settings. 

Standardization of information used in this form will promote interoperability; create information suitable for reuse in quality measurement, public health, research, and for reimbursement."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.1.13:2015-08-01"
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
  * obeys 1198-32946
  * ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-28239) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.1.13"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.1.13\" (CONF:1198-28240)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32907)."
* code 1..1
* code from $2.16.840.1.113883.1.11.20.2.4 (required)
  * ^short = "The Transfer Summary recommends use of the document type code 18761-7 \"Provider Unspecified Transfer Summary\", with further specification provided by author or performer, setting, or specialty. When pre-coordinated codes are used, any coded values describing the author or performer of the service act or the practice setting must be consistent with the LOINC document type. For example, an Obstetrics and Gynecology Transfer Summary note would not be authored by a Pediatric Cardiologist.\n\nPre-coordinated codes are those that indicate the specialty or service provided in the LOINC Long Common Name (Print Name in the TransferDocumentType valueSet table).\n\nWhen using a generic type of code such as 18761-7 (Provider - Unspecified Transfer Summary), the types of services involved in the care are handled in documentationOf/serviceEvent with the use of serviceEvent/code (e.g., use a SNOMED CT procedure code such as 69031006 (Excision of breast tissue) while performers/providers involved in the care can be identified using the functionCode (bound to Healthcare Provider Taxonomy role codes)."
  * ^requirements = "SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet TransferDocumentType http://hl7.org/fhir/ccda/ValueSet/2.16.840.1.113883.1.11.20.2.4 DYNAMIC (CONF:1198-28243)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1198-29838)."
* participant ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "typeCode"
  * ^slicing.rules = #open
* participant contains participant2 0..*
* participant[participant1] 0..*
  * ^requirements = "SHOULD contain zero or more [0..*] participant (CONF:1198-31599) such that it"
  * typeCode 1..1
  * typeCode = #IND
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"IND\" indirect (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:1198-31872)."
  * associatedEntity 1..1
    * ^requirements = "SHALL contain exactly one [1..1] associatedEntity (CONF:1198-31600)."
    * classCode 1..1
    * classCode from $2.16.840.1.113883.11.20.9.33 (required)
      * ^requirements = "This associatedEntity SHALL contain exactly one [1..1] @classCode, which SHALL be selected from ValueSet INDRoleclassCodes urn:oid:2.16.840.1.113883.11.20.9.33 DYNAMIC (CONF:1198-31873)."
    * associatedPerson 1..1
      * ^requirements = "This associatedEntity SHALL contain exactly one [1..1] associatedPerson (CONF:1198-31601)."
      * name 1..*
        * ^requirements = "This associatedPerson SHALL contain at least one [1..*] name (CONF:1198-31602)."
* participant[participant2] ^requirements = "SHOULD contain zero or more [0..*] participant (CONF:1198-31626) such that it"
  * typeCode 1..1
  * typeCode = #CALLBCK
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"CALLBCK\" Call back contact (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:1198-31627)."
  * associatedEntity 1..1
    * ^requirements = "SHALL contain exactly one [1..1] associatedEntity (CONF:1198-31628)."
    * classCode 1..1
    * classCode = #ASSIGNED
      * ^requirements = "This associatedEntity SHALL contain exactly one [1..1] @classCode=\"ASSIGNED\" assigned entity (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:1198-31641)."
    * id 1..*
      * ^requirements = "This associatedEntity SHALL contain at least one [1..*] id (CONF:1198-31629)."
    * addr 0..*
      * ^requirements = "This associatedEntity SHOULD contain zero or more [0..*] addr (CONF:1198-31630)."
    * telecom 1..*
      * ^requirements = "This associatedEntity SHALL contain at least one [1..*] telecom (CONF:1198-31631)."
    * associatedPerson 1..1
      * ^requirements = "This associatedEntity SHALL contain exactly one [1..1] associatedPerson (CONF:1198-31632)."
      * name 1..*
        * ^requirements = "This associatedPerson SHALL contain at least one [1..*] name (CONF:1198-31633)."
    * scopingOrganization 0..1
      * ^requirements = "This associatedEntity MAY contain zero or one [0..1] scopingOrganization (CONF:1198-31634)."
* documentationOf 1..1
  * ^requirements = "SHALL contain exactly one [1..1] documentationOf (CONF:1198-31570)."
  * serviceEvent 1..1
    * ^short = "The serviceEvent in a Transfer Note contains the representation of providers who are wholly or partially responsible for the safety and well-being of a subject of care."
    * ^requirements = "This documentationOf SHALL contain exactly one [1..1] serviceEvent (CONF:1198-31571)."
    * classCode 1..1
    * classCode = #PCPR
      * ^requirements = "This serviceEvent SHALL contain exactly one [1..1] @classCode=\"PCPR\" Care Provision (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1198-31572)."
    * code 0..1
      * ^short = "Use serviceEvent/code when using a generic document type code such as 18761-7 (Provider-Unspecified Transfer Summary) to represent the service."
      * ^requirements = "This serviceEvent MAY contain zero or one [0..1] code (CONF:1198-32650)."
    * performer ^slicing.discriminator[0].type = #value
      * ^slicing.discriminator[=].path = "typeCode"
      * ^slicing.rules = #open
    * ClinicalDocument.documentationOf.serviceEvent
      * performer contains performer1 1..*
      * performer[performer1] ^requirements = "This serviceEvent SHALL contain at least one [1..*] performer (CONF:1198-31574) such that it"
        * typeCode 1..1
        * typeCode = #PRF
          * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"PRF\" Participation of Physical Performer (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 DYNAMIC) (CONF:1198-31575)."
        * functionCode 0..1
        * functionCode from $2.16.840.1.114222.4.11.1066 (preferred)
          * ^short = "Use performer/functionCode when using a generic document type code such as 18761-7 (Provider-Unspecified Transfer Summary) to represent the provider."
          * ^requirements = "MAY contain zero or one [0..1] functionCode, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy urn:oid:2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1198-32651)."
* component 1..1
  * ^requirements = "SHALL contain exactly one [1..1] component (CONF:1198-28251)."
  * structuredBody 1..1
    * obeys 1198-31582 and 1198-31583
    * ^requirements = "This component SHALL contain exactly one [1..1] structuredBody (CONF:1198-28252)."
    * component 0..1
      * ^slicing.discriminator[0].type = #value
      * ^slicing.discriminator[=].path = "section.code"
      * ^slicing.rules = #open
    * component contains
        advanceDirectives 0..1 and
        allergiesAndIntolerances 1..1 and
        physicalExam 0..1 and
        encounters 0..1 and
        familyHistory 0..1 and
        functionalStatus 0..1 and
        dischargeDiagnosis 0..1 and
        immunizations 0..1 and
        medicalEquip 0..1 and
        medications 1..1 and
        payers 0..1 and
        planOfTreatment 0..1 and
        problem 1..1 and
        procedures 0..1 and
        results 1..1 and
        socialHistory 0..1 and
        vitalSigns 1..1 and
        mentalStatus 0..1 and
        generalStatus 0..1 and
        reviewOfSystems 0..1 and
        nutrition 0..1 and
        reasonForReferral 1..1 and
        pastMedicalHistory 0..1 and
        historyOfPresentIllness 0..1 and
        assessmentAndPlan 0..1 and
        assessment 0..1 and
        admissionMedications 0..1 and
        admissionDiagnosis 0..1 and
        courseOfCare 0..1
    * component[advanceDirectives] ^requirements = "This structuredBody SHOULD contain zero or one [0..1] component (CONF:1198-28253)."
      * section 1..1
      * section only AdvanceDirectivesSectionentriesrequired
        * ^requirements = "The component, if present, SHALL contain exactly one [1..1] Advance Directives Section (entries required) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.21.1:2015-08-01) (CONF:1198-28254)."
    * component[allergiesAndIntolerances] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-28255) such that it"
      * section 1..1
      * section only AllergiesAndIntolerancesSectionEntriesRequired
        * ^requirements = "SHALL contain exactly one [1..1] Allergies and Intolerances Section (entries required) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.6.1:2015-08-01) (CONF:1198-28256)."
    * component[physicalExam] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-28257) such that it"
      * section 1..1
      * section only PhysicalExamSection
        * ^requirements = "SHALL contain exactly one [1..1] Physical Exam Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.2.10:2015-08-01) (CONF:1198-28258)."
    * component[encounters] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-28261) such that it"
      * section 1..1
      * section only EncountersSectionentriesrequired
        * ^requirements = "SHALL contain exactly one [1..1] Encounters Section (entries required) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.22.1:2015-08-01) (CONF:1198-28262)."
    * component[familyHistory] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-28263) such that it"
      * section 1..1
      * section only FamilyHistorySection
        * ^requirements = "SHALL contain exactly one [1..1] Family History Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.15:2015-08-01) (CONF:1198-28264)."
    * component[functionalStatus] ^requirements = "This structuredBody SHOULD contain zero or one [0..1] component (CONF:1198-28265) such that it"
      * section 1..1
      * section only FunctionalStatusSection
        * ^requirements = "SHALL contain exactly one [1..1] Functional Status Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.14:2014-06-09) (CONF:1198-28266)."
    * component[dischargeDiagnosis] ^requirements = "This structuredBody SHOULD contain zero or one [0..1] component (CONF:1198-28271) such that it"
      * section 1..1
      * section only DischargeDiagnosisSection
        * ^requirements = "SHALL contain exactly one [1..1] Discharge Diagnosis Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.24:2015-08-01) (CONF:1198-28272)."
    * component[immunizations] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-28273) such that it"
      * section 1..1
      * section only ImmunizationsSectionEntriesOptional
        * ^requirements = "SHALL contain exactly one [1..1] Immunizations Section (entries optional) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.2:2015-08-01) (CONF:1198-28274)."
    * component[medicalEquip] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-28275) such that it"
      * section 1..1
      * section only MedicalEquipmentSection
        * ^requirements = "SHALL contain exactly one [1..1] Medical Equipment Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.23:2014-06-09) (CONF:1198-28276)."
    * component[medications] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-28277) such that it"
      * section 1..1
      * section only MedicationsSectionEntriesRequired
        * ^requirements = "SHALL contain exactly one [1..1] Medications Section (entries required) (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.1.1:2014-06-09) (CONF:1198-28278)."
    * component[payers] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-28279) such that it"
      * section 1..1
      * section only PayersSection
        * ^requirements = "SHALL contain exactly one [1..1] Payers Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.18:2015-08-01) (CONF:1198-28280)."
    * component[planOfTreatment] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-28281) such that it"
      * section 1..1
      * section only PlanofTreatmentSection
        * ^requirements = "SHALL contain exactly one [1..1] Plan of Treatment Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.10:2014-06-09) (CONF:1198-28282)."
    * component[problem] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-28283) such that it"
      * section 1..1
      * section only ProblemSectionEntriesRequired
        * ^requirements = "SHALL contain exactly one [1..1] Problem Section (entries required) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.5.1:2015-08-01) (CONF:1198-28284)."
    * component[procedures] ^requirements = "This structuredBody SHOULD contain zero or one [0..1] component (CONF:1198-28285) such that it"
      * section 1..1
      * section only ProceduresSectionentriesrequired
        * ^requirements = "SHALL contain exactly one [1..1] Procedures Section (entries required) (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.7.1:2014-06-09) (CONF:1198-28286)."
    * component[results] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-28287) such that it"
      * section 1..1
      * section only ResultsSectionEntriesRequired
        * ^requirements = "SHALL contain exactly one [1..1] Results Section (entries required) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.3.1:2015-08-01) (CONF:1198-28288)."
    * component[socialHistory] ^requirements = "This structuredBody SHOULD contain zero or one [0..1] component (CONF:1198-28289) such that it"
      * section 1..1
      * section only SocialHistorySection
        * ^requirements = "SHALL contain exactly one [1..1] Social History Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.17:2015-08-01) (CONF:1198-28290)."
    * component[vitalSigns] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-28291) such that it"
      * section 1..1
      * section only VitalSignsSectionEntriesRequired
        * ^requirements = "SHALL contain exactly one [1..1] Vital Signs Section (entries required) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.4.1:2015-08-01) (CONF:1198-28292)."
    * component[mentalStatus] ^requirements = "This structuredBody SHOULD contain zero or one [0..1] component (CONF:1198-28327) such that it"
      * section 1..1
      * section only MentalStatusSection
        * ^requirements = "SHALL contain exactly one [1..1] Mental Status Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.56:2015-08-01) (CONF:1198-28328)."
    * component[generalStatus] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-28838) such that it"
      * section 1..1
      * section only GeneralStatusSection
        * ^requirements = "SHALL contain exactly one [1..1] General Status Section (identifier: urn:oid:2.16.840.1.113883.10.20.2.5) (CONF:1198-28839)."
    * component[reviewOfSystems] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30239) such that it"
      * section 1..1
      * section only ReviewofSystemsSection
        * ^requirements = "SHALL contain exactly one [1..1] Review of Systems Section (identifier: urn:oid:1.3.6.1.4.1.19376.1.5.3.1.3.18) (CONF:1198-30240)."
    * component[nutrition] ^requirements = "This structuredBody SHOULD contain zero or one [0..1] component (CONF:1198-30776) such that it"
      * section 1..1
      * section only NutritionSection
        * ^requirements = "SHALL contain exactly one [1..1] Nutrition Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.57) (CONF:1198-30777)."
    * component[reasonForReferral] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-31342) such that it"
      * section 1..1
      * section only ReasonforReferralSection
        * ^requirements = "SHALL contain exactly one [1..1] Reason for Referral Section (V2) (identifier: urn:hl7ii:1.3.6.1.4.1.19376.1.5.3.1.3.1:2014-06-09) (CONF:1198-31343)."
    * component[pastMedicalHistory] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-31561) such that it"
      * section 1..1
      * section only PastMedicalHistory
        * ^requirements = "SHALL contain exactly one [1..1] Past Medical History (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.20:2015-08-01) (CONF:1198-31562)."
    * component[historyOfPresentIllness] ^requirements = "This structuredBody SHOULD contain zero or one [0..1] component (CONF:1198-31563) such that it"
      * section 1..1
      * section only HistoryofPresentIllnessSection
        * ^requirements = "SHALL contain exactly one [1..1] History of Present Illness Section (identifier: urn:oid:1.3.6.1.4.1.19376.1.5.3.1.3.4) (CONF:1198-31564)."
    * component[assessmentAndPlan] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-31565) such that it"
      * section 1..1
      * section only AssessmentandPlanSection
        * ^requirements = "SHALL contain exactly one [1..1] Assessment and Plan Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.9:2014-06-09) (CONF:1198-31566)."
    * component[assessment] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-31567) such that it"
      * section 1..1
      * section only AssessmentSection
        * ^requirements = "SHALL contain exactly one [1..1] Assessment Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.8) (CONF:1198-31568)."
    * component[admissionMedications] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-32445) such that it"
      * section 1..1
      * section only AdmissionMedicationsSectionentriesoptional
        * ^requirements = "SHALL contain exactly one [1..1] Admission Medications Section (entries optional) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.44:2015-08-01) (CONF:1198-32446)."
    * component[admissionDiagnosis] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-32447) such that it"
      * section 1..1
      * section only AdmissionDiagnosisSection
        * ^requirements = "SHALL contain exactly one [1..1] Admission Diagnosis Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.43:2015-08-01) (CONF:1198-32448)."
    * component[courseOfCare] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-32648) such that it"
      * section 1..1
      * section only CourseofCareSection
        * ^requirements = "SHALL contain exactly one [1..1] Course of Care Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.64) (CONF:1198-32649)."

Invariant: 1198-32946
Description: "When asserting this templateId, all C-CDA 2.1 section and entry templates that had a previous version in C-CDA R1.1 **SHALL** include both the C-CDA 2.1 templateId and the C-CDA R1.1 templateId root without an extension. See C-CDA R2.1 Volume 1 - Design Considerations for additional detail (CONF:1198-32946)."
Severity: #error

Invariant: 1198-31582
Description: "This structuredBody **SHALL** contain an Assessment and Plan Section (V2) (2.16.840.1.113883.10.20.22.2.9:2014-06-09), or an Assessment Section (2.16.840.1.113883.10.20.22.2.8) and a Plan of Treatment Section (V2) (2.16.840.1.113883.10.20.22.2.10:2014-06-09) (CONF:1198-31582)."
Severity: #error

Invariant: 1198-31583
Description: "This structuredBody **SHALL NOT** contain an Assessment and Plan Section (V2) (2.16.840.1.113883.10.20.22.2.9:2014-06-09) when either an Assessment Section (2.16.840.1.113883.10.20.22.2.8) or a Plan of Treatment Section (V2) (2.16.840.1.113883.10.20.22.2.10:2014-06-09) is present (CONF:1198-31583)."
Severity: #error