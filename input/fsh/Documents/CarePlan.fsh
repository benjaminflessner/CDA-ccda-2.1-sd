Profile: CarePlan
Parent: USRealmHeader
Id: 2.16.840.1.113883.10.20.22.1.15
Title: "Care Plan"
Description: """CARE PLAN FRAMEWORK

A Care Plan (including Home Health Plan of Care (HHPoC)) is a consensus-driven dynamic plan that represents a patient's and Care Team Member's prioritized concerns, goals, and planned interventions. It serves as a blueprint shared by all Care Team Members (including the patient, their caregivers and providers), to guide the patient'ss care. A Care Plan integrates multiple interventions proposed by multiple providers and disciplines for multiple conditions.

A Care Plan represents one or more Plan(s) of Care and serves to reconcile and resolve conflicts between the various Plans of Care developed for a specific patient by different providers. While both a plan of care and a care plan include the patients life goals and require Care Team Members (including patients) to prioritize goals and interventions, the reconciliation process becomes more complex as the number of plans of care increases. The Care Plan also serves to enable longitudinal coordination of care.

The CDA Care Plan represents an instance of this dynamic Care Plan at a point in time. The CDA document itself is NOT dynamic.

Key differentiators between a Care Plan CDA and CCD (another snapshot in time document):
There are 2 required sections:
*    Health Concerns
*    Interventions

There are 2 optional sections:
*    Goals
*    Outcomes
	Provides the ability to identify patient and provider priorities with each act
	Provides a header participant to indicate occurrences of Care Plan review

A care plan document can include entry references from the information in these sections to the information (entries) in other sections.

Please see Volume 1 of this guide to view a Care Plan Relationship diagram and story board."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.1.15:2015-08-01"
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
* templateId[secondary] obeys 1198-32934
  * ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-28741) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.1.15"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.1.15\" (CONF:1198-28742)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32877)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-28745)."
  * code 1..1
  * code from $2.16.840.1.113762.1.4.1099.10 (required)
    * ^requirements = "This code SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Care Plan Document Type urn:oid:2.16.840.1.113762.1.4.1099.10 DYNAMIC (CONF:1198-32959)."
* setId 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] setId (CONF:1198-32321)."
* versionNumber 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] versionNumber (CONF:1198-32322)."
* informationRecipient ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "intendedRecipient"
  * ^slicing.rules = #open
* informationRecipient contains informationRecipient1 0..*
* informationRecipient[informationRecipient1] ^requirements = "SHOULD contain zero or more [0..*] informationRecipient (CONF:1198-31993) such that it"
  * intendedRecipient 1..1
    * ^requirements = "SHALL contain exactly one [1..1] intendedRecipient (CONF:1198-31994)."
    * id 1..*
      * ^requirements = "This intendedRecipient SHALL contain at least one [1..*] id (CONF:1198-31996)."
    * addr 0..*
      * ^requirements = "This intendedRecipient SHOULD contain zero or more [0..*] addr (CONF:1198-31997)."
    * telecom 0..*
      * ^requirements = "This intendedRecipient SHOULD contain zero or more [0..*] telecom (CONF:1198-31998)."
    * informationRecipient 0..1
      * ^requirements = "This intendedRecipient SHOULD contain zero or one [0..1] informationRecipient (CONF:1198-31999)."
      * name 1..1
      * name only USRealmPersonNamePNUSFIELDED
        * ^requirements = "The informationRecipient, if present, SHALL contain exactly one [1..1] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1198-32320)."
    * receivedOrganization 0..1
      * ^requirements = "This intendedRecipient SHOULD contain zero or one [0..1] receivedOrganization (CONF:1198-32000)."
      * id 0..*
        * ^requirements = "The receivedOrganization, if present, SHOULD contain zero or more [0..*] id (CONF:1198-32001)."
      * name 1..*
        * ^requirements = "The receivedOrganization, if present, SHALL contain at least one [1..*] name (CONF:1198-32002)."
      * standardIndustryClassCode 0..1
      * standardIndustryClassCode from $2.16.840.1.114222.4.11.1066 (required)
        * ^requirements = "The receivedOrganization, if present, SHOULD contain zero or one [0..1] standardIndustryClassCode, which SHALL be selected from ValueSet Healthcare Provider Taxonomy urn:oid:2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1198-32003)."
* authenticator contains authenticator2 0..1
* authenticator[authenticator2] ^requirements = "SHOULD contain zero or one [0..1] authenticator (CONF:1198-31910) such that it"
  * time 1..1
    * ^requirements = "SHALL contain exactly one [1..1] time (CONF:1198-31911)."
  * signatureCode 1..1
    * ^requirements = "SHALL contain exactly one [1..1] signatureCode (CONF:1198-31912)."
  * signatureText 0..1
    * ^extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace"
    * ^extension.valueUri = "urn:hl7-org:sdtc"
    * ^label = "The prefix sdtc: SHALL be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the signatureText element"
    * ^short = "The prefix sdtc: SHALL be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the signatureText element"
    * ^requirements = "MAY contain zero or one [0..1] sdtc:signatureText (CONF:1198-31913)."
  * assignedEntity 1..1
    * ^requirements = "SHALL contain exactly one [1..1] assignedEntity (CONF:1198-31914)."
    * id 1..*
      * ^requirements = "This assignedEntity SHALL contain at least one [1..*] id (CONF:1198-31915)."
    * code 1..1
      * ^requirements = "This assignedEntity SHALL contain exactly one [1..1] code (CONF:1198-31916)."
      * code 1..1
      * code = "ONESELF"
        * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"ONESELF\" Self (CONF:1198-31917)."
      * codeSystem 1..1
      * codeSystem = "2.16.840.1.113883.5.111"
        * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.5.111\" (CodeSystem: HL7RoleCode urn:oid:2.16.840.1.113883.5.111) (CONF:1198-31918)."
* participant ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "typeCode"
  * ^slicing.rules = #open
* participant contains participant2 0..*
* participant[participant1] 0..*
  * ^requirements = "SHOULD contain zero or more [0..*] participant (CONF:1198-31677) such that it"
  * typeCode 1..1
  * typeCode = #VRF
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"VRF\" Verifier (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:1198-31678)."
  * functionCode 1..1
    * ^requirements = "SHALL contain exactly one [1..1] functionCode (CONF:1198-31679)."
    * code 1..1
    * code = "425268008"
      * ^requirements = "This functionCode SHALL contain exactly one [1..1] @code=\"425268008\" Review of Care Plan (CONF:1198-31680)."
    * codeSystem 1..1
    * codeSystem = "2.16.840.1.113883.6.96"
      * ^requirements = "This functionCode SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.96\" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:1198-31681)."
  * time 1..1
    * ^requirements = "SHALL contain exactly one [1..1] time (CONF:1198-31682)."
  * associatedEntity 1..1
    * ^requirements = "SHALL contain exactly one [1..1] associatedEntity (CONF:1198-31683)."
    * classCode 1..1
    * classCode = #ASSIGNED
      * ^requirements = "This associatedEntity SHALL contain exactly one [1..1] @classCode=\"ASSIGNED\" (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110) (CONF:1198-31686)."
    * id 1..*
      * ^requirements = "This associatedEntity SHALL contain at least one [1..*] id (CONF:1198-31684)."
    * code 0..1
      * ^requirements = "This associatedEntity SHOULD contain zero or one [0..1] code (CONF:1198-31685)."
      * code 1..1
      * code from $2.16.840.1.113883.11.20.12.1 (preferred)
        * ^requirements = "The code, if present, SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet Personal And Legal Relationship Role Type urn:oid:2.16.840.1.113883.11.20.12.1 DYNAMIC (CONF:1198-32367)."
* participant[participant2] ^requirements = "SHOULD contain zero or more [0..*] participant (CONF:1198-31895) such that it"
  * typeCode 1..1
  * typeCode = #IND
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"IND\" Indirect (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:1198-31896)."
  * associatedEntity 1..1
    * ^requirements = "SHALL contain exactly one [1..1] associatedEntity (CONF:1198-31897)."
    * classCode 1..1
    * classCode from $2.16.840.1.113883.11.20.9.33 (required)
      * ^requirements = "This associatedEntity SHALL contain exactly one [1..1] @classCode, which SHALL be selected from ValueSet INDRoleclassCodes urn:oid:2.16.840.1.113883.11.20.9.33 STATIC (CONF:1198-31898)."
    * associatedPerson 1..1
      * ^requirements = "This associatedEntity SHALL contain exactly one [1..1] associatedPerson (CONF:1198-31899)."
      * name 1..*
        * ^requirements = "This associatedPerson SHALL contain at least one [1..*] name (CONF:1198-31900)."
* documentationOf ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "serviceEvent"
  * ^slicing.rules = #open
  * ^short = "The serviceEvent describes the provision of healthcare over a period of time. The duration over which care was provided is indicated in serviceEvent/effectiveTime. Additional data from outside this duration may also be included if it is relevant to care provided during that time range (e.g., reviewed during the stated time range)."
* documentationOf contains documentationOf1 1..1
  * serviceEvent.performer ^slicing.discriminator[0].type = #value
    * ^slicing.discriminator[=].path = "assignedEntity"
    * ^slicing.rules = #open
* documentationOf[documentationOf1] ^requirements = "SHALL contain exactly one [1..1] documentationOf (CONF:1198-31901) such that it"
  * serviceEvent 1..1
    * ^requirements = "SHALL contain exactly one [1..1] serviceEvent (CONF:1198-31902)."
    * classCode 1..1
    * classCode = #PCPR
      * ^requirements = "This serviceEvent SHALL contain exactly one [1..1] @classCode=\"PCPR\" Care Provision (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1198-31903)."
    * effectiveTime 1..1
      * ^requirements = "This serviceEvent SHALL contain exactly one [1..1] effectiveTime (CONF:1198-31904)."
      * low 1..1
        * ^requirements = "This effectiveTime SHALL contain exactly one [1..1] low (CONF:1198-32330)."
      * high 0..1
        * ^requirements = "This effectiveTime MAY contain zero or one [0..1] high (CONF:1198-32331)."
* serviceEvent.ClinicalDocument.documentationOf.serviceEvent
  * performer contains performer1 1..*
  * performer[performer1] ^requirements = "This serviceEvent SHALL contain at least one [1..*] performer (CONF:1198-31905) such that it"
    * assignedEntity 1..1
      * ^requirements = "SHALL contain exactly one [1..1] assignedEntity (CONF:1198-31907)."
      * id 1..*
        * ^requirements = "This assignedEntity SHALL contain at least one [1..*] id (CONF:1198-31908)."
      * code 0..1
        * ^requirements = "This assignedEntity MAY contain zero or one [0..1] code (CONF:1198-31909)."
      * assignedPerson 1..1
        * ^requirements = "This assignedEntity SHALL contain exactly one [1..1] assignedPerson (CONF:1198-32328)."
        * name 1..1
        * name only USRealmPersonNamePNUSFIELDED
          * ^requirements = "This assignedPerson SHALL contain exactly one [1..1] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1198-32329)."
* relatedDocument ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "parentDocument"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "typeCode"
  * ^slicing.rules = #open
* relatedDocument contains relatedDocument1 0..*
* relatedDocument[relatedDocument1] ^requirements = "MAY contain zero or more [0..*] relatedDocument (CONF:1198-29893) such that it"
  * typeCode 1..1
  * typeCode from $2.16.840.1.113883.1.11.11610 (required)
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode, which SHALL be selected from ValueSet x_ActRelationshipDocument urn:oid:2.16.840.1.113883.1.11.11610 STATIC (CONF:1198-31889)."
  * parentDocument 1..1
    * ^requirements = "SHALL contain exactly one [1..1] parentDocument (CONF:1198-29894)."
    * id 1..*
      * ^requirements = "This parentDocument SHALL contain at least one [1..*] id (CONF:1198-32949)."
    * setId 1..1
      * ^requirements = "This parentDocument SHALL contain exactly one [1..1] setId (CONF:1198-29895)."
    * versionNumber 1..1
      * ^requirements = "This parentDocument SHALL contain exactly one [1..1] versionNumber (CONF:1198-29896)."
* componentOf 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] componentOf (CONF:1198-32004) such that it"
  * encompassingEncounter 1..1
    * ^requirements = "SHALL contain exactly one [1..1] encompassingEncounter (CONF:1198-32005)."
    * effectiveTime 1..1
      * ^requirements = "This encompassingEncounter SHALL contain exactly one [1..1] effectiveTime (CONF:1198-32007)."
* component 1..1
  * ^requirements = "SHALL contain exactly one [1..1] component (CONF:1198-28753)."
  * structuredBody 1..1
    * obeys 1198-31044
    * ^requirements = "This component SHALL contain exactly one [1..1] structuredBody (CONF:1198-28754)."
    * component ^slicing.discriminator[0].type = #value
      * ^slicing.discriminator[=].path = "ClinicalDocument.section"
      * ^slicing.rules = #open
    * component contains component1 1..1
    * component[component1] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-28755)."
      * section 1..1
      * section only HealthConcernsSection
        * ^requirements = "This component SHALL contain exactly one [1..1] Health Concerns Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.58:2015-08-01) (CONF:1198-28756)."
* structuredBody.ClinicalDocument.component.structuredBody
  * component contains
      component2 1..1 and
      component3 0..1 and
      component4 0..1
  * component[component2] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-28761) such that it"
    * section 1..1
    * section only GoalsSection
      * ^requirements = "SHALL contain exactly one [1..1] Goals Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.60) (CONF:1198-28762)."
  * component[component3] ^requirements = "This structuredBody SHOULD contain zero or one [0..1] component (CONF:1198-28763) such that it"
    * section 1..1
    * section only InterventionsSection
      * ^requirements = "SHALL contain exactly one [1..1] Interventions Section (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.21.2.3:2015-08-01) (CONF:1198-28764)."
  * component[component4] ^requirements = "This structuredBody SHOULD contain zero or one [0..1] component (CONF:1198-29596) such that it"
    * section 1..1
    * section only HealthStatusEvaluationsandOutcomesSection
      * ^requirements = "SHALL contain exactly one [1..1] Health Status Evaluations and Outcomes Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.61) (CONF:1198-29597)."

Invariant: 1198-32934
Description: "When asserting this templateId, all C-CDA 2.1 section and entry templates that had a previous version in C-CDA R1.1 **SHALL** include both the C-CDA 2.1 templateId and the C-CDA R1.1 templateId root without an extension. See C-CDA R2.1 Volume 1 - Design Considerations for additional detail (CONF:1198-32934)."
Severity: #error

Invariant: 1198-31044
Description: "This structuredBody **SHALL NOT** contain a Plan of Treatment Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.10:2014-06-09) (CONF:1198-31044)."
Severity: #error