Profile: ProcedureActivityProcedure
Parent: $Procedure
Id: 2.16.840.1.113883.10.20.22.4.14
Title: "Procedure Activity Procedure"
Description: """The common notion of "procedure" is broader than that specified by the HL7 Version 3 Reference Information Model (RIM). Therefore procedure templates can be represented with various RIM classes: act (e.g., dressing change), observation (e.g., EEG), procedure (e.g., splenectomy). 

This template represents procedures whose immediate and primary outcome (post-condition) is the alteration of the physical condition of the patient. Examples of these procedures are an appendectomy, hip replacement, and a creation of a gastrostomy.

This template can be used with a contained Product Instance template to represent a device in or on a patient. In this case, targetSiteCode is used to record the location of the device in or on the patient's body. Equipment supplied to the patient (e.g., pumps, inhalers, wheelchairs) is represented by the Non-Medicinal Supply Activity (V2) template."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.14:2014-06-09"
* ^version = "2014-06-09"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"PROC\" Procedure (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-7652)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7653)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-7654) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.14"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.14\" (CONF:1098-10521)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32506)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-7655)."
* code 1..1
  * obeys 1098-19207
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-7656)."
  * originalText 0..1
    * ^requirements = "This code SHOULD contain zero or one [0..1] originalText (CONF:1098-19203)."
    * reference 0..1
      * ^requirements = "The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1098-19204)."
      * value 0..1
        * obeys 1098-19206
        * ^requirements = "The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1098-19205)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-7661)."
  * code 1..1
  * code from $2.16.840.1.113883.11.20.9.22 (required)
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ProcedureAct statusCode urn:oid:2.16.840.1.113883.11.20.9.22 STATIC 2014-04-23 (CONF:1098-32366)."
* effectiveTime 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-7662)."
* priorityCode 0..1
* priorityCode from $2.16.840.1.113883.1.11.16866 (required)
  * ^requirements = "MAY contain zero or one [0..1] priorityCode, which SHALL be selected from ValueSet ActPriority urn:oid:2.16.840.1.113883.1.11.16866 DYNAMIC (CONF:1098-7668)."
* methodCode 0..1
  * obeys 1098-7890
  * ^requirements = "MAY contain zero or one [0..1] methodCode (CONF:1098-7670)."
* targetSiteCode 0..*
* targetSiteCode from $2.16.840.1.113883.3.88.12.3221.8.9 (required)
  * ^short = "In the case of an implanted medical device, targetSiteCode is used to record the location of the device, in or on the patient's body."
  * ^requirements = "SHOULD contain zero or more [0..*] targetSiteCode (CONF:1098-7683)."
  * code 1..1
  * code from $2.16.840.1.113883.3.88.12.3221.8.9 (required)
    * ^requirements = "The targetSiteCode, if present, SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Body Site urn:oid:2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:1098-16082)."
* specimen 0..*
  * obeys 1098-16842
  * ^requirements = "MAY contain zero or more [0..*] specimen (CONF:1098-7697)."
  * specimenRole 1..1
    * ^requirements = "The specimen, if present, SHALL contain exactly one [1..1] specimenRole (CONF:1098-7704)."
    * id 0..*
      * obeys 1098-29744
      * ^requirements = "This specimenRole SHOULD contain zero or more [0..*] id (CONF:1098-7716)."
* performer ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "assignedEntity"
  * ^slicing.rules = #open
* performer contains performer1 0..*
* performer[performer1] ^requirements = "SHOULD contain zero or more [0..*] performer (CONF:1098-7718) such that it"
  * assignedEntity 1..1
    * ^requirements = "SHALL contain exactly one [1..1] assignedEntity (CONF:1098-7720)."
    * id 1..*
      * ^requirements = "This assignedEntity SHALL contain at least one [1..*] id (CONF:1098-7722)."
    * addr 1..*
      * ^requirements = "This assignedEntity SHALL contain at least one [1..*] addr (CONF:1098-7731)."
    * telecom 1..*
      * ^requirements = "This assignedEntity SHALL contain at least one [1..*] telecom (CONF:1098-7732)."
    * representedOrganization 0..1
      * ^requirements = "This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:1098-7733)."
      * id 0..*
        * ^requirements = "The representedOrganization, if present, SHOULD contain zero or more [0..*] id (CONF:1098-7734)."
      * name 0..*
        * ^requirements = "The representedOrganization, if present, MAY contain zero or more [0..*] name (CONF:1098-7735)."
      * telecom 1..1
        * ^requirements = "The representedOrganization, if present, SHALL contain exactly one [1..1] telecom (CONF:1098-7737)."
      * addr 1..1
        * ^requirements = "The representedOrganization, if present, SHALL contain exactly one [1..1] addr (CONF:1098-7736)."
* author 0..*
* author only AuthorParticipation
  * ^requirements = "SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-32479)."
* participant ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "typeCode"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "participantRole"
  * ^slicing.rules = #open
* participant contains
    product 0..* and
    location 0..*
* participant[product] ^requirements = "MAY contain zero or more [0..*] participant (CONF:1098-7751) such that it"
  * typeCode 1..1
  * typeCode = #DEV
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"DEV\" Device (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-7752)."
  * participantRole 1..1
  * participantRole only ProductInstance
    * ^requirements = "SHALL contain exactly one [1..1] Product Instance (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.37) (CONF:1098-15911)."
* participant[location] ^requirements = "MAY contain zero or more [0..*] participant (CONF:1098-7765) such that it"
  * typeCode 1..1
  * typeCode = #LOC
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"LOC\" Location (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:1098-7766)."
  * participantRole 1..1
  * participantRole only ServiceDeliveryLocation
    * ^requirements = "SHALL contain exactly one [1..1] Service Delivery Location (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.32) (CONF:1098-15912)."
* entryRelationship ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "act"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "substanceAdministration"
  * ^slicing.rules = #open
* entryRelationship contains
    encounter 0..* and
    instruction 0..1 and
    indication 0..* and
    medication 0..* and
    reaction 0..*
* entryRelationship[encounter] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-7768) such that it"
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" Has Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-7769)."
  * inversionInd 1..1
  * inversionInd = true
    * ^requirements = "SHALL contain exactly one [1..1] @inversionInd=\"true\" true (CONF:1098-8009)."
  * encounter 1..1
    * ^requirements = "SHALL contain exactly one [1..1] encounter (CONF:1098-7770)."
    * classCode 1..1
    * classCode = #ENC
      * ^requirements = "This encounter SHALL contain exactly one [1..1] @classCode=\"ENC\" Encounter (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-7771)."
    * moodCode 1..1
    * moodCode = #EVN
      * ^requirements = "This encounter SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7772)."
    * id 1..1
      * obeys 1098-16843
      * ^requirements = "This encounter SHALL contain exactly one [1..1] id (CONF:1098-7773)."
* entryRelationship[instruction] ^requirements = "MAY contain zero or one [0..1] entryRelationship (CONF:1098-7775) such that it"
  * typeCode 1..1
  * typeCode = #SUBJ
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SUBJ\" Has Subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-7776)."
  * inversionInd 1..1
  * inversionInd = true
    * ^requirements = "SHALL contain exactly one [1..1] @inversionInd=\"true\" true (CONF:1098-7777)."
  * act 1..1
  * act only Instruction
    * ^requirements = "SHALL contain exactly one [1..1] Instruction (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.20:2014-06-09) (CONF:1098-31395)."
* entryRelationship[indication] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-7779) such that it"
  * typeCode 1..1
  * typeCode = #RSON
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"RSON\" Has Reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-7780)."
  * observation 1..1
  * observation only Indication
    * ^requirements = "SHALL contain exactly one [1..1] Indication (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.19:2014-06-09) (CONF:1098-15914)."
* entryRelationship[medication] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-7886) such that it"
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" Has Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-7887)."
  * substanceAdministration 1..1
  * substanceAdministration only MedicationActivity
    * ^requirements = "SHALL contain exactly one [1..1] Medication Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.16:2014-06-09) (CONF:1098-15915)."
* entryRelationship[reaction] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-32473) such that it"
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" Has Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32474)."
  * observation 1..1
  * observation only ReactionObservation
    * ^requirements = "SHALL contain exactly one [1..1] Reaction Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.9:2014-06-09) (CONF:1098-32475)."

Invariant: 1098-19207
Description: "This @code **SHOULD** be selected from LOINC (CodeSystem: 2.16.840.1.113883.6.1) or SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96), and **MAY** be selected from CPT-4 (CodeSystem: 2.16.840.1.113883.6.12) or ICD10 PCS (CodeSystem: 2.16.840.1.113883.6.4) or CDT-2 (Code System: 2.16.840.1.113883.6.13) (CONF:1098-19207)."
Severity: #warning

Invariant: 1098-19206
Description: "This reference/@value **SHALL** begin with a '#' and **SHALL** point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1098-19206)."
Severity: #error

Invariant: 1098-7890
Description: "MethodCode **SHALL NOT** conflict with the method inherent in Procedure / code (CONF:1098-7890)."
Severity: #error

Invariant: 1098-16842
Description: "This specimen is for representing specimens obtained from a procedure (CONF:1098-16842)."
Severity: #error

Invariant: 1098-29744
Description: "If you want to indicate that the Procedure and the Results are referring to the same specimen, the Procedure/specimen/specimenRole/id **SHOULD** be set to equal an Organizer/specimen/ specimenRole/id (CONF:1098-29744)."
Severity: #warning

Invariant: 1098-16843
Description: "Set the encounter ID to the ID of an encounter in another section to signify they are the same encounter (CONF:1098-16843)."
Severity: #warning