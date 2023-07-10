Profile: EncounterActivity
Parent: $Encounter
Id: 2.16.840.1.113883.10.20.22.4.49
Title: "Encounter Activity"
Description: "This clinical statement describes an interaction between a patient and clinician. Interactions may include in-person encounters, telephone conversations, and email exchanges."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.49:2015-08-01"
* ^version = "2015-08-01"
* ^publisher = "WaveOne Associates"
* ^contact.name = "Brett Marquard"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "4135496886"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "brett@waveoneassociates.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #ENC
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"ENC\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1198-8710)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1198-8711)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-8712) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.49"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.49\" (CONF:1198-26353)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32546)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1198-8713)."
* code 1..1
* code from $2.16.840.1.113883.3.88.12.80.32 (preferred)
  * ^requirements = "SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet EncounterTypeCode urn:oid:2.16.840.1.113883.3.88.12.80.32 DYNAMIC (CONF:1198-8714)."
  * originalText 0..1
    * ^requirements = "This code SHOULD contain zero or one [0..1] originalText (CONF:1198-8719)."
    * reference 0..1
      * ^requirements = "The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1198-15970)."
      * value 0..1
        * obeys 1198-15972
        * ^requirements = "The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1198-15971)."
  * translation 0..1
    * ^short = "The translation may exist to map the code of EncounterTypeCode (2.16.840.1.113883.3.88.12.80.32) value set to the code of Encounter Planned (2.16.840.1.113883.11.20.9.52) value set."
    * ^requirements = "This code MAY contain zero or one [0..1] translation (CONF:1198-32323)."
* effectiveTime 1..1
  * ^requirements = "SHALL contain exactly one [1..1] effectiveTime (CONF:1198-8715)."
* dischargeDispositionCode 0..1
  * obeys 1198-32177 and 1198-32377
  * ^extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace"
  * ^extension.valueUri = "urn:hl7-org:sdtc"
  * ^label = "The prefix sdtc: SHALL be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the dischargeDispositionCode element"
  * ^short = "The prefix sdtc: SHALL be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the dischargeDispositionCode element"
  * ^requirements = "MAY contain zero or one [0..1] sdtc:dischargeDispositionCode (CONF:1198-32176)."
* performer 0..*
  * ^requirements = "MAY contain zero or more [0..*] performer (CONF:1198-8725)."
  * assignedEntity 1..1
    * ^requirements = "The performer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1198-8726)."
    * code 0..1
    * code from $2.16.840.1.114222.4.11.1066 (preferred)
      * ^requirements = "This assignedEntity MAY contain zero or one [0..1] code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy urn:oid:2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1198-8727)."
* participant ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "participantRole"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "typeCode"
  * ^slicing.rules = #open
* participant contains location 0..*
* participant[location] ^requirements = "SHOULD contain zero or more [0..*] participant (CONF:1198-8738) such that it"
  * typeCode 1..1
  * typeCode = #LOC
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"LOC\" Location (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:1198-8740)."
  * participantRole 1..1
  * participantRole only ServiceDeliveryLocation
    * ^requirements = "SHALL contain exactly one [1..1] Service Delivery Location (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.32) (CONF:1198-14903)."
* entryRelationship ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "act"
  * ^slicing.rules = #open
* entryRelationship contains
    indication 0..* and
    diagnosis 0..*
* entryRelationship[indication] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-8722) such that it"
  * typeCode 1..1
  * typeCode = #RSON
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"RSON\" Has Reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1198-8723)."
  * observation 1..1
  * observation only Indication
    * ^requirements = "SHALL contain exactly one [1..1] Indication (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.19:2014-06-09) (CONF:1198-14899)."
* entryRelationship[diagnosis] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-15492) such that it"
  * act 1..1
  * act only EncounterDiagnosis
    * ^requirements = "SHALL contain exactly one [1..1] Encounter Diagnosis (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.80:2015-08-01) (CONF:1198-15973)."

Invariant: 1198-15972
Description: "This reference/@value **SHALL** begin with a '#' and **SHALL** point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1198-15972)."
Severity: #error

Invariant: 1198-32177
Description: "This sdtc:dischargeDispositionCode **SHOULD** contain exactly [0..1] *code*, which **SHOULD** be selected from ValueSet 2.16.840.1.113883.3.88.12.80.33 NUBC UB-04 FL17-Patient Status (code system 2.16.840.1.113883.6.301.5) *DYNAMIC* or, if access to NUBC is unavailable, from CodeSystem 2.16.840.1.113883.12.112 HL7 Discharge Disposition (CONF:1198-32177)."
Severity: #warning

Invariant: 1198-32377
Description: "This sdtc:dischargeDispositionCode **SHOULD** contain exactly [0..1] *codeSystem*, which **SHOULD** be either CodeSystem: NUBC 2.16.840.1.113883.6.301.5 *OR* CodeSystem: HL7 Discharge Disposition 2.16.840.1.113883.12.112 (CONF:1198-32377)."
Severity: #warning