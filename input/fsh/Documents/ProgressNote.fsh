Profile: ProgressNote
Parent: USRealmHeader
Id: 2.16.840.1.113883.10.20.22.1.9
Title: "Progress Note"
Description: """This template represents a patient's clinical status during a hospitalization, outpatient visit, treatment with a LTPAC provider, or other healthcare encounter.

Taber's medical dictionary defines a Progress Note as "An ongoing record of a patient's illness and treatment. Physicians, nurses, consultants, and therapists record their notes concerning the progress or lack of progress made by the patient between the time of the previous note and the most recent note."

Mosby's medical dictionary defines a Progress Note as "Notes made by a nurse, physician, social worker, physical therapist, and other health care professionals that describe the patient's condition and the treatment given or planned."

A Progress Note is not a re-evaluation note. A Progress Note is not intended to be a Progress Report for Medicare. Medicare B Section 1833(e) defines the requirements of a Medicare Progress Report."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.1.9:2015-08-01"
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
* templateId[secondary] obeys 1198-32942
  * ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-7588) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.1.9"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.1.9\" (CONF:1198-10052)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32521)."
* code 1..1
  * ^short = "The Progress Note recommends use of a single document type code, 11506-3 \"Subsequent evaluation note\", with further specification provided by author or performer, setting, or specialty. When pre-coordinated codes are used, any coded values describing the author or performer of the service act or the practice setting must be consistent with the LOINC document type."
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-17189)."
  * code 1..1
  * code from $2.16.840.1.113883.11.20.8.1 (required)
    * ^requirements = "This code SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ProgressNoteDocumentTypeCode http://hl7.org/fhir/ccda/ValueSet/2.16.840.1.113883.11.20.8.1 DYNAMIC (CONF:1198-17190)."
* documentationOf 0..1
  * ^short = "A documentationOf can contain a serviceEvent to further specialize the act inherent in the ClinicalDocument/code. In a Progress Note, a serviceEvent can represent the event of writing the Progress Note. The serviceEvent/effectiveTime is the time period the note documents."
  * ^requirements = "SHOULD contain zero or one [0..1] documentationOf (CONF:1198-7603)."
  * serviceEvent 1..1
    * ^requirements = "The documentationOf, if present, SHALL contain exactly one [1..1] serviceEvent (CONF:1198-7604)."
    * classCode 1..1
    * classCode = #PCPR
      * ^requirements = "This serviceEvent SHALL contain exactly one [1..1] @classCode=\"PCPR\" Care Provision (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1198-26420)."
    * templateId ^slicing.discriminator[0].type = #value
      * ^slicing.discriminator[=].path = "root"
      * ^slicing.rules = #open
    * effectiveTime 0..1
    * effectiveTime only USRealmDateandTimeDTUSFIELDED
      * obeys 1198-9482 and 1198-10066
      * ^requirements = "This serviceEvent SHOULD contain zero or one [0..1] US Realm Date and Time (DT.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.3) (CONF:1198-9481)."
* serviceEvent.ClinicalDocument.documentationOf.serviceEvent
  * templateId contains secondary 1..1
  * templateId[secondary] ^requirements = "This serviceEvent SHALL contain exactly one [1..1] templateId (CONF:1198-9480) such that it"
    * root 1..1
    * root = "2.16.840.1.113883.10.20.21.3.1"
      * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.21.3.1\" (CONF:1198-10068)."
* componentOf 1..1
  * ^short = "The Progress Note is always associated with an encounter by the componentOf/encompassingEncounter element in the header. The effectiveTime element for an encompassingEncounter represents the time or time interval in which the encounter took place. A single encounter may contain multiple Progress Notes; hence the effectiveTime elements for a Progress Note (recorded in serviceEvent) and for an encounter (recorded in encompassingEncounter) represent different time intervals. For outpatient encounters that are a point in time, set effectiveTime/high, effectiveTime/low, and effectiveTime/@value to the same time. All visits take place at a specific location. When available, the location ID is included in the encompassingEncounter/location/healthCareFacility/id element."
  * ^requirements = "SHALL contain exactly one [1..1] componentOf (CONF:1198-7595)."
  * encompassingEncounter 1..1
    * ^requirements = "This componentOf SHALL contain exactly one [1..1] encompassingEncounter (CONF:1198-7596)."
    * id 1..*
      * ^requirements = "This encompassingEncounter SHALL contain at least one [1..*] id (CONF:1198-7597)."
    * effectiveTime 1..1
    * effectiveTime only USRealmDateandTimeDTUSFIELDED
      * ^requirements = "This encompassingEncounter SHALL contain exactly one [1..1] US Realm Date and Time (DT.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.3) (CONF:1198-7598)."
      * low 1..1
        * ^requirements = "This effectiveTime SHALL contain exactly one [1..1] low (CONF:1198-7599)."
    * location 1..1
      * ^requirements = "This encompassingEncounter SHALL contain exactly one [1..1] location (CONF:1198-30879)."
      * healthCareFacility 1..1
        * ^requirements = "This location SHALL contain exactly one [1..1] healthCareFacility (CONF:1198-30880)."
        * id 1..*
          * ^requirements = "This healthCareFacility SHALL contain at least one [1..*] id (CONF:1198-30881)."
* component 1..1
  * ^requirements = "SHALL contain exactly one [1..1] component (CONF:1198-9591)."
  * structuredBody 1..1
    * obeys 1198-30657 and 1198-30658
    * ^short = "In this template (templateId 2.16.840.1.113883.10.20.22.1.9.2), coded entries are optional"
    * ^requirements = "This component SHALL contain exactly one [1..1] structuredBody (CONF:1198-30617)."
    * component ^slicing.discriminator[0].type = #value
      * ^slicing.discriminator[=].path = "ClinicalDocument.section"
      * ^slicing.rules = #open
    * component contains component1 0..1
    * component[component1] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30618)."
      * section 1..1
      * section only AssessmentSection
        * ^requirements = "The component, if present, SHALL contain exactly one [1..1] Assessment Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.8) (CONF:1198-30619)."
* structuredBody.ClinicalDocument.component.structuredBody
  * component contains
      component2 0..1 and
      component3 0..1 and
      component4 0..1 and
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
      component16 0..1
  * component[component2] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30620) such that it"
    * section 1..1
    * section only PlanofTreatmentSection
      * ^requirements = "SHALL contain exactly one [1..1] Plan of Treatment Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.10:2014-06-09) (CONF:1198-30621)."
  * component[component3] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30622) such that it"
    * section 1..1
    * section only AssessmentandPlanSection
      * ^requirements = "SHALL contain exactly one [1..1] Assessment and Plan Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.9:2014-06-09) (CONF:1198-30623)."
  * component[component4] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30624) such that it"
    * section 1..1
    * section only AllergiesAndIntolerancesSectionEntriesOptional
      * ^requirements = "SHALL contain exactly one [1..1] Allergies and Intolerances Section (entries optional) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.6:2015-08-01) (CONF:1198-30625)."
  * component[component5] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30626) such that it"
    * section 1..1
    * section only ChiefComplaintSection
      * ^requirements = "SHALL contain exactly one [1..1] Chief Complaint Section (identifier: urn:oid:1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1) (CONF:1198-30627)."
  * component[component6] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30628) such that it"
    * section 1..1
    * section only InterventionsSection
      * ^requirements = "SHALL contain exactly one [1..1] Interventions Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.21.2.3:2015-08-01) (CONF:1198-30629)."
  * component[component7] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30639) such that it"
    * section 1..1
    * section only InstructionsSection
      * ^requirements = "SHALL contain exactly one [1..1] Instructions Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.45:2014-06-09) (CONF:1198-31386)."
  * component[component8] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30641) such that it"
    * section 1..1
    * section only MedicationsSectionEntriesOptional
      * ^requirements = "SHALL contain exactly one [1..1] Medications Section (entries optional) (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.1:2014-06-09) (CONF:1198-30642)."
  * component[component9] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30643) such that it"
    * section 1..1
    * section only ObjectiveSection
      * ^requirements = "SHALL contain exactly one [1..1] Objective Section (identifier: urn:oid:2.16.840.1.113883.10.20.21.2.1) (CONF:1198-30644)."
  * component[component10] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30645) such that it"
    * section 1..1
    * section only PhysicalExamSection
      * ^requirements = "SHALL contain exactly one [1..1] Physical Exam Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.2.10:2015-08-01) (CONF:1198-30646)."
  * component[component11] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30647) such that it"
    * section 1..1
    * section only ProblemSectionEntriesOptional
      * ^requirements = "SHALL contain exactly one [1..1] Problem Section (entries optional) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.5:2015-08-01) (CONF:1198-30648)."
  * component[component12] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30649) such that it"
    * section 1..1
    * section only ResultsSectionEntriesOptional
      * ^requirements = "SHALL contain exactly one [1..1] Results Section (entries optional) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.3:2015-08-01) (CONF:1198-30650)."
  * component[component13] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30651) such that it"
    * section 1..1
    * section only ReviewofSystemsSection
      * ^requirements = "SHALL contain exactly one [1..1] Review of Systems Section (identifier: urn:oid:1.3.6.1.4.1.19376.1.5.3.1.3.18) (CONF:1198-30652)."
  * component[component14] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30653) such that it"
    * section 1..1
    * section only SubjectiveSection
      * ^requirements = "SHALL contain exactly one [1..1] Subjective Section (identifier: urn:oid:2.16.840.1.113883.10.20.21.2.2) (CONF:1198-30654)."
  * component[component15] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30655) such that it"
    * section 1..1
    * section only VitalSignsSectionEntriesOptional
      * ^requirements = "SHALL contain exactly one [1..1] Vital Signs Section (entries optional) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.4:2015-08-01) (CONF:1198-30656)."
  * component[component16] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-32626) such that it"
    * section 1..1
    * section only NutritionSection
      * ^requirements = "SHALL contain exactly one [1..1] Nutrition Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.57) (CONF:1198-32627)."

Invariant: 1198-32942
Description: "When asserting this templateId, all C-CDA 2.1 section and entry templates that had a previous version in C-CDA R1.1 **SHALL** include both the C-CDA 2.1 templateId and the C-CDA R1.1 templateId root without an extension. See C-CDA R2.1 Volume 1 - Design Considerations for additional detail (CONF:1198-32942)."
Severity: #error

Invariant: 1198-9482
Description: "The serviceEvent/effectiveTime element **SHOULD** be present with effectiveTime/low element (CONF:1198-9482)."
Severity: #warning

Invariant: 1198-10066
Description: "If a width element is not present, the serviceEvent **SHALL** include effectiveTime/high (CONF:1198-10066)."
Severity: #error

Invariant: 1198-30657
Description: "This structuredBody **SHALL** contain an Assessment and Plan Section (V2) (2.16.840.1.113883.10.20.22.2.9:2014-06-09), or an Assessment Section (2.16.840.1.113883.10.20.22.2.8) and a Plan of Treatment Section (V2) (2.16.840.1.113883.10.20.22.2.10:2014-06-09) (CONF:1198-30657)."
Severity: #error

Invariant: 1198-30658
Description: "This structuredBody **SHALL NOT** contain an Assessment and Plan Section (V2) (2.16.840.1.113883.10.20.22.2.9:2014-06-09) when either an Assessment Section (2.16.840.1.113883.10.20.22.2.8) or a Plan of Treatment Section (V2) (2.16.840.1.113883.10.20.22.2.10:2014-06-09) is present (CONF:1198-30658)."
Severity: #error