Profile: OutcomeObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.144
Title: "Outcome Observation"
Description: """This template represents the outcome of care resulting from the interventions used to treat the patient. In the Care Planning workflow, the judgment about how well the person is progressing towards the goal is based on the observations made about the status of the patient with respect to interventions performed in the pursuit of achieving that goal.

Often thought of as an "actual outcome", the Outcome Observation may be related to goals, progression toward goals, and the associated interventions. For example, an observation outcome of a blood oxygen saturation level of 95% is related to the goal of "Maintain Pulse Ox greater than 92", which in turn is related to the health concern of respiratory insufficiency and the problem of pneumonia. The template makes use of the Entry Reference (templateId:2.16.840.1.113883.10.20.22.4.122) to reference the interventions and goals defined elsewhere in the Care Plan CDA instance."""
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.4.144"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* obeys 1098-32782
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1098-31219)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1098-31220)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-31221) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.144"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.144\" (CONF:1098-31222)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-31223)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code, which SHOULD be selected from CodeSystem LOINC (urn:oid:2.16.840.1.113883.6.1) (CONF:1098-32746)."
* value 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] value (CONF:1098-32747)."
* author 0..*
* author only AuthorParticipation
  * ^requirements = "SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31553)."
* entryRelationship ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "act"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.rules = #open
  * ^short = "Where an Outcome Observation needs to reference an Intervention Act already described in the CDA document instance, rather than repeating the full content of the Intervention Act, the Entry Reference template may be used to reference this entry."
* entryRelationship contains
    entryReference 0..* and
    progressTowardGoalObservation 0..1 and
    entryReference 0..*
* entryRelationship[entryReference] obeys 1098-32461
  * ^short = "The following entryRelationship represents the relationship between an Outcome Observation and a Goal Observation. Because the Goal Observation is already described in the CDA document instance's Goals section, rather than repeating the full content of the Goal Observation, the Entry Reference template can be used to reference this entry."
  * ^requirements = "SHOULD contain zero or more [0..*] entryRelationship (CONF:1098-31224) such that it"
  * obeys 1098-32462
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-31688) such that it"
  * typeCode 1..1
  * typeCode = #GEVL
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"GEVL\" Evaluates goal (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-31225)."
  * typeCode 1..1
  * typeCode = #RSON
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"RSON\" Has reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-31689)."
  * act 1..1
  * act only EntryReference
    * ^requirements = "SHALL contain exactly one [1..1] Entry Reference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.122) (CONF:1098-32465)."
  * act 1..1
  * act only EntryReference
    * ^requirements = "SHALL contain exactly one [1..1] Entry Reference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.122) (CONF:1098-31690)."
* entryRelationship[progressTowardGoalObservation] ^short = "The following entryRelationship represents the relationship between an Outcome Observation and a Progress Toward Goal Observation (Outcome Observation SUPPORTS Progress Toward Goal Observation). In the Care Planning workflow, the judgment about how well the person is progressing towards the goal is based on the observations made about the status of the patient with respect to interventions performed in the pursuit of achieving that goal."
  * ^requirements = "SHOULD contain zero or one [0..1] entryRelationship (CONF:1098-31427) such that it"
  * typeCode 1..1
  * typeCode = #SPRT
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SPRT\" Has support (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-31428)."
  * inversionInd 1..1
  * inversionInd = true
    * ^requirements = "SHALL contain exactly one [1..1] @inversionInd=\"true\" (CONF:1098-31429)."
  * observation 1..1
  * observation only ProgressTowardGoalObservation
    * ^requirements = "SHALL contain exactly one [1..1] Progress Toward Goal Observation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.110) (CONF:1098-31430)."
* reference 0..*
  * ^requirements = "MAY contain zero or more [0..*] reference (CONF:1098-32763)."
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "The reference, if present, SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32764)."
  * externalDocument 1..1
  * externalDocument only ExternalDocumentReference
    * ^requirements = "The reference, if present, SHALL contain exactly one [1..1] External Document Reference (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.115:2014-06-09) (CONF:1098-32765)."

Invariant: 1098-32782
Description: "SHALL contain at least one [1..*] entryRelationships (CONF:1098-32782)."
Severity: #error

Invariant: 1098-32461
Description: "This entryReference template **SHALL** reference an instance of a Goal Observation template (CONF:1098-32461)."
Severity: #error

Invariant: 1098-32462
Description: "This entryReference template **SHALL** reference an instance of a Intervention Act template (CONF:1098-32462)."
Severity: #error