Profile: PolicyActivity
Parent: $Act
Id: 2.16.840.1.113883.10.20.22.4.61
Title: "Policy Activity"
Description: "A policy activity represents the policy or program providing the coverage. The person for whom payment is being provided (i.e., the patient) is the covered party. The subscriber of the policy or program is represented as a participant that is the holder of the coverage. The payer is represented as the performer of the policy activity."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.61:2015-08-01"
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
* classCode = #ACT
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"ACT\" Act (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1198-8898)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1198-8899)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-8900) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.61"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.61\" (CONF:1198-10516)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32595)."
* id 1..*
  * ^short = "This id is a unique identifier for the policy or program providing the coverage"
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1198-8901)."
* code 1..1
* code from $2.16.840.1.113883.3.88.12.3221.5.2 (preferred)
  * ^requirements = "SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Health Insurance Type urn:oid:2.16.840.1.113883.3.88.12.3221.5.2 DYNAMIC (CONF:1198-8903)."
  * translation ^slicing.rules = #open
* Act.code
  * translation contains translation1 1..*
  * translation[translation1] from $2.16.840.1.114222.4.11.3591 (preferred)
    * ^requirements = "This code SHALL contain at least one [1..*] translation, which SHOULD be selected from ValueSet Payer urn:oid:2.16.840.1.114222.4.11.3591 (CONF:1198-32852)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1198-8902)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1198-19109)."
* performer ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "templateId"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "assignedEntity"
  * ^slicing.rules = #open
  * ^short = "This performer represents the Guarantor."
* performer contains
    performer1 1..1 and
    performer2 0..*
* performer[performer1] ^short = "This performer represents the Payer."
  * ^requirements = "SHALL contain exactly one [1..1] performer (CONF:1198-8906) such that it"
  * typeCode 1..1
  * typeCode = #PRF
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"PRF\" Performer (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:1198-8907)."
  * templateId 1..1
    * ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-16808)."
    * root 1..1
    * root = "2.16.840.1.113883.10.20.22.4.87"
      * ^requirements = "This templateId SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.87\" Payer Performer (CONF:1198-16809)."
  * assignedEntity 1..1
    * ^requirements = "SHALL contain exactly one [1..1] assignedEntity (CONF:1198-8908)."
    * id 1..*
      * ^requirements = "This assignedEntity SHALL contain at least one [1..*] id (CONF:1198-8909)."
    * code 0..1
      * ^requirements = "This assignedEntity SHOULD contain zero or one [0..1] code (CONF:1198-8914)."
      * code 1..1
      * code from $2.16.840.1.113883.1.11.10416 (preferred)
        * ^requirements = "The code, if present, SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet Financially Responsible Party Type Value Set urn:oid:2.16.840.1.113883.1.11.10416 DYNAMIC (CONF:1198-15992)."
    * addr 0..1
    * addr only USRealmAddressADUSFIELDED
      * ^requirements = "This assignedEntity MAY contain zero or one [0..1] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1198-8910)."
    * telecom 0..*
      * ^requirements = "This assignedEntity MAY contain zero or more [0..*] telecom (CONF:1198-8911)."
    * representedOrganization 0..1
      * ^requirements = "This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:1198-8912)."
      * name 0..1
        * ^requirements = "The representedOrganization, if present, SHOULD contain zero or one [0..1] name (CONF:1198-8913)."
* performer[performer2] = "PRF"
  * ^requirements = "SHOULD contain zero or more [0..*] performer=\"PRF\" Performer (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:1198-8961) such that it"
  * templateId 1..1
    * ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-16810)."
    * root 1..1
    * root = "2.16.840.1.113883.10.20.22.4.88"
      * ^requirements = "This templateId SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.88\" Guarantor Performer (CONF:1198-16811)."
  * time 0..1
    * ^requirements = "SHOULD contain zero or one [0..1] time (CONF:1198-8963)."
  * assignedEntity 1..1
    * obeys 1198-8967
    * ^requirements = "SHALL contain exactly one [1..1] assignedEntity (CONF:1198-8962)."
    * code 1..1
      * ^requirements = "This assignedEntity SHALL contain exactly one [1..1] code (CONF:1198-8968)."
      * code 1..1
      * code = "GUAR"
        * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"GUAR\" Guarantor (CONF:1198-16096)."
      * codeSystem 1..1
      * codeSystem = "2.16.840.1.113883.5.110"
        * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.5.110\" (CONF:1198-32165)."
    * addr 0..1
    * addr only USRealmAddressADUSFIELDED
      * ^requirements = "This assignedEntity SHOULD contain zero or one [0..1] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1198-8964)."
    * telecom 0..*
      * ^requirements = "This assignedEntity SHOULD contain zero or more [0..*] telecom (CONF:1198-8965)."
* participant ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "templateId"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "participantRole"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "typeCode"
  * ^slicing.rules = #open
  * ^short = "When the Subscriber is the patient, the participant element describing the subscriber *SHALL NOT* be present. This information will be recorded instead in the data elements used to record member information."
* participant contains
    participant1 1..1 and
    participant2 0..1
* participant[participant1] ^requirements = "SHALL contain exactly one [1..1] participant (CONF:1198-8916) such that it"
  * typeCode 1..1
  * typeCode = #COV
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COV\" Coverage target (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:1198-8917)."
  * templateId 1..1
    * ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-16812)."
    * root 1..1
    * root = "2.16.840.1.113883.10.20.22.4.89"
      * ^requirements = "This templateId SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.89\" Covered Party Participant (CONF:1198-16814)."
  * time 0..1
    * ^requirements = "SHOULD contain zero or one [0..1] time (CONF:1198-8918)."
    * low 0..1
      * ^requirements = "The time, if present, SHOULD contain zero or one [0..1] low (CONF:1198-8919)."
    * high 0..1
      * ^requirements = "The time, if present, SHOULD contain zero or one [0..1] high (CONF:1198-8920)."
  * participantRole 1..1
    * ^requirements = "SHALL contain exactly one [1..1] participantRole (CONF:1198-8921)."
    * id 1..*
      * obeys 1198-8984
      * ^requirements = "This participantRole SHALL contain at least one [1..*] id (CONF:1198-8922)."
    * code 1..1
      * ^requirements = "This participantRole SHALL contain exactly one [1..1] code (CONF:1198-8923)."
      * code 0..1
      * code from $2.16.840.1.113883.1.11.18877 (preferred)
        * ^requirements = "This code SHOULD contain zero or one [0..1] @code, which SHOULD be selected from ValueSet Coverage Role Type Value Set urn:oid:2.16.840.1.113883.1.11.18877 DYNAMIC (CONF:1198-16078)."
    * addr 0..1
      * obeys 1198-10484
      * ^requirements = "This participantRole SHOULD contain zero or one [0..1] addr (CONF:1198-8956)."
    * playingEntity 0..1
      * ^requirements = "This participantRole SHOULD contain zero or one [0..1] playingEntity (CONF:1198-8932)."
      * name 1..*
        * ^short = "If the covered party's name is recorded differently in the health plan and in the registration/pharmacy benefit summary (due to marriage or for other reasons), use the name as it is recorded in the health plan."
        * ^requirements = "The playingEntity, if present, SHALL contain at least one [1..*] name (CONF:1198-8930)."
      * birthTime 1..1
        * obeys 1198-31345
        * ^short = "If the covered party's date of birth is recorded differently in the health plan and in the registration/pharmacy benefit summary, use the date of birth as it is recorded in the health plan."
        * ^requirements = "The playingEntity, if present, SHALL contain exactly one [1..1] sdtc:birthTime (CONF:1198-31344)."
* participant[participant2] obeys 1198-17139
  * ^requirements = "SHOULD contain zero or one [0..1] participant (CONF:1198-8934) such that it"
  * typeCode 1..1
  * typeCode = #HLD
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"HLD\" Holder (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:1198-8935)."
  * templateId 1..1
    * ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-16813)."
    * root 1..1
    * root = "2.16.840.1.113883.10.20.22.4.90"
      * ^requirements = "This templateId SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.90\" Policy Holder Participant (CONF:1198-16815)."
  * time 0..1
    * ^requirements = "MAY contain zero or one [0..1] time (CONF:1198-8938)."
  * participantRole 1..1
    * ^requirements = "SHALL contain exactly one [1..1] participantRole (CONF:1198-8936)."
    * id 1..*
      * obeys 1198-10120
      * ^requirements = "This participantRole SHALL contain at least one [1..*] id (CONF:1198-8937)."
    * addr 0..1
      * obeys 1198-10483
      * ^requirements = "This participantRole SHOULD contain zero or one [0..1] addr (CONF:1198-8925)."
* entryRelationship ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "typeCode"
  * ^slicing.rules = #open
* entryRelationship contains entryRelationship1 1..*
* entryRelationship[entryRelationship1] obeys 1198-8942 and 1198-8943
  * ^requirements = "SHALL contain at least one [1..*] entryRelationship (CONF:1198-8939) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1198-8940)."

Invariant: 1198-8967
Description: "**SHOULD** include assignedEntity/assignedPerson/name AND/OR assignedEntity/representedOrganization/name (CONF:1198-8967)."
Severity: #warning

Invariant: 1198-8984
Description: "This id is a unique identifier for  the covered party member. Implementers **SHOULD** use the same GUID for each instance of a member identifier from the same health plan (CONF:1198-8984)."
Severity: #warning

Invariant: 1198-10484
Description: "The content of addr **SHALL** be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2) (CONF:1198-10484)."
Severity: #error

Invariant: 1198-31345
Description: "The prefix sdtc: **SHALL** be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the birthTime element (CONF:1198-31345)."
Severity: #error

Invariant: 1198-17139
Description: "When the Subscriber is the patient, the participant element describing the subscriber **SHALL NOT** be present. This information will be recorded instead in the data elements used to record member information (CONF:1198-17139)."
Severity: #warning

Invariant: 1198-10120
Description: "This id is a unique identifier for the subscriber of the coverage (CONF:1198-10120)."
Severity: #warning

Invariant: 1198-10483
Description: "The content of addr **SHALL** be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2) (CONF:1198-10483)."
Severity: #error

Invariant: 1198-8942
Description: "The target of a policy activity with act/entryRelationship/@typeCode=\"REFR\" **SHALL** be an authorization activity (templateId 2.16.840.1.113883.10.20.1.19) *OR* an act, with act[@classCode=\"ACT\"] and act[@moodCode=\"DEF\"], representing a description of the coverage plan (CONF:1198-8942)."
Severity: #warning

Invariant: 1198-8943
Description: "A description of the coverage plan **SHALL** contain one or more act/id, to represent the plan identifier, and an act/text with the name of the plan (CONF:1198-8943)."
Severity: #warning