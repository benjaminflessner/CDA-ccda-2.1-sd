Profile: ProcedureActivityAct
Parent: $Act
Id: 2.16.840.1.113883.10.20.22.4.12
Title: "Procedure Activity Act"
Description: """This template represents any act that cannot be classified as an observation or procedure according to the HL7 RIM. Examples of these acts are a dressing change, teaching or feeding a patient, or providing comfort measures. 
The common notion of "procedure" is broader than that specified by the HL7 Version 3 Reference Information Model (RIM). Procedure templates can be represented with various RIM classes: act (e.g., dressing change), observation (e.g., EEG), procedure (e.g., splenectomy)."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.12:2014-06-09"
* ^version = "2014-06-09"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #ACT
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"ACT\" Act (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-8289)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-8290)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-8291) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.12"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.12\" (CONF:1098-10519)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32505)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-8292)."
* code 1..1
  * obeys 1098-19190
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-8293)."
  * originalText 0..1
    * ^requirements = "This code SHOULD contain zero or one [0..1] originalText (CONF:1098-19186)."
    * reference 0..1
      * ^requirements = "The originalText, if present, MAY contain zero or one [0..1] reference (CONF:1098-19187)."
      * value 0..1
        * obeys 1098-19189
        * ^requirements = "The reference, if present, MAY contain zero or one [0..1] @value (CONF:1098-19188)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-8298)."
  * code 1..1
  * code from $2.16.840.1.113883.11.20.9.22 (required)
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ProcedureAct statusCode urn:oid:2.16.840.1.113883.11.20.9.22 STATIC 2014-04-23 (CONF:1098-32364)."
* effectiveTime 1..1
  * ^requirements = "SHALL contain exactly one [1..1] effectiveTime (CONF:1098-8299)."
* priorityCode 0..1
* priorityCode from $2.16.840.1.113883.1.11.16866 (required)
  * ^requirements = "MAY contain zero or one [0..1] priorityCode, which SHALL be selected from ValueSet ActPriority urn:oid:2.16.840.1.113883.1.11.16866 DYNAMIC (CONF:1098-8300)."
* performer 0..*
  * ^requirements = "SHOULD contain zero or more [0..*] performer (CONF:1098-8301)."
  * assignedEntity 1..1
    * ^requirements = "The performer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1098-8302)."
    * id 1..*
      * ^requirements = "This assignedEntity SHALL contain at least one [1..*] id (CONF:1098-8303)."
    * addr 1..*
      * ^requirements = "This assignedEntity SHALL contain at least one [1..*] addr (CONF:1098-8304)."
    * telecom 1..*
      * ^requirements = "This assignedEntity SHALL contain at least one [1..*] telecom (CONF:1098-8305)."
    * representedOrganization 0..1
      * ^requirements = "This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:1098-8306)."
      * id 0..*
        * ^requirements = "The representedOrganization, if present, SHOULD contain zero or more [0..*] id (CONF:1098-8307)."
      * name 0..*
        * ^requirements = "The representedOrganization, if present, MAY contain zero or more [0..*] name (CONF:1098-8308)."
      * telecom 1..*
        * ^requirements = "The representedOrganization, if present, SHALL contain at least one [1..*] telecom (CONF:1098-8310)."
      * addr 1..*
        * ^requirements = "The representedOrganization, if present, SHALL contain at least one [1..*] addr (CONF:1098-8309)."
* author 0..*
* author only AuthorParticipation
  * ^comment = "201810 Errata STU Comment 1619: Updated cardinality from incorrect [1..*] to correct [0..*]"
  * ^requirements = "SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-32477)."
* participant ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "typeCode"
  * ^slicing.rules = #open
* participant contains location 0..*
* participant[location] ^requirements = "MAY contain zero or more [0..*] participant (CONF:1098-8311) such that it"
  * typeCode 1..1
  * typeCode = #LOC
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"LOC\" Location (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:1098-8312)."
  * participantRole 1..1
  * participantRole only ServiceDeliveryLocation
    * ^requirements = "SHALL contain exactly one [1..1] Service Delivery Location (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.32) (CONF:1098-15599)."
* entryRelationship ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "encounter"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "act"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "substanceAdministration"
  * ^slicing.rules = #open
* entryRelationship contains
    encounter 0..* and
    instruction 0..1 and
    indication 0..* and
    medication 0..*
* entryRelationship[encounter] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-8314) such that it"
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" Has Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-8315)."
  * inversionInd 1..1
  * inversionInd = true
    * ^requirements = "SHALL contain exactly one [1..1] @inversionInd=\"true\" true (CONF:1098-8316)."
  * encounter 1..1
    * ^requirements = "SHALL contain exactly one [1..1] encounter (CONF:1098-8317)."
    * classCode 1..1
    * classCode = #ENC
      * ^requirements = "This encounter SHALL contain exactly one [1..1] @classCode=\"ENC\" Encounter (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-8318)."
    * moodCode 1..1
    * moodCode = #EVN
      * ^requirements = "This encounter SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-8319)."
    * id 1..1
      * obeys 1098-16849
      * ^requirements = "This encounter SHALL contain exactly one [1..1] id (CONF:1098-8320)."
* entryRelationship[instruction] ^requirements = "MAY contain zero or one [0..1] entryRelationship (CONF:1098-8322) such that it"
  * typeCode 1..1
  * typeCode = #SUBJ
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SUBJ\" Has Subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-8323)."
  * inversionInd 1..1
  * inversionInd = true
    * ^requirements = "SHALL contain exactly one [1..1] @inversionInd=\"true\" true (CONF:1098-8324)."
  * act 1..1
  * act only Instruction
    * ^requirements = "SHALL contain exactly one [1..1] Instruction (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.20:2014-06-09) (CONF:1098-31396)."
* entryRelationship[indication] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-8326) such that it"
  * typeCode 1..1
  * typeCode = #RSON
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"RSON\" Has Reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-8327)."
  * observation 1..1
  * observation only Indication
    * ^requirements = "SHALL contain exactly one [1..1] Indication (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.19:2014-06-09) (CONF:1098-15601)."
* entryRelationship[medication] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-8329) such that it"
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" Has Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-8330)."
  * substanceAdministration 1..1
  * substanceAdministration only MedicationActivity
    * ^requirements = "SHALL contain exactly one [1..1] Medication Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.16:2014-06-09) (CONF:1098-15602)."

Invariant: 1098-19190
Description: "This @code **SHOULD** be selected from LOINC (CodeSystem: 2.16.840.1.113883.6.1) or SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96), and **MAY** be selected from CPT-4 (CodeSystem: 2.16.840.1.113883.6.12) or ICD10 PCS (CodeSystem: 2.16.840.1.113883.6.4) or CDT-2 (Code System: 2.16.840.1.113883.6.13) (CONF:1098-19190)."
Severity: #warning

Invariant: 1098-19189
Description: "This reference/@value **SHALL** begin with a '#' and **SHALL** point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1098-19189)."
Severity: #error

Invariant: 1098-16849
Description: "Set the encounter ID to the ID of an encounter in another section to signify they are the same encounter (CONF:1098-16849)."
Severity: #warning