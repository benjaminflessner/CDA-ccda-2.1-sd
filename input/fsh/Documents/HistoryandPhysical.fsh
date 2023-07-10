Profile: HistoryandPhysical
Parent: USRealmHeader
Id: 2.16.840.1.113883.10.20.22.1.3
Title: "History and Physical"
Description: """A History and Physical (H&P) note is a medical report that documents the current and past conditions of the patient. It contains essential information that helps determine an individual's health status.  
The first portion of the report is a current collection of organized information unique to an individual. This is typically supplied by the patient or the caregiver, concerning the current medical problem or the reason for the patient encounter. This information is followed by a description of any past or ongoing medical issues, including current medications and allergies. Information is also obtained about the patient's lifestyle, habits, and diseases among family members.
The next portion of the report contains information obtained by physically examining the patient and gathering diagnostic information in the form of laboratory tests, imaging, or other diagnostic procedures. 
The report ends with the clinician's assessment of the patient's situation and the intended plan to address those issues. 
A History and Physical Examination is required upon hospital admission as well as before operative procedures. An initial evaluation in an ambulatory setting is often documented in the form of an H&P note.
"""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.1.3:2015-08-01"
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
* templateId[secondary] obeys 1198-32939
  * ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-8283) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.1.3"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.1.3\" (CONF:1198-10046)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32518)."
* code 1..1
  * ^short = "The H&P Note recommends use of a single document type code, 34117-2 \"History and physical note\", with further specification provided by author or performer, setting, or specialty. When pre-coordinated codes are used, any coded values describing the author or performer of the service act or the practice setting must be consistent with the LOINC document type."
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-17185)."
  * code 1..1
  * code from $2.16.840.1.113883.1.11.20.22 (required)
    * ^requirements = "This code SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet HPDocumentType http://hl7.org/fhir/ccda/ValueSet/2.16.840.1.113883.1.11.20.22 DYNAMIC (CONF:1198-17186)."
* informationRecipient 0..*
  * ^requirements = "MAY contain zero or more [0..*] informationRecipient (CONF:1198-32482)."
  * intendedRecipient 1..1
    * ^requirements = "The informationRecipient, if present, SHALL contain exactly one [1..1] intendedRecipient (CONF:1198-32483)."
* participant 0..*
  * obeys 1198-8333
  * ^short = "The participant element in the H&P header follows the General Header Constraints for participants. H&P Note does not specify any use for functionCode for participants. Local policies will determine how this element should be used in implementations."
  * ^requirements = "MAY contain zero or more [0..*] participant (CONF:1198-8286)."
* inFulfillmentOf 0..*
  * ^short = "inFulfillmentOf elements describe the prior orders that are fulfilled (in whole or part) by the service events described in this document. For example, the prior order might be a referral and the H&P Note may be in partial fulfillment of that referral."
  * ^requirements = "MAY contain zero or more [0..*] inFulfillmentOf (CONF:1198-8336)."
* componentOf 1..1
  * ^short = "The H&P Note is always associated with an encounter."
  * ^requirements = "SHALL contain exactly one [1..1] componentOf (CONF:1198-8338)."
  * encompassingEncounter 1..1
    * ^requirements = "This componentOf SHALL contain exactly one [1..1] encompassingEncounter (CONF:1198-8339)."
    * id 1..*
      * ^requirements = "This encompassingEncounter SHALL contain at least one [1..*] id (CONF:1198-8340)."
    * effectiveTime 1..1
    * effectiveTime only USRealmDateandTimeDTUSFIELDED
      * ^short = "The effectiveTime represents the time interval or point in time in which the encounter took place."
      * ^requirements = "This encompassingEncounter SHALL contain exactly one [1..1] US Realm Date and Time (DT.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.3) (CONF:1198-8341)."
    * responsibleParty 0..1
      * obeys 1198-8348
      * ^short = "The responsibleParty element records only the party responsible for the encounter, not necessarily the entire episode of care."
      * ^requirements = "This encompassingEncounter MAY contain zero or one [0..1] responsibleParty (CONF:1198-8345)."
    * encounterParticipant 0..*
      * obeys 1198-8343
      * ^short = "The encounterParticipant elements represent only those participants in the encounter, not necessarily the entire episode of care."
      * ^requirements = "This encompassingEncounter MAY contain zero or more [0..*] encounterParticipant (CONF:1198-8342)."
    * location 0..1
      * ^requirements = "This encompassingEncounter MAY contain zero or one [0..1] location (CONF:1198-8344)."
* component 1..1
  * ^requirements = "SHALL contain exactly one [1..1] component (CONF:1198-8349)."
  * structuredBody 1..1
    * obeys 1198-30613 and 1198-30614 and 1198-30615 and 1198-30616
    * ^short = "In this template (templateId 2.16.840.1.113883.10.20.22.1.3.2), coded entries are optional."
    * ^requirements = "This component SHALL contain exactly one [1..1] structuredBody (CONF:1198-30570)."
    * component ^slicing.discriminator[0].type = #profile
      * ^slicing.discriminator[=].path = "section"
      * ^slicing.rules = #open
    * component contains
        component1 1..1 and
        component2 0..1 and
        component3 0..1 and
        component4 0..1 and
        component5 0..1 and
        component6 0..1 and
        component7 1..1 and
        component8 1..1 and
        component9 1..1 and
        component10 0..1 and
        component11 0..1 and
        component12 0..1 and
        component13 1..1 and
        component14 1..1 and
        component15 0..1 and
        component16 0..1 and
        component17 0..1 and
        component18 1..1 and
        component19 1..1 and
        component20 1..1 and
        component21 1..1
    * component[component1] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-30571)."
      * section 1..1
      * section only AllergiesAndIntolerancesSectionEntriesOptional
        * ^requirements = "SHALL contain exactly one [1..1] Allergies and Intolerances Section (entries optional) (V3) (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.6:2015-08-01) (CONF:1198-30572)."
    * component[component2] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30573) such that it"
      * section 1..1
      * section only AssessmentSection
        * ^requirements = "SHALL contain exactly one [1..1] Assessment Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.8) (CONF:1198-30574)."
    * component[component3] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30575) such that it"
      * section 1..1
      * section only PlanofTreatmentSection
        * ^requirements = "SHALL contain exactly one [1..1] Plan of Treatment Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.10:2014-06-09) (CONF:1198-30576)."
    * component[component4] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30577) such that it"
      * section 1..1
      * section only AssessmentandPlanSection
        * ^requirements = "SHALL contain exactly one [1..1] Assessment and Plan Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.9:2014-06-09) (CONF:1198-30578)."
    * component[component5] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30579) such that it"
      * section 1..1
      * section only ChiefComplaintSection
        * ^requirements = "SHALL contain exactly one [1..1] Chief Complaint Section (identifier: urn:oid:1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1) (CONF:1198-30580)."
    * component[component6] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30581) such that it"
      * section 1..1
      * section only ChiefComplaintandReasonforVisitSection
        * ^requirements = "SHALL contain exactly one [1..1] Chief Complaint and Reason for Visit Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.13) (CONF:1198-30582)."
    * component[component7] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-30583) such that it"
      * section 1..1
      * section only FamilyHistorySection
        * ^requirements = "SHALL contain exactly one [1..1] Family History Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.15:2015-08-01) (CONF:1198-30584)."
    * component[component8] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-30585) such that it"
      * section 1..1
      * section only GeneralStatusSection
        * ^requirements = "SHALL contain exactly one [1..1] General Status Section (identifier: urn:oid:2.16.840.1.113883.10.20.2.5) (CONF:1198-30586)."
    * component[component9] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-30587) such that it"
      * section 1..1
      * section only PastMedicalHistory
        * ^requirements = "SHALL contain exactly one [1..1] Past Medical History (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.20:2015-08-01) (CONF:1198-30588)."
    * component[component10] ^requirements = "This structuredBody SHOULD contain zero or one [0..1] component (CONF:1198-30589) such that it"
      * section 1..1
      * section only HistoryofPresentIllnessSection
        * ^requirements = "SHALL contain exactly one [1..1] History of Present Illness Section (identifier: urn:oid:1.3.6.1.4.1.19376.1.5.3.1.3.4) (CONF:1198-30590)."
    * component[component11] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30591) such that it"
      * section 1..1
      * section only ImmunizationsSectionEntriesOptional
        * ^requirements = "SHALL contain exactly one [1..1] Immunizations Section (entries optional) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.2:2015-08-01) (CONF:1198-30592)."
    * component[component12] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30593) such that it"
      * section 1..1
      * section only InstructionsSection
        * ^requirements = "SHALL contain exactly one [1..1] Instructions Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.45:2014-06-09) (CONF:1198-31385)."
    * component[component13] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-30595) such that it"
      * section 1..1
      * section only MedicationsSectionEntriesOptional
        * ^requirements = "SHALL contain exactly one [1..1] Medications Section (entries optional) (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.1:2014-06-09) (CONF:1198-30596)."
    * component[component14] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-30597) such that it"
      * section 1..1
      * section only PhysicalExamSection
        * ^requirements = "SHALL contain exactly one [1..1] Physical Exam Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.2.10:2015-08-01) (CONF:1198-30598)."
    * component[component15] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30599) such that it"
      * section 1..1
      * section only ProblemSectionEntriesOptional
        * ^requirements = "SHALL contain exactly one [1..1] Problem Section (entries optional) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.5:2015-08-01) (CONF:1198-30600)."
    * component[component16] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30601) such that it"
      * section 1..1
      * section only ProceduresSectionEntriesOptional
        * ^requirements = "SHALL contain exactly one [1..1] Procedures Section (entries optional) (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.7:2014-06-09) (CONF:1198-30602)."
    * component[component17] ^requirements = "This structuredBody MAY contain zero or one [0..1] component (CONF:1198-30603) such that it"
      * section 1..1
      * section only ReasonforVisitSection
        * ^requirements = "SHALL contain exactly one [1..1] Reason for Visit Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.12) (CONF:1198-30604)."
    * component[component18] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-30605) such that it"
      * section 1..1
      * section only ResultsSectionEntriesOptional
        * ^requirements = "SHALL contain exactly one [1..1] Results Section (entries optional) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.3:2015-08-01) (CONF:1198-30606)."
    * component[component19] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-30607) such that it"
      * section 1..1
      * section only ReviewofSystemsSection
        * ^requirements = "SHALL contain exactly one [1..1] Review of Systems Section (identifier: urn:oid:1.3.6.1.4.1.19376.1.5.3.1.3.18) (CONF:1198-30608)."
    * component[component20] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-30609) such that it"
      * section 1..1
      * section only SocialHistorySection
        * ^requirements = "SHALL contain exactly one [1..1] Social History Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.17:2015-08-01) (CONF:1198-30610)."
    * component[component21] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-30611) such that it"
      * section 1..1
      * section only VitalSignsSectionEntriesOptional
        * ^requirements = "SHALL contain exactly one [1..1] Vital Signs Section (entries optional) (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.4:2015-08-01) (CONF:1198-30612)."

Invariant: 1198-32939
Description: "When asserting this templateId, all C-CDA 2.1 section and entry templates that had a previous version in C-CDA R1.1 **SHALL** include both the C-CDA 2.1 templateId and the C-CDA R1.1 templateId root without an extension. See C-CDA R2.1 Volume 1 - Design Considerations for additional detail (CONF:1198-32939)."
Severity: #error

Invariant: 1198-8333
Description: """When participant/@typeCode is IND, associatedEntity/@classCode **SHALL** be selected from ValueSet 2.16.840.1.113883.11.20.9.33 INDRoleclassCodes *STATIC* 2011-09-30 (CONF:1198-8333).
A special class of participant is the supporting person or organization:  an individual or an organization that has a relationship to the patient, including  parents, relatives, caregivers, insurance policyholders, and guarantors. In the case of a supporting person who is also an emergency contact or next-of-kin, a participant element should be present for each role recorded."""
Severity: #warning

Invariant: 1198-8348
Description: "The responsibleParty element, if present, **SHALL** contain an assignedEntity element, which **SHALL** contain an assignedPerson element, a representedOrganization element, or both (CONF:1198-8348)."
Severity: #error

Invariant: 1198-8343
Description: "An encounterParticipant element, if present, SHALL contain an assignedEntity element, which SHALL contain an assignedPerson element, a representedOrganization element, or both (CONF:1198-8343)."
Severity: #error

Invariant: 1198-30613
Description: "This structuredBody **SHALL** contain a Chief Complaint and Reason for Visit Section (2.16.840.1.113883.10.20.22.2.13) or a Chief Complaint Section (1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1) or a Reason for Visit Section (2.16.840.1.113883.10.20.22.2.12) (CONF:1198-30613)."
Severity: #error

Invariant: 1198-30614
Description: "This structuredBody **SHALL** contain an Assessment and Plan Section (V2) (2.16.840.1.113883.10.20.22.2.9:2014-06-09), or an Assessment Section (2.16.840.1.113883.10.20.22.2.8) and a Plan of Treatment Section (V2) (2.16.840.1.113883.10.20.22.2.10:2014-06-09) (CONF:1198-30614)."
Severity: #error

Invariant: 1198-30615
Description: "This structuredBody **SHALL NOT** contain an Assessment and Plan Section (V2) (2.16.840.1.113883.10.20.22.2.9:2014-06-09) when either an Assessment Section (2.16.840.1.113883.10.20.22.2.8) or a Plan of Treatment Section (V2) (2.16.840.1.113883.10.20.22.2.10:2014-06-09) is present (CONF:1198-30615)."
Severity: #error

Invariant: 1198-30616
Description: "This structuredBody **SHALL NOT** contain a Chief Complaint and Reason for Visit Section (2.16.840.1.113883.10.20.22.2.13) when either a Chief Complaint Section (1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1) or a Reason for Visit Section (2.16.840.1.113883.10.20.22.2.12) is present (CONF:1198-30616)."
Severity: #error