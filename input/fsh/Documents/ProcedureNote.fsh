Profile: ProcedureNote
Parent: USRealmHeader
Id: 2.16.840.1.113883.10.20.22.1.6
Title: "Procedure Note"
Description: """A Procedure Note encompasses many types of non-operative procedures including interventional cardiology, gastrointestinal endoscopy, osteopathic manipulation, and many other specialty fields. Procedure Notes are differentiated from Operative Notes because they do not involve incision or excision as the primary act.

The Procedure Note is created immediately following a non-operative procedure. It records the indications for the procedure and, when applicable, postprocedure diagnosis, pertinent events of the procedure, and the patient's tolerance for the procedure. It should be detailed enough to justify the procedure, describe the course of the procedure, and provide continuity of care."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.1.6:2015-08-01"
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
* templateId[secondary] obeys 1198-32941
  * ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-8496) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.1.6"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.1.6\" (CONF:1198-10050)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32520)."
* code 1..1
  * ^short = "The Procedure Note recommends use of a single document type code, 28570-0 \"Procedure Note\", with further specification provided by author or performer, setting, or specialty. When pre-coordinated codes are used, any coded values describing the author or performer of the service act or the practice setting must be consistent with the LOINC document type."
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-17182)."
  * code 1..1
  * code from $2.16.840.1.113883.11.20.6.1 (required)
    * ^requirements = "This code SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ProcedureNoteDocumentTypeCodes http://hl7.org/fhir/ccda/ValueSet/2.16.840.1.113883.11.20.6.1 DYNAMIC (CONF:1198-17183)."
* participant ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "associatedEntity.classCode"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "typeCode"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "functionCode"
  * ^slicing.rules = #open
  * ^short = "The participant element in the Procedure Note header follows the General Header Constraints for participants."
* participant[participant1] 0..*
  * ^requirements = "MAY contain zero or more [0..*] participant (CONF:1198-8504) such that it"
  * typeCode 1..1
  * typeCode = #IND
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"IND\" Individual (CodeSystem: HL7ParticipationFunction urn:oid:2.16.840.1.113883.5.88 STATIC) (CONF:1198-8505)."
  * functionCode 1..1
  * functionCode = "PCP"
    * ^requirements = "SHALL contain exactly one [1..1] functionCode=\"PCP\" Primary Care Physician (CodeSystem: HL7ParticipationFunction urn:oid:2.16.840.1.113883.5.88 STATIC) (CONF:1198-8506)."
  * associatedEntity.classCode 1..1
  * associatedEntity.classCode = #PROV
    * ^requirements = "SHALL contain exactly one [1..1] associatedEntity/@classCode=\"PROV\" Provider (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:1198-8507)."
    * associatedPerson 1..1
      * ^requirements = "This associatedEntity/@classCode SHALL contain exactly one [1..1] associatedPerson (CONF:1198-8508)."
* documentationOf ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "serviceEvent"
  * ^slicing.rules = #open
  * ^short = "A serviceEvent is required in the Procedure Note to represent the main act, such as a colonoscopy or a cardiac stress study, being documented. It must be equivalent to or further specialize the value inherent in the ClinicalDocument/@code (such as where the ClinicalDocument/@code is simply \"Procedure Note\" and the procedure is \"colonoscopy\"), and it shall not conflict with the value inherent in the ClinicalDocument/@code, as such a conflict would create ambiguity. A serviceEvent/effectiveTime element indicates the time the actual event (as opposed to the encounter surrounding the event) took place. serviceEvent/effectiveTime may be represented two different ways in the Procedure Note. For accuracy to the second, the best method is effectiveTime/low together with effectiveTime/high. If a more general time, such as minutes or hours, is acceptable OR if the duration is unknown, an effectiveTime/low with a width element may be used. If the duration is unknown, the appropriate HL7 null value such as \"NI\" or \"NA\" must be used for the width element."
* documentationOf contains documentationOf1 1..*
  * serviceEvent.performer ^slicing.discriminator[0].type = #value
    * ^slicing.discriminator[=].path = "assignedEntity"
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "typeCode"
    * ^slicing.rules = #open
    * ^short = "This performer identifies any assistants."
* documentationOf[documentationOf1] ^requirements = "SHALL contain at least one [1..*] documentationOf (CONF:1198-8510) such that it"
  * serviceEvent 1..1
    * obeys 1198-8511
    * ^requirements = "SHALL contain exactly one [1..1] serviceEvent (CONF:1198-10061)."
    * effectiveTime 1..1
    * effectiveTime only USRealmDateandTimeDTUSFIELDED
      * obeys 1198-8513 and 1198-8514 and 1198-8515
      * ^requirements = "This serviceEvent SHALL contain exactly one [1..1] US Realm Date and Time (DT.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.3) (CONF:1198-10062)."
      * low 1..1
        * ^requirements = "This effectiveTime SHALL contain exactly one [1..1] low (CONF:1198-26449)."
* serviceEvent.ClinicalDocument.documentationOf.serviceEvent
  * performer contains
      performer1 1..1 and
      performer2 0..*
  * performer[performer1] ^short = "This performer participant represents clinicians who actually and principally carry out the serviceEvent. Typically, these are clinicians who have the appropriate privileges in their institutions such as gastroenterologists, interventional radiologists, and family practice physicians. Performers may also be non-physician providers (NPPs) who have other significant roles in the procedure such as a radiology technician, dental assistant, or nurse. Any assistants are identified as a secondary performer (SPRF) in a second performer participant."
    * ^requirements = "This serviceEvent SHALL contain exactly one [1..1] performer (CONF:1198-8520) such that it"
    * typeCode 1..1
    * typeCode = #PPRF
      * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"PPRF\" Primary Performer (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:1198-8521)."
    * assignedEntity 1..1
      * ^requirements = "SHALL contain exactly one [1..1] assignedEntity (CONF:1198-14911)."
      * code 0..1
      * code from $2.16.840.1.114222.4.11.1066 (required)
        * ^requirements = "This assignedEntity SHOULD contain zero or one [0..1] code, which SHALL be selected from ValueSet Healthcare Provider Taxonomy urn:oid:2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1198-14912)."
  * performer[performer2] ^requirements = "This serviceEvent MAY contain zero or more [0..*] performer (CONF:1198-32732) such that it"
    * typeCode 1..1
    * typeCode = #SPRF
      * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SPRF\" Secondary Performer (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:1198-32734)."
    * assignedEntity 1..1
      * ^requirements = "SHALL contain exactly one [1..1] assignedEntity (CONF:1198-32733)."
      * code 0..1
      * code from $2.16.840.1.114222.4.11.1066 (required)
        * ^requirements = "This assignedEntity SHOULD contain zero or one [0..1] code, which SHALL be selected from ValueSet Healthcare Provider Taxonomy urn:oid:2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1198-32735)."
* authorization 0..1
  * ^short = "Authorization represents consent. Consent, if present, shall be represented by authorization/consent."
  * ^requirements = "MAY contain zero or one [0..1] authorization (CONF:1198-32412)."
  * typeCode 1..1
  * typeCode = #AUTH
    * ^requirements = "The authorization, if present, SHALL contain exactly one [1..1] @typeCode=\"AUTH\" authorized by (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-32413)."
  * consent 1..1
    * ^requirements = "The authorization, if present, SHALL contain exactly one [1..1] consent (CONF:1198-32414)."
    * classCode 1..1
    * classCode = #CONS
      * ^requirements = "This consent SHALL contain exactly one [1..1] @classCode=\"CONS\" consent (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1198-32415)."
    * moodCode 1..1
    * moodCode = #EVN
      * ^requirements = "This consent SHALL contain exactly one [1..1] @moodCode=\"EVN\" event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1198-32416)."
    * statusCode 1..1
      * ^requirements = "This consent SHALL contain exactly one [1..1] statusCode (CONF:1198-32417)."
* componentOf 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] componentOf (CONF:1198-30871)."
  * encompassingEncounter 1..1
    * ^requirements = "The componentOf, if present, SHALL contain exactly one [1..1] encompassingEncounter (CONF:1198-30872)."
    * id 0..*
      * ^requirements = "This encompassingEncounter SHOULD contain zero or more [0..*] id (CONF:1198-32395)."
    * code 1..1
      * ^requirements = "This encompassingEncounter SHALL contain exactly one [1..1] code (CONF:1198-30873)."
    * encounterParticipant ^slicing.discriminator[0].type = #value
      * ^slicing.discriminator[=].path = "typeCode"
      * ^slicing.rules = #open
    * location 1..*
      * ^requirements = "This encompassingEncounter SHALL contain at least one [1..*] location (CONF:1198-30876)."
      * healthCareFacility 1..1
        * ^requirements = "Such locations SHALL contain exactly one [1..1] healthCareFacility (CONF:1198-30877)."
        * id 1..*
          * ^requirements = "This healthCareFacility SHALL contain at least one [1..*] id (CONF:1198-30878)."
* encompassingEncounter.ClinicalDocument.componentOf.encompassingEncounter
  * encounterParticipant contains encounterParticipant1 0..1
  * encounterParticipant[encounterParticipant1] ^requirements = "This encompassingEncounter MAY contain zero or one [0..1] encounterParticipant (CONF:1198-30874) such that it"
    * typeCode 1..1
    * typeCode = #REF
      * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REF\" Referrer (CONF:1198-30875)."
* component 1..1
  * ^requirements = "SHALL contain exactly one [1..1] component (CONF:1198-9588)."
  * structuredBody 1..1
    * obeys 1198-30412 and 1198-30414 and 1198-30415
    * ^requirements = "This component SHALL contain exactly one [1..1] structuredBody (CONF:1198-30352)."
    * component ^slicing.discriminator[0].type = #value
      * ^slicing.discriminator[=].path = "ClinicalDocument.section"
      * ^slicing.rules = #open
    * component contains component1 1..1
    * component[component1] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-30353)."
      * section 1..1
      * section only ComplicationsSection
        * ^requirements = "This component SHALL contain exactly one [1..1] Complications Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.37:2015-08-01) (CONF:1198-30387)."
* structuredBody.ClinicalDocument.component.structuredBody
  * component contains
      component2 1..1 and
      component3 1..1 and
      component4 1..1 and
      component5 0..1 and
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
      component26 0..1 and
      component27 0..1 and
      component28 0..1
  * component[component2] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-30355) such that it"
    * section 1..1
    * section only ProcedureDescriptionSection
      * ^requirements = "SHALL contain exactly one [1..1] Procedure Description Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.27) (CONF:1198-30356)."
  * component[component3] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-30357) such that it"
    * section 1..1
    * section only ProcedureIndicationsSection
      * ^requirements = "SHALL contain exactly one [1..1] Procedure Indications Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.29:2014-06-09) (CONF:1198-30358)."
  * component[component4] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-30359) such that it"
    * section 1..1
    * section only PostprocedureDiagnosisSection
      * ^requirements = "SHALL contain exactly one [1..1] Postprocedure Diagnosis Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.36:2015-08-01) (CONF:1198-30360)."
  * component[component5] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30361) such that it"
    * section 1..1
    * section only AssessmentSection
      * ^requirements = "SHALL contain exactly one [1..1] Assessment Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.8) (CONF:1198-30362)."
  * component[component6] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30363) such that it"
    * section 1..1
    * section only AssessmentandPlanSection
      * ^requirements = "SHALL contain exactly one [1..1] Assessment and Plan Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.9:2014-06-09) (CONF:1198-30364)."
  * component[component7] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30365) such that it"
    * section 1..1
    * section only PlanofTreatmentSection
      * ^requirements = "SHALL contain exactly one [1..1] Plan of Treatment Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.10:2014-06-09) (CONF:1198-30366)."
  * component[component8] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30367) such that it"
    * section 1..1
    * section only AllergiesAndIntolerancesSectionEntriesOptional
      * ^requirements = "SHALL contain exactly one [1..1] Allergies and Intolerances Section (entries optional) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.6:2015-08-01) (CONF:1198-30368)."
  * component[component9] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30369) such that it"
    * section 1..1
    * section only AnesthesiaSection
      * ^requirements = "SHALL contain exactly one [1..1] Anesthesia Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.25:2014-06-09) (CONF:1198-30370)."
  * component[component10] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30371) such that it"
    * section 1..1
    * section only ChiefComplaintSection
      * ^requirements = "SHALL contain exactly one [1..1] Chief Complaint Section (identifier: urn:oid:1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1) (CONF:1198-30372)."
  * component[component11] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30373) such that it"
    * section 1..1
    * section only ChiefComplaintandReasonforVisitSection
      * ^requirements = "SHALL contain exactly one [1..1] Chief Complaint and Reason for Visit Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.13) (CONF:1198-30374)."
  * component[component12] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30375) such that it"
    * section 1..1
    * section only FamilyHistorySection
      * ^requirements = "SHALL contain exactly one [1..1] Family History Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.15:2015-08-01) (CONF:1198-30376)."
  * component[component13] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30377) such that it"
    * section 1..1
    * section only PastMedicalHistory
      * ^requirements = "SHALL contain exactly one [1..1] Past Medical History (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.20:2015-08-01) (CONF:1198-30378)."
  * component[component14] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30379) such that it"
    * section 1..1
    * section only HistoryofPresentIllnessSection
      * ^requirements = "SHALL contain exactly one [1..1] History of Present Illness Section (identifier: urn:oid:1.3.6.1.4.1.19376.1.5.3.1.3.4) (CONF:1198-30380)."
  * component[component15] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30381) such that it"
    * section 1..1
    * section only MedicalGeneralHistorySection
      * ^requirements = "SHALL contain exactly one [1..1] Medical (General) History Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.39) (CONF:1198-30382)."
  * component[component16] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30383) such that it"
    * section 1..1
    * section only MedicationsSectionEntriesOptional
      * ^requirements = "SHALL contain exactly one [1..1] Medications Section (entries optional) (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.1:2014-06-09) (CONF:1198-30384)."
  * component[component17] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30388) such that it"
    * section 1..1
    * section only MedicationsAdministeredSection
      * ^requirements = "SHALL contain exactly one [1..1] Medications Administered Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.38:2014-06-09) (CONF:1198-30389)."
  * component[component18] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30390) such that it"
    * section 1..1
    * section only PhysicalExamSection
      * ^requirements = "SHALL contain exactly one [1..1] Physical Exam Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.2.10:2015-08-01) (CONF:1198-30391)."
  * component[component19] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30392) such that it"
    * section 1..1
    * section only PlannedProcedureSection
      * ^requirements = "SHALL contain exactly one [1..1] Planned Procedure Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.30:2014-06-09) (CONF:1198-30393)."
  * component[component20] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30394) such that it"
    * section 1..1
    * section only ProcedureDispositionSection
      * ^requirements = "SHALL contain exactly one [1..1] Procedure Disposition Section (identifier: urn:oid:2.16.840.1.113883.10.20.18.2.12) (CONF:1198-30395)."
  * component[component21] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30396) such that it"
    * section 1..1
    * section only ProcedureEstimatedBloodLossSection
      * ^requirements = "SHALL contain exactly one [1..1] Procedure Estimated Blood Loss Section (identifier: urn:oid:2.16.840.1.113883.10.20.18.2.9) (CONF:1198-30397)."
  * component[component22] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30398) such that it"
    * section 1..1
    * section only ProcedureFindingsSection
      * ^requirements = "SHALL contain exactly one [1..1] Procedure Findings Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.28:2015-08-01) (CONF:1198-30399)."
  * component[component23] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30400) such that it"
    * section 1..1
    * section only ProcedureImplantsSection
      * ^requirements = "SHALL contain exactly one [1..1] Procedure Implants Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.40) (CONF:1198-30401)."
  * component[component24] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30402) such that it"
    * section 1..1
    * section only ProcedureSpecimensTakenSection
      * ^requirements = "SHALL contain exactly one [1..1] Procedure Specimens Taken Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.31) (CONF:1198-30403)."
  * component[component25] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30404) such that it"
    * section 1..1
    * section only ProceduresSectionEntriesOptional
      * ^requirements = "SHALL contain exactly one [1..1] Procedures Section (entries optional) (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.7:2014-06-09) (CONF:1198-30405)."
  * component[component26] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30406) such that it"
    * section 1..1
    * section only ReasonforVisitSection
      * ^requirements = "SHALL contain exactly one [1..1] Reason for Visit Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.12) (CONF:1198-30407)."
  * component[component27] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30408) such that it"
    * section 1..1
    * section only ReviewofSystemsSection
      * ^requirements = "SHALL contain exactly one [1..1] Review of Systems Section (identifier: urn:oid:1.3.6.1.4.1.19376.1.5.3.1.3.18) (CONF:1198-30409)."
  * component[component28] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30410) such that it"
    * section 1..1
    * section only SocialHistorySection
      * ^requirements = "SHALL contain exactly one [1..1] Social History Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.17:2015-08-01) (CONF:1198-30411)."

Invariant: 1198-32941
Description: "When asserting this templateId, all C-CDA 2.1 section and entry templates that had a previous version in C-CDA R1.1 **SHALL** include both the C-CDA 2.1 templateId and the C-CDA R1.1 templateId root without an extension. See C-CDA R2.1 Volume 1 - Design Considerations for additional detail (CONF:1198-32941)."
Severity: #error

Invariant: 1198-8511
Description: "The value of Clinical Document /documentationOf/serviceEvent/code **SHALL** be from ICD9 CM Procedures (codeSystem 2.16.840.1.113883.6.104), CPT-4 (codeSystem 2.16.840.1.113883.6.12), or values descending from 71388002 (Procedure) from the SNOMED CT (codeSystem 2.16.840.1.113883.6.96) ValueSet 2.16.840.1.113883.3.88.12.80.28 Procedure *DYNAMIC* (CONF:1198-8511)."
Severity: #error

Invariant: 1198-8513
Description: "The serviceEvent/effectiveTime **SHALL** be present with effectiveTime/low (CONF:1198-8513)."
Severity: #error

Invariant: 1198-8514
Description: "If a width is not present, the serviceEvent/effectiveTime **SHALL** include effectiveTime/high (CONF:1198-8514)."
Severity: #error

Invariant: 1198-8515
Description: "When only the date and the length of the procedure are known a width element **SHALL** be present and the serviceEvent/effectiveTime/high **SHALL NOT** be present (CONF:1198-8515)."
Severity: #error

Invariant: 1198-30412
Description: "This structuredBody **SHALL** contain an Assessment and Plan Section (V2) (2.16.840.1.113883.10.20.22.2.9:2014-06-09), or an Assessment Section (2.16.840.1.113883.10.20.22.2.8) and a Plan of Treatment Section (V2) (2.16.840.1.113883.10.20.22.2.10:2014-06-09) (CONF:1198-30412)."
Severity: #error

Invariant: 1198-30414
Description: "This structuredBody **SHALL NOT** contain an Assessment and Plan Section (V2) (2.16.840.1.113883.10.20.22.2.9:2014-06-09) when either an Assessment Section (2.16.840.1.113883.10.20.22.2.8) or a Plan of Treatment Section (V2) (2.16.840.1.113883.10.20.22.2.10:2014-06-09) is present (CONF:1198-30414)."
Severity: #error

Invariant: 1198-30415
Description: "This structuredBody **SHALL NOT** contain a Chief Complaint and Reason for Visit Section (2.16.840.1.113883.10.20.22.2.13) when either a Chief Complaint Section (1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1) or a Reason for Visit Section (2.16.840.1.113883.10.20.22.2.12) is present (CONF:1198-30415)."
Severity: #error