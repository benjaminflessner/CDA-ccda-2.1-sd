Profile: PatientReferralAct
Parent: $Act
Id: 2.16.840.1.113883.10.20.22.4.140
Title: "Patient Referral Act"
Description: "This template represents the type of referral (e.g., for dental care, to a specialist, for aging problems) and represents whether the referral is for full care or shared care. It may contain a reference to another act in the document instance representing the clinical reason for the referral (e.g., problem, concern, procedure)."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.4.140"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #PCPR
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"PCPR\" provision of care (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-30884)."
* moodCode 1..1
* moodCode from $2.16.840.1.113883.11.20.9.66 (required)
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Patient Referral Act moodCode urn:oid:2.16.840.1.113883.11.20.9.66 STATIC 2014-09-01 (CONF:1098-30885)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-30886) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.140"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.140\" (CONF:1098-30887)."
* id 1..*
  * ^short = "In the case of a Consultation Note where this referral is being fulfilled by this consultation, this id would be referenced in the inFullfilmentOf/order/id of the Consultation Note."
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-30888)."
* code 1..1
* code from $2.16.840.1.113883.11.20.9.56 (required)
  * ^requirements = "SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet Referral Types urn:oid:2.16.840.1.113883.11.20.9.56 DYNAMIC (CONF:1098-30889)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-30892)."
  * code 1..1
  * code = "active"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"active\" Active (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1098-31598)."
* effectiveTime 1..1
  * ^short = "The effectiveTime represents the time when the future referral is intended to take place."
  * ^requirements = "SHALL contain exactly one [1..1] effectiveTime (CONF:1098-30893)."
* priorityCode 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] priorityCode (CONF:1098-32623)."
* author 0..*
* author only AuthorParticipation
  * ^requirements = "SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31612)."
* participant 0..*
  * ^requirements = "MAY contain zero or more [0..*] participant (CONF:1098-32635)."
  * typeCode 1..1
  * typeCode = #REFT
    * ^requirements = "The participant, if present, SHALL contain exactly one [1..1] @typeCode=\"REFT\" Referred to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32638)."
  * participantRole 1..1
    * ^requirements = "The participant, if present, SHALL contain exactly one [1..1] participantRole (CONF:1098-32636)."
    * code 0..1
    * code from $2.16.840.1.114222.4.11.1066 (preferred)
      * ^requirements = "This participantRole MAY contain zero or one [0..1] code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy urn:oid:2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1098-32637)."
* entryRelationship ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "observation"
  * ^slicing.rules = #open
  * ^short = "The following entryRelationship represents a reference to another act in the document instance representing the clinical reason for the referral (e.g., problem, concern, procedure)."
* entryRelationship contains
    entryRelationship1 0..* and
    indication 0..*
* entryRelationship[entryRelationship1] ^short = "The following entryRelationship represents whether the referral is for full or shared care."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-31604) such that it"
  * typeCode 1..1
  * typeCode = #SUBJ
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SUBJ\" has subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-31613)."
  * observation 1..1
    * ^requirements = "SHALL contain exactly one [1..1] observation (CONF:1098-31605)."
    * classCode 1..1
    * classCode = #OBS
      * ^requirements = "This observation SHALL contain exactly one [1..1] @classCode=\"OBS\" observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1098-31606)."
    * moodCode 1..1
    * moodCode = #RQO
      * ^requirements = "This observation SHALL contain exactly one [1..1] @moodCode=\"RQO\" request (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1098-31607)."
    * code 1..1
      * ^requirements = "This observation SHALL contain exactly one [1..1] code (CONF:1098-31608)."
      * code 1..1
      * code = "ASSERTION"
        * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"ASSERTION\" assertion (CONF:1098-31619)."
      * codeSystem 1..1
      * codeSystem = "2.16.840.1.113883.5.4"
        * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.5.4 \" (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:1098-31620)."
    * statusCode 1..1
      * ^requirements = "This observation SHALL contain exactly one [1..1] statusCode (CONF:1098-31614)."
      * code 1..1
      * code = "completed"
        * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1098-31615)."
    * priorityCode 0..1
    * priorityCode from $2.16.840.1.113883.1.11.16866 (preferred)
      * ^requirements = "This observation SHOULD contain zero or one [0..1] priorityCode, which SHOULD be selected from ValueSet ActPriority urn:oid:2.16.840.1.113883.1.11.16866 DYNAMIC (CONF:1098-32443)."
    * value 1..1
    * value only $CD
    * value from $2.16.840.1.113883.11.20.9.61 (preferred)
      * ^requirements = "This observation SHALL contain exactly one [1..1] value with @xsi:type=\"CD\", where the code SHOULD be selected from ValueSet Care Model urn:oid:2.16.840.1.113883.11.20.9.61 DYNAMIC (CONF:1098-31611)."
* entryRelationship[indication] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-31635) such that it"
  * typeCode 1..1
  * typeCode = #RSON
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"RSON\" has reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-31636)."
  * observation 1..1
  * observation only Indication
    * ^requirements = "SHALL contain exactly one [1..1] Indication (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.19:2014-06-09) (CONF:1098-32634)."