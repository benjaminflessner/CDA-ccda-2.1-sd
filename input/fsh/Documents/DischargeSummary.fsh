Profile: DischargeSummary
Parent: USRealmHeader
Id: 2.16.840.1.113883.10.20.22.1.8
Title: "Discharge Summary"
Description: """The Discharge Summary is a document which synopsizes a patient's admission to a hospital, LTPAC provider, or other setting. It provides information for the continuation of care following discharge. The Joint Commission requires the following information to be included in the Discharge Summary (http://www.jointcommission.org/):
*  The reason for hospitalization (the admission)
*  The procedures performed, as applicable
*  The care, treatment, and services provided
*  The patients condition and disposition at discharge
*  Information provided to the patient and family
*  Provisions for follow-up care

The best practice for a Discharge Summary is to include the discharge disposition in the display of the header."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.1.8:2015-08-01"
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
* templateId[secondary] obeys 1198-32938
  * ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-8463) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.1.8"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.1.8\" (CONF:1198-10044)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32517)."
* code 1..1
  * ^short = "The Discharge Summary recommends use of a single document type code, 18842-5 \"Discharge summary\", with further specification provided by author or performer, setting, or specialty. When pre-coordinated codes are used, any coded values describing the author or performer of the service act or the practice setting must be consistent with the LOINC document type."
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-17178)."
  * code 1..1
  * code from $2.16.840.1.113883.11.20.4.1 (required)
    * ^requirements = "This code SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet DischargeSummaryDocumentTypeCode http://hl7.org/fhir/ccda/ValueSet/2.16.840.1.113883.11.20.4.1 DYNAMIC (CONF:1198-17179)."
* participant 0..*
  * obeys 1198-8469
  * ^short = "The participant element in the Discharge Summary header follows the General Header Constraints for participants. Discharge Summary does not specify any use for functionCode for participants. Local policies will determine how this element should be used in implementations."
  * ^requirements = "MAY contain zero or more [0..*] participant (CONF:1198-8467)."
* componentOf 1..1
  * ^short = "The Discharge Summary is always associated with a Hospital Admission using the encompassingEncounter element in the header."
  * ^requirements = "SHALL contain exactly one [1..1] componentOf (CONF:1198-8471)."
  * encompassingEncounter 1..1
    * ^requirements = "This componentOf SHALL contain exactly one [1..1] encompassingEncounter (CONF:1198-8472)."
    * effectiveTime 1..1
      * ^requirements = "This encompassingEncounter SHALL contain exactly one [1..1] effectiveTime (CONF:1198-32611)."
      * low 1..1
        * ^short = "The admission date is recorded in the componentOf/encompassingEncounter/effectiveTime/low."
        * ^requirements = "This effectiveTime SHALL contain exactly one [1..1] low (CONF:1198-8473)."
      * high 1..1
        * ^short = "The discharge date is recorded in the componentOf/encompassingEncounter/effectiveTime/high."
        * ^requirements = "This effectiveTime SHALL contain exactly one [1..1] high (CONF:1198-8475)."
    * dischargeDispositionCode 1..1
    * dischargeDispositionCode from $2.16.840.1.113883.3.88.12.80.33 (preferred)
      * ^short = "The dischargeDispositionCode records the disposition of the patient at time of discharge. Access to the National Uniform Billing Committee (NUBC) code system requires a membership. The following conformance statement aligns with HITSP C80 requirements. \n\nThe dischargeDispositionCode, @displayName, or NUBC UB-04 Print Name, must be displayed when the document is rendered."
      * ^requirements = "This encompassingEncounter SHALL contain exactly one [1..1] dischargeDispositionCode, which SHOULD be selected from ValueSet NUBC UB-04 FL17 Patient Status urn:oid:2.16.840.1.113883.3.88.12.80.33 DYNAMIC (CONF:1198-8476)."
    * responsibleParty 0..1
      * ^short = "The responsibleParty element represents only the party responsible for the encounter, not necessarily the entire episode of care."
      * ^requirements = "This encompassingEncounter MAY contain zero or one [0..1] responsibleParty (CONF:1198-8479)."
      * assignedEntity 1..1
        * obeys 1198-32898
        * ^requirements = "The responsibleParty, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1198-32613)."
    * encounterParticipant 0..*
      * ^short = "The encounterParticipant element represents persons who participated in the encounter and not necessarily the entire episode of care."
      * ^requirements = "This encompassingEncounter MAY contain zero or more [0..*] encounterParticipant (CONF:1198-8478)."
      * assignedEntity 1..1
        * obeys 1198-32899
        * ^requirements = "The encounterParticipant, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1198-32615)."
* component 1..1
  * ^requirements = "SHALL contain exactly one [1..1] component (CONF:1198-9539)."
  * structuredBody 1..1
    * obeys 1198-30569
    * ^short = "In this template (templateId 2.16.840.1.113883.10.20.22.1.8.2), coded entries are optional."
    * ^requirements = "This component SHALL contain exactly one [1..1] structuredBody (CONF:1198-30518)."
    * component ^slicing.discriminator[0].type = #value
      * ^slicing.discriminator[=].path = "ClinicalDocument.section"
      * ^slicing.rules = #open
    * component contains component1 1..1
    * component[component1] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-30519)."
      * section 1..1
      * section only AllergiesAndIntolerancesSectionEntriesOptional
        * ^requirements = "This component SHALL contain exactly one [1..1] Allergies and Intolerances Section (entries optional) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.6:2015-08-01) (CONF:1198-30520)."
* structuredBody.ClinicalDocument.component.structuredBody
  * component contains
      component2 1..1 and
      component3 1..1 and
      component4 0..1 and
      component5 1..1 and
      component6 0..1 and
      component7 0..1 and
      component8 0..1 and
      component9 0..1 and
      component10 0..1 and
      component11 0..1 and
      component12 0..1 and
      component13 0..1 and
      component14 0..1 and
      component15 0..1 and
      component16 0..1 and
      component17 0..1 and
      component18 0..1 and
      component19 0..1 and
      component20 0..1 and
      component21 0..1 and
      component22 0..1 and
      component23 0..1 and
      component24 0..1 and
      component25 0..1 and
      component26 0..1
  * component[component2] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-30521) such that it"
    * section 1..1
    * section only HospitalCourseSection
      * ^requirements = "SHALL contain exactly one [1..1] Hospital Course Section (identifier: urn:oid:1.3.6.1.4.1.19376.1.5.3.1.3.5) (CONF:1198-30522)."
  * component[component3] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-30523) such that it"
    * section 1..1
    * section only DischargeDiagnosisSection
      * ^requirements = "SHALL contain exactly one [1..1] Discharge Diagnosis Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.24:2015-08-01) (CONF:1198-30524)."
  * component[component4] ^requirements = "This structuredBody SHOULD contain zero or one [0..1] component (CONF:1198-30525) such that it"
    * section 1..1
    * section only DischargeMedicationsSectionentriesoptional
      * ^requirements = "SHALL contain exactly one [1..1] Discharge Medications Section (entries optional) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.11:2015-08-01) (CONF:1198-30526)."
  * component[component5] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-30527) such that it"
    * section 1..1
    * section only PlanofTreatmentSection
      * ^requirements = "SHALL contain exactly one [1..1] Plan of Treatment Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.10:2014-06-09) (CONF:1198-30528)."
  * component[component6] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30529) such that it"
    * section 1..1
    * section only ChiefComplaintSection
      * ^requirements = "SHALL contain exactly one [1..1] Chief Complaint Section (identifier: urn:oid:1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1) (CONF:1198-30530)."
  * component[component7] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30531) such that it"
    * section 1..1
    * section only ChiefComplaintandReasonforVisitSection
      * ^requirements = "SHALL contain exactly one [1..1] Chief Complaint and Reason for Visit Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.13) (CONF:1198-30532)."
  * component[component8] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30533) such that it"
    * section 1..1
    * section only NutritionSection
      * ^requirements = "SHALL contain exactly one [1..1] Nutrition Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.57) (CONF:1198-30534)."
  * component[component9] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30535) such that it"
    * section 1..1
    * section only FamilyHistorySection
      * ^requirements = "SHALL contain exactly one [1..1] Family History Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.15:2015-08-01) (CONF:1198-30536)."
  * component[component10] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30537) such that it"
    * section 1..1
    * section only FunctionalStatusSection
      * ^requirements = "SHALL contain exactly one [1..1] Functional Status Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.14:2014-06-09) (CONF:1198-30538)."
  * component[component11] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30539) such that it"
    * section 1..1
    * section only PastMedicalHistory
      * ^requirements = "SHALL contain exactly one [1..1] Past Medical History (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.20:2015-08-01) (CONF:1198-30540)."
  * component[component12] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30541) such that it"
    * section 1..1
    * section only HistoryofPresentIllnessSection
      * ^requirements = "SHALL contain exactly one [1..1] History of Present Illness Section (identifier: urn:oid:1.3.6.1.4.1.19376.1.5.3.1.3.4) (CONF:1198-30542)."
  * component[component13] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30543) such that it"
    * section 1..1
    * section only AdmissionDiagnosisSection
      * ^requirements = "SHALL contain exactly one [1..1] Admission Diagnosis Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.43:2015-08-01) (CONF:1198-30544)."
  * component[component14] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30545) such that it"
    * section 1..1
    * section only AdmissionMedicationsSectionentriesoptional
      * ^requirements = "SHALL contain exactly one [1..1] Admission Medications Section (entries optional) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.44:2015-08-01) (CONF:1198-30546)."
  * component[component15] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30547) such that it"
    * section 1..1
    * section only HospitalConsultationsSection
      * ^requirements = "SHALL contain exactly one [1..1] Hospital Consultations Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.42) (CONF:1198-30548)."
  * component[component16] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30549) such that it"
    * section 1..1
    * section only HospitalDischargeInstructionsSection
      * ^requirements = "SHALL contain exactly one [1..1] Hospital Discharge Instructions Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.41) (CONF:1198-30550)."
  * component[component17] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30551) such that it"
    * section 1..1
    * section only HospitalDischargePhysicalSection
      * ^requirements = "SHALL contain exactly one [1..1] Hospital Discharge Physical Section (identifier: urn:oid:1.3.6.1.4.1.19376.1.5.3.1.3.26) (CONF:1198-30552)."
  * component[component18] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30553) such that it"
    * section 1..1
    * section only HospitalDischargeStudiesSummarySection
      * ^requirements = "SHALL contain exactly one [1..1] Hospital Discharge Studies Summary Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.16) (CONF:1198-30554)."
  * component[component19] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30555) such that it"
    * section 1..1
    * section only ImmunizationsSectionEntriesOptional
      * ^requirements = "SHALL contain exactly one [1..1] Immunizations Section (entries optional) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.2:2015-08-01) (CONF:1198-30556)."
  * component[component20] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30557) such that it"
    * section 1..1
    * section only ProblemSectionEntriesOptional
      * ^requirements = "SHALL contain exactly one [1..1] Problem Section (entries optional) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.5:2015-08-01) (CONF:1198-30558)."
  * component[component21] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30559) such that it"
    * section 1..1
    * section only ProceduresSectionEntriesOptional
      * ^requirements = "SHALL contain exactly one [1..1] Procedures Section (entries optional) (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.7:2014-06-09) (CONF:1198-30560)."
  * component[component22] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30561) such that it"
    * section 1..1
    * section only ReasonforVisitSection
      * ^requirements = "SHALL contain exactly one [1..1] Reason for Visit Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.12) (CONF:1198-30562)."
  * component[component23] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30563) such that it"
    * section 1..1
    * section only ReviewofSystemsSection
      * ^requirements = "SHALL contain exactly one [1..1] Review of Systems Section (identifier: urn:oid:1.3.6.1.4.1.19376.1.5.3.1.3.18) (CONF:1198-30564)."
  * component[component24] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30565) such that it"
    * section 1..1
    * section only SocialHistorySection
      * ^requirements = "SHALL contain exactly one [1..1] Social History Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.17:2015-08-01) (CONF:1198-30566)."
  * component[component25] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30567) such that it"
    * section 1..1
    * section only VitalSignsSectionEntriesOptional
      * ^requirements = "SHALL contain exactly one [1..1] Vital Signs Section (entries optional) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.4:2015-08-01) (CONF:1198-30568)."
  * component[component26] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-31586) such that it"
    * section 1..1
    * section only DischargeMedicationsSectionentriesrequired
      * ^requirements = "SHALL contain exactly one [1..1] Discharge Medications Section (entries required) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.11.1:2015-08-01) (CONF:1198-31587)."

Invariant: 1198-32938
Description: "When asserting this templateId, all C-CDA 2.1 section and entry templates that had a previous version in C-CDA R1.1 **SHALL** include both the C-CDA 2.1 templateId and the C-CDA R1.1 templateId root without an extension. See C-CDA R2.1 Volume 1 - Design Considerations for additional detail (CONF:1198-32938)."
Severity: #error

Invariant: 1198-8469
Description: "When participant/@typeCode is IND, associatedEntity/@classCode **SHALL** be selected from ValueSet 2.16.840.1.113883.11.20.9.33 INDRoleclassCodes STATIC 2011-09-30 (CONF:1198-8469)."
Severity: #error

Invariant: 1198-32898
Description: "This assignedEntity **SHALL** contain an assignedPerson or a representedOrganization or both (CONF:1198-32898)."
Severity: #error

Invariant: 1198-32899
Description: "This assignedEntity **SHALL** contain an assignedPerson or a representedOrganization or both (CONF:1198-32899)."
Severity: #error

Invariant: 1198-30569
Description: "This structuredBody ***SHALL NOT*** contain a Chief Complaint and Reason for Visit Section (2.16.840.1.113883.10.20.22.2.13) when either a Chief Complaint Section (1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1) or a Reason for Visit Section (2.16.840.1.113883.10.20.22.2.12) is present (CONF:1198-30569)."
Severity: #error