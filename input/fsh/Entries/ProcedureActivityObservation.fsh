Profile: ProcedureActivityObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.13
Title: "Procedure Activity Observation"
Description: """The common notion of procedure is broader than that specified by the HL7 Version 3 Reference Information Model (RIM). Therefore procedure templates can be represented with various RIM classes: act (e.g., dressing change), observation (e.g., EEG), procedure (e.g., splenectomy). 

This template represents procedures that result in new information about the patient that cannot be classified as a procedure according to the HL7 RIM. Examples of these procedures are diagnostic imaging procedures, EEGs, and EKGs."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.13:2014-06-09"
* ^version = "2014-06-09"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-8282)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-8237)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-8238) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.13"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.13\" (CONF:1098-10520)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32507)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-8239)."
* code 1..1
  * obeys 1098-19202
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-19197)."
  * originalText 0..1
    * ^requirements = "This code SHOULD contain zero or one [0..1] originalText (CONF:1098-19198)."
    * reference 0..1
      * ^requirements = "The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1098-19199)."
      * value 0..1
        * obeys 1098-19201
        * ^requirements = "The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1098-19200)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-8245)."
  * code 1..1
  * code from $2.16.840.1.113883.11.20.9.22 (required)
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ProcedureAct statusCode urn:oid:2.16.840.1.113883.11.20.9.22 STATIC 2014-04-23 (CONF:1098-32365)."
* effectiveTime 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-8246)."
* priorityCode 0..1
* priorityCode from $2.16.840.1.113883.1.11.16866 (required)
  * ^requirements = "MAY contain zero or one [0..1] priorityCode, which SHALL be selected from ValueSet ActPriority urn:oid:2.16.840.1.113883.1.11.16866 DYNAMIC (CONF:1098-8247)."
* value 1..1
  * ^requirements = "SHALL contain exactly one [1..1] value (CONF:1098-16846)."
  * nullFlavor 0..1
    * ^short = "If nothing is appropriate for value, use an appropriate nullFlavor."
    * ^requirements = "This value MAY contain zero or one [0..1] @nullFlavor (CONF:1098-32778)."
* methodCode 0..1
  * obeys 1098-8249
  * ^requirements = "MAY contain zero or one [0..1] methodCode (CONF:1098-8248)."
* targetSiteCode 0..*
* targetSiteCode from $2.16.840.1.113883.3.88.12.3221.8.9 (required)
  * ^requirements = "SHOULD contain zero or more [0..*] targetSiteCode, which SHALL be selected from ValueSet Body Site Value Set urn:oid:2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:1098-8250)."
* performer 0..*
  * ^requirements = "SHOULD contain zero or more [0..*] performer (CONF:1098-8251)."
  * assignedEntity 1..1
    * ^requirements = "The performer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1098-8252)."
    * id 1..*
      * ^requirements = "This assignedEntity SHALL contain at least one [1..*] id (CONF:1098-8253)."
    * addr 1..*
      * ^requirements = "This assignedEntity SHALL contain at least one [1..*] addr (CONF:1098-8254)."
    * telecom 1..*
      * ^requirements = "This assignedEntity SHALL contain at least one [1..*] telecom (CONF:1098-8255)."
    * representedOrganization 0..1
      * ^requirements = "This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:1098-8256)."
      * id 0..*
        * ^requirements = "The representedOrganization, if present, SHOULD contain zero or more [0..*] id (CONF:1098-8257)."
      * name 0..*
        * ^requirements = "The representedOrganization, if present, MAY contain zero or more [0..*] name (CONF:1098-8258)."
      * telecom 1..1
        * ^requirements = "The representedOrganization, if present, SHALL contain exactly one [1..1] telecom (CONF:1098-8260)."
      * addr 1..1
        * ^requirements = "The representedOrganization, if present, SHALL contain exactly one [1..1] addr (CONF:1098-8259)."
* author 0..*
* author only AuthorParticipation
  * ^comment = "201810 Errata STU Comment 1619: Updated cardinality from incorrect [1..*] to correct [0..*]"
  * ^requirements = "SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-32478)."
* participant ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "typeCode"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "participantRole"
  * ^slicing.rules = #open
* participant contains location 0..*
* participant[location] ^requirements = "MAY contain zero or more [0..*] participant (CONF:1098-8261) such that it"
  * typeCode 1..1
  * typeCode = #LOC
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"LOC\" Location (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:1098-8262)."
  * participantRole 1..1
  * participantRole only ServiceDeliveryLocation
    * ^requirements = "SHALL contain exactly one [1..1] Service Delivery Location (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.32) (CONF:1098-15904)."
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
    medication 0..* and
    reaction 0..*
* entryRelationship[encounter] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-8264) such that it"
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-8265)."
  * inversionInd 1..1
  * inversionInd = true
    * ^requirements = "SHALL contain exactly one [1..1] @inversionInd=\"true\" true (CONF:1098-8266)."
  * encounter 1..1
    * ^requirements = "SHALL contain exactly one [1..1] encounter (CONF:1098-8267)."
    * classCode 1..1
    * classCode = #ENC
      * ^requirements = "This encounter SHALL contain exactly one [1..1] @classCode=\"ENC\" Encounter (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-8268)."
    * moodCode 1..1
    * moodCode = #EVN
      * ^requirements = "This encounter SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-8269)."
    * id 1..1
      * obeys 1098-16847
      * ^requirements = "This encounter SHALL contain exactly one [1..1] id (CONF:1098-8270)."
* entryRelationship[instruction] ^requirements = "MAY contain zero or one [0..1] entryRelationship (CONF:1098-8272) such that it"
  * typeCode 1..1
  * typeCode = #SUBJ
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SUBJ\" Has Subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-8273)."
  * inversionInd 1..1
  * inversionInd = true
    * ^requirements = "SHALL contain exactly one [1..1] @inversionInd=\"true\" true (CONF:1098-8274)."
  * act 1..1
  * act only Instruction
    * ^requirements = "SHALL contain exactly one [1..1] Instruction (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.20:2014-06-09) (CONF:1098-31394)."
* entryRelationship[indication] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-8276) such that it"
  * typeCode 1..1
  * typeCode = #RSON
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"RSON\" Has Reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-8277)."
  * observation 1..1
  * observation only Indication
    * ^requirements = "SHALL contain exactly one [1..1] Indication (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.19:2014-06-09) (CONF:1098-15906)."
* entryRelationship[medication] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-8279) such that it"
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" Has Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-8280)."
  * substanceAdministration 1..1
  * substanceAdministration only MedicationActivity
    * ^requirements = "SHALL contain exactly one [1..1] Medication Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.16:2014-06-09) (CONF:1098-15907)."
* entryRelationship[reaction] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-32470) such that it"
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" Has Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32471)."
  * observation 1..1
  * observation only ReactionObservation
    * ^requirements = "SHALL contain exactly one [1..1] Reaction Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.9:2014-06-09) (CONF:1098-32472)."

Invariant: 1098-19202
Description: "This @code **SHOULD** be selected from LOINC (CodeSystem: 2.16.840.1.113883.6.1) or SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96), and **MAY** be selected from CPT-4 (CodeSystem: 2.16.840.1.113883.6.12) or ICD10 PCS (CodeSystem: 2.16.840.1.113883.6.4) or CDT-2 (Code System: 2.16.840.1.113883.6.13) (CONF:1098-19202)."
Severity: #warning

Invariant: 1098-19201
Description: "This reference/@value **SHALL** begin with a '#' and **SHALL** point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1098-19201)."
Severity: #error

Invariant: 1098-8249
Description: "MethodCode **SHALL NOT** conflict with the method inherent in Observation / code (CONF:1098-8249)."
Severity: #error

Invariant: 1098-16847
Description: "Set encounter/id to the id of an encounter in another section to signify they are the same encounter (CONF:1098-16847)."
Severity: #warning