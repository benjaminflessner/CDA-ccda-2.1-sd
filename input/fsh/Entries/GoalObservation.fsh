Profile: GoalObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.121
Title: "Goal Observation"
Description: """This template represents a patient health goal. A Goal Observation template may have related components that are acts, encounters, observations, procedures, substance administrations, or supplies. 

A goal may be a patient or provider goal. If the author is set to the recordTarget (patient), this is a patient goal. If the author is set to a provider, this is a provider goal. If both patient and provider are set as authors, this is a negotiated goal.

A goal usually has a related health concern and/or risk.

A goal may have components consisting of other goals (milestones). These milestones are related to the overall goal through entryRelationships."""
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.4.121"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1098-30418)."
* moodCode 1..1
* moodCode = #GOL
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"GOL\" Goal (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1098-30419)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-8583) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.121"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.121\" (CONF:1098-10512)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-32332)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code, which SHOULD be selected from CodeSystem LOINC (urn:oid:2.16.840.1.113883.6.1) (CONF:1098-30784)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-32333)."
  * code 1..1
  * code = "active"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"active\" (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1098-32334)."
* effectiveTime 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-32335)."
* value 0..1
  * ^requirements = "MAY contain zero or one [0..1] value (CONF:1098-32743)."
* author 0..*
* author only AuthorParticipation
  * ^short = "If the author is the recordTarget (patient), this is a patient goal.  If the author is a provider, this is a provider goal. If both patient and provider are authors, this is a negotiated goal. If no author is present, it is assumed the document or section author(s) is the author of this goal."
  * ^requirements = "SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-30995)."
* entryRelationship ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "act"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.rules = #open
  * ^short = "Where a Goal Observation needs to reference another entry already described in the CDA document instance, rather than repeating the full content of the entry, the Entry Reference template may be used to reference this entry."
* entryRelationship contains
    healthConcern 0..* and
    plannedComponent 0..* and
    priority 0..1 and
    goal 0..* and
    entryReference 0..*
* entryRelationship[healthConcern] ^short = "The following entryRelationship represents the relationship between a Goal Observation and a Health Concern Act (Goal Observation REFERS TO Health Concern Act). As Health Concern Act is already defined in Health Concerns Section, rather than clone the whole Health Concern Act template, an Entry Reference may be used in entryRelationship to refer the template."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-30701) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-30702)."
  * act 1..1
  * act only EntryReference
    * ^requirements = "SHALL contain exactly one [1..1] Entry Reference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.122) (CONF:1098-30703)."
* entryRelationship[plannedComponent] ^short = "The following entryRelationship represents a planned component of the goal such as Planned Encounter (V2), Planned Observation (V2), Planned Procedure (V2), Planned Medication Activity (V2), Planned Supply (V2), Planned Act (V2) or Planned Immunization Activity. Because these entries are already described in the Interventions Section of the CDA document instance, rather than repeating the full content of the entries, the Entry Reference template may be used to reference the entries."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-30704) such that it"
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" Has component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-30705)."
  * act 1..1
  * act only EntryReference
    * ^requirements = "SHALL contain exactly one [1..1] Entry Reference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.122) (CONF:1098-32879)."
* entryRelationship[priority] ^short = "The following entryRelationship represents the priority that the patient or a provider puts on the goal."
  * ^requirements = "SHOULD contain zero or one [0..1] entryRelationship (CONF:1098-30785) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-30786)."
  * observation 1..1
  * observation only PriorityPreference
    * ^requirements = "SHALL contain exactly one [1..1] Priority Preference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.143) (CONF:1098-30787)."
* entryRelationship[goal] ^short = "The following entryRelationship represents the relationship between two Goal Observations where the target is a component of the source (Goal Observation HAS COMPONENT Goal Observation). The component goal (target) is a Milestone."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-31448) such that it"
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" Has component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-31449)."
  * observation 1..1
  * observation only GoalObservation
    * ^requirements = "SHALL contain exactly one [1..1] Goal Observation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.121) (CONF:1098-32880)."
* entryRelationship[entryReference] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-31559) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-31560)."
  * act 1..1
  * act only EntryReference
    * ^requirements = "SHALL contain exactly one [1..1] Entry Reference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.122) (CONF:1098-31588)."
* reference 0..*
  * ^short = "Where it is necessary to reference an external clinical document such a Referral document, Discharge Summary document etc., the External Document Reference template can be used to reference this document.  However, if this Care Plan document is replacing or appending another Care Plan document in the same set, that relationship is set in the header, using ClinicalDocument/relatedDocument."
  * ^requirements = "MAY contain zero or more [0..*] reference (CONF:1098-32754)."
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "The reference, if present, SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32755)."
  * externalDocument 1..1
  * externalDocument only ExternalDocumentReference
    * ^requirements = "The reference, if present, SHALL contain exactly one [1..1] External Document Reference (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.115:2014-06-09) (CONF:1098-32756)."