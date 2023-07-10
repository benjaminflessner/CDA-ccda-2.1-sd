Profile: ConsultationNote
Parent: USRealmHeader
Id: 2.16.840.1.113883.10.20.22.1.4
Title: "Consultation Note"
Description: """The Consultation Note is generated by a request from a clinician for an opinion or advice from another clinician. Consultations may involve face-to-face time with the patient or may fall under the auspices of telemedicine visits. Consultations may occur while the patient is inpatient or ambulatory. The Consultation Note should also be used to summarize an Emergency Room or Urgent Care encounter.

A Consultation Note includes the reason for the referral, history of present illness, physical examination, and decision-making components (Assessment and Plan)."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.1.4:2015-08-01"
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
* templateId contains secondary 1..1
* templateId[secondary] obeys 1198-32935
  * ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-8375) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.1.4"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.1.4\" (CONF:1198-10040)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32502)."
* code 1..1
* code from $2.16.840.1.113883.11.20.9.31 (required)
  * ^short = "The Consultation Note recommends use of  the document type code 11488-4 \"Consult Note\", with further specification provided by author or performer, setting, or specialty. When pre-coordinated codes are used, any coded values describing the author or performer of the service act or the practice setting must be consistent with the LOINC document type."
  * ^requirements = "SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet ConsultDocumentType http://hl7.org/fhir/ccda/ValueSet/2.16.840.1.113883.11.20.9.31 DYNAMIC (CONF:1198-17176)."
* participant ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "ClinicalDocument.typeCode"
  * ^slicing.rules = #open
  * ^short = "This participant represents the person to contact for questions about the consult summary. This call back contact individual may be a different person than the individual(s) identified in the author or legalAuthenticator participant."
* participant[participant1] 0..*
  * ^requirements = "SHOULD contain zero or more [0..*] participant (CONF:1198-31656) such that it"
  * associatedEntity 1..1
    * ^requirements = "SHALL contain exactly one [1..1] associatedEntity (CONF:1198-31658)."
    * classCode 1..1
    * classCode = #ASSIGNED
      * ^requirements = "This associatedEntity SHALL contain exactly one [1..1] @classCode=\"ASSIGNED\" assigned entity (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110 DYNAMIC) (CONF:1198-31659)."
    * id 1..*
      * ^requirements = "This associatedEntity SHALL contain at least one [1..*] id (CONF:1198-31660)."
    * addr 0..*
      * ^requirements = "This associatedEntity SHOULD contain zero or more [0..*] addr (CONF:1198-31661)."
    * telecom 1..*
      * ^requirements = "This associatedEntity SHALL contain at least one [1..*] telecom (CONF:1198-31662)."
    * associatedPerson 1..1
      * ^requirements = "This associatedEntity SHALL contain exactly one [1..1] associatedPerson (CONF:1198-31663)."
      * name 1..*
        * ^requirements = "This associatedPerson SHALL contain at least one [1..*] name (CONF:1198-31664)."
    * scopingOrganization 0..1
      * ^requirements = "This associatedEntity MAY contain zero or one [0..1] scopingOrganization (CONF:1198-31665)."
* ClinicalDocument.participant[participant1].typeCode 1..1
* ClinicalDocument.participant[participant1].typeCode = "CALLBCK"
  * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"CALLBCK\" call back contact (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 DYNAMIC) (CONF:1198-31657)."
* inFulfillmentOf 1..*
  * ^short = "The inFulfillmentOf element describes prior orders that are fulfilled (in whole or part) by the service events described in the Consultation Note. For example, a prior order might be the consultation that is being reported in the note."
  * ^requirements = "SHALL contain at least one [1..*] inFulfillmentOf (CONF:1198-8382)."
  * order 1..1
    * ^requirements = "Such inFulfillmentOfs SHALL contain exactly one [1..1] order (CONF:1198-29923)."
    * id 1..*
      * ^short = "Where a referral is being fulfilled by this consultation, this id would be the same as the id in the Patient Referral Act template."
      * ^requirements = "This order SHALL contain at least one [1..*] id (CONF:1198-29924)."
* componentOf 1..1
  * ^short = "A Consultation Note is always associated with an encounter; the id element of the encompassingEncounter is required to be present and represents the identifier for the encounter."
  * ^requirements = "SHALL contain exactly one [1..1] componentOf (CONF:1198-8386)."
  * encompassingEncounter 1..1
    * ^requirements = "This componentOf SHALL contain exactly one [1..1] encompassingEncounter (CONF:1198-8387)."
    * id 1..*
      * ^requirements = "This encompassingEncounter SHALL contain at least one [1..*] id (CONF:1198-8388)."
    * effectiveTime 1..1
    * effectiveTime only USRealmDateandTimeDTUSFIELDED
      * ^requirements = "This encompassingEncounter SHALL contain exactly one [1..1] US Realm Date and Time (DT.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.3) (CONF:1198-8389)."
    * responsibleParty 0..1
      * ^requirements = "This encompassingEncounter MAY contain zero or one [0..1] responsibleParty (CONF:1198-8391)."
      * assignedEntity 1..1
        * obeys 1198-32905
        * ^requirements = "The responsibleParty, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1198-32904)."
    * encounterParticipant 0..*
      * ^short = "The encounterParticipant element represents persons who participated in the encounter and not necessarily the entire episode of care."
      * ^requirements = "This encompassingEncounter MAY contain zero or more [0..*] encounterParticipant (CONF:1198-8392)."
      * assignedEntity 1..1
        * obeys 1198-32906
        * ^requirements = "The encounterParticipant, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1198-32902)."
* component 1..1
  * ^requirements = "SHALL contain exactly one [1..1] component (CONF:1198-8397)."
  * structuredBody 1..1
    * obeys 1198-28939 and 1198-28940 and 1198-9504 and 1198-9501
    * ^comment = "If structuredBody, the component/structuredBody SHALL conform to the section constraints below."
    * ^requirements = "This component SHALL contain exactly one [1..1] structuredBody (CONF:1198-28895)."
    * component ^slicing.discriminator[0].type = #profile
      * ^slicing.discriminator[=].path = "section"
      * ^slicing.rules = #open
    * component contains
        component1 0..1 and
        component2 0..1 and
        component3 0..1 and
        component4 0..1 and
        component5 1..1 and
        component6 0..1 and
        component7 1..1 and
        component8 0..1 and
        component9 0..1 and
        component10 0..1 and
        component11 0..1 and
        component12 0..1 and
        component13 0..1 and
        component14 0..1 and
        component15 1..1 and
        component16 0..1 and
        component17 0..1 and
        component18 0..1 and
        component19 0..1 and
        component25 0..1 and
        component20 0..1 and
        component21 0..1 and
        component22 0..1 and
        component23 0..1 and
        component24 0..1
    * component[component1] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-28896) such that it"
      * section 1..1
      * section only AssessmentSection
        * ^requirements = "The component, if present, SHALL contain exactly one [1..1] Assessment Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.8) (CONF:1198-28897)."
    * component[component2] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-28898) such that it"
      * section 1..1
      * section only AssessmentandPlanSection
        * ^requirements = "SHALL contain exactly one [1..1] Assessment and Plan Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.9:2014-06-09) (CONF:1198-28899)."
    * component[component3] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-28900) such that it"
      * section 1..1
      * section only PlanofTreatmentSection
        * ^requirements = "SHALL contain exactly one [1..1] Plan of Treatment Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.10:2014-06-09) (CONF:1198-28901)."
    * component[component4] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-28904) such that it"
      * section 1..1
      * section only ReasonforVisitSection
        * ^requirements = "SHALL contain exactly one [1..1] Reason for Visit Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.12) (CONF:1198-28905)."
    * component[component5] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-28906) such that it"
      * section 1..1
      * section only HistoryofPresentIllnessSection
        * ^requirements = "SHALL contain exactly one [1..1] History of Present Illness Section (identifier: urn:oid:1.3.6.1.4.1.19376.1.5.3.1.3.4) (CONF:1198-28907)."
    * component[component6] ^requirements = "This structuredBody SHOULD contain zero or one [0..1] component (CONF:1198-28908) such that it"
      * section 1..1
      * section only PhysicalExamSection
        * ^requirements = "SHALL contain exactly one [1..1] Physical Exam Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.2.10:2015-08-01) (CONF:1198-28909)."
    * component[component7] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-28910) such that it"
      * section 1..1
      * section only AllergiesAndIntolerancesSectionEntriesRequired
        * ^requirements = "SHALL contain exactly one [1..1] Allergies and Intolerances Section (entries required) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.6.1:2015-08-01) (CONF:1198-28911)."
    * component[component8] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-28912) such that it"
      * section 1..1
      * section only ChiefComplaintSection
        * ^requirements = "SHALL contain exactly one [1..1] Chief Complaint Section (identifier: urn:oid:1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1) (CONF:1198-28913)."
    * component[component9] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-28915) such that it"
      * section 1..1
      * section only ChiefComplaintandReasonforVisitSection
        * ^requirements = "SHALL contain exactly one [1..1] Chief Complaint and Reason for Visit Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.13) (CONF:1198-28916)."
    * component[component10] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-28917) such that it"
      * section 1..1
      * section only FamilyHistorySection
        * ^requirements = "SHALL contain exactly one [1..1] Family History Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.15:2015-08-01) (CONF:1198-28918)."
    * component[component11] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-28919) such that it"
      * section 1..1
      * section only GeneralStatusSection
        * ^requirements = "SHALL contain exactly one [1..1] General Status Section (identifier: urn:oid:2.16.840.1.113883.10.20.2.5) (CONF:1198-28920)."
    * component[component12] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-28921) such that it"
      * section 1..1
      * section only PastMedicalHistory
        * ^requirements = "SHALL contain exactly one [1..1] Past Medical History (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.20:2015-08-01) (CONF:1198-28922)."
    * component[component13] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-28923) such that it"
      * section 1..1
      * section only ImmunizationsSectionEntriesOptional
        * ^requirements = "SHALL contain exactly one [1..1] Immunizations Section (entries optional) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.2:2015-08-01) (CONF:1198-28924)."
    * component[component14] ^requirements = "This structuredBody SHOULD contain zero or one [0..1] component (CONF:1198-28925) such that it"
      * section 1..1
      * section only MedicationsSectionEntriesRequired
        * ^requirements = "SHALL contain exactly one [1..1] Medications Section (entries required) (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.1.1:2014-06-09) (CONF:1198-28926)."
    * component[component15] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-28928) such that it"
      * section 1..1
      * section only ProblemSectionEntriesRequired
        * ^requirements = "SHALL contain exactly one [1..1] Problem Section (entries required) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.5.1:2015-08-01) (CONF:1198-28929)."
    * component[component16] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-28930) such that it"
      * section 1..1
      * section only ProceduresSectionEntriesOptional
        * ^requirements = "SHALL contain exactly one [1..1] Procedures Section (entries optional) (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.7:2014-06-09) (CONF:1198-28931)."
    * component[component17] ^requirements = "This structuredBody SHOULD contain zero or one [0..1] component (CONF:1198-28932) such that it"
      * section 1..1
      * section only ResultsSectionEntriesRequired
        * ^requirements = "SHALL contain exactly one [1..1] Results Section (entries required) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.3.1:2015-08-01) (CONF:1198-28933)."
    * component[component18] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-28934) such that it"
      * section 1..1
      * section only SocialHistorySection
        * ^requirements = "SHALL contain exactly one [1..1] Social History Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.17:2015-08-01) (CONF:1198-28935)."
    * component[component19] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-28936) such that it"
      * section 1..1
      * section only VitalSignsSectionEntriesRequired
        * ^requirements = "SHALL contain exactly one [1..1] Vital Signs Section (entries required) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.4.1:2015-08-01) (CONF:1198-28937)."
    * component[component25] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-28942) such that it"
      * section 1..1
      * section only AdvanceDirectivesSectionEntriesOptional
        * ^requirements = "SHALL contain exactly one [1..1] Advance Directives Section (entries optional) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.21:2015-08-01) (CONF:1198-28943)."
    * component[component20] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-28944) such that it"
      * section 1..1
      * section only FunctionalStatusSection
        * ^requirements = "SHALL contain exactly one [1..1] Functional Status Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.14:2014-06-09) (CONF:1198-28945)."
    * component[component21] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30237) such that it"
      * section 1..1
      * section only ReviewofSystemsSection
        * ^requirements = "SHALL contain exactly one [1..1] Review of Systems Section (identifier: urn:oid:1.3.6.1.4.1.19376.1.5.3.1.3.18) (CONF:1198-30238)."
    * component[component22] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30904) such that it"
      * section 1..1
      * section only MedicalEquipmentSection
        * ^requirements = "SHALL contain exactly one [1..1] Medical Equipment Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.23:2014-06-09) (CONF:1198-30905)."
    * component[component23] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30906) such that it"
      * section 1..1
      * section only MentalStatusSection
        * ^requirements = "SHALL contain exactly one [1..1] Mental Status Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.56:2015-08-01) (CONF:1198-30907)."
    * component[component24] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30909) such that it"
      * section 1..1
      * section only NutritionSection
        * ^requirements = "SHALL contain exactly one [1..1] Nutrition Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.57) (CONF:1198-30910)."

Invariant: 1198-32935
Description: "When asserting this templateId, all C-CDA 2.1 section and entry templates that had a previous version in C-CDA R1.1 **SHALL** include both the C-CDA 2.1 templateId and the C-CDA R1.1 templateId root without an extension. See C-CDA R2.1 Volume 1 - Design Considerations for additional detail (CONF:1198-32935)."
Severity: #error

Invariant: 1198-32905
Description: "This assignedEntity SHALL contain an assignedPerson or a representedOrganization or both (CONF:1198-32905)."
Severity: #error

Invariant: 1198-32906
Description: "This assignedEntity SHALL contain an assignedPerson or a representedOrganization or both (CONF:1198-32906)."
Severity: #error

Invariant: 1198-28939
Description: "This structuredBody **SHALL NOT** contain an Assessment and Plan Section (V2) (2.16.840.1.113883.10.20.22.2.9:2014-06-09) when either an Assessment Section (2.16.840.1.113883.10.20.22.2.8) or a Plan of Treatment Section (V2) (2.16.840.1.113883.10.20.22.2.10:2014-06-09) is present (CONF:1198-28939)."
Severity: #error

Invariant: 1198-28940
Description: "This structuredBody **SHALL NOT** contain a Chief Complaint and Reason for Visit Section (2.16.840.1.113883.10.20.22.2.13) when either a Chief Complaint Section (1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1) or a Reason for Visit Section (2.16.840.1.113883.10.20.22.2.12) is present (CONF:1198-28940)."
Severity: #error

Invariant: 1198-9504
Description: "**SHALL** include a Reason for Referral or Reason for Visit section (CONF:1198-9504)."
Severity: #error

Invariant: 1198-9501
Description: "**SHALL** include an Assessment and Plan Section, or both an Assessment Section and a Plan of Treatment Section (CONF:1198-9501)."
Severity: #error