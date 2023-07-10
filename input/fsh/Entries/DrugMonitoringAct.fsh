Profile: DrugMonitoringAct
Parent: $Act
Id: 2.16.840.1.113883.10.20.22.4.123
Title: "Drug Monitoring Act"
Description: """This template represents the act of monitoring the patient's medication and includes a participation to record the person responsible for monitoring the medication. The prescriber of the medication is not necessarily the same person or persons monitoring the drug. The effectiveTime indicates the time when the activity is intended to take place.

For example, a cardiologist may prescribe a patient Warfarin. The patient's primary care provider may monitor the patient's INR and adjust the dosing of the Warfarin based on these laboratory results. Here the person designated to monitor the drug is the primary care provider."""
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.4.123"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #ACT
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"ACT\" act (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1098-30823)."
* moodCode 1..1
* moodCode = #INT
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"INT\" (CONF:1098-28656)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-28657) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.123"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.123\" (CONF:1098-28658)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-31920)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-28660)."
  * code 1..1
  * code = "395170001"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"395170001\" medication monitoring (regime/therapy) (CONF:1098-30818)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.96"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.96\" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:1098-30819)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-31921)."
  * code 1..1
  * code from $2.16.840.1.113883.1.11.15933 (required)
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ActStatus urn:oid:2.16.840.1.113883.1.11.15933 DYNAMIC (CONF:1098-32358)."
* effectiveTime 1..1
  * ^requirements = "SHALL contain exactly one [1..1] effectiveTime (CONF:1098-31922)."
* participant ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "typeCode"
  * ^slicing.rules = #open
* participant contains participant1 1..*
* participant[participant1] ^requirements = "SHALL contain at least one [1..*] participant (CONF:1098-28661) such that it"
  * typeCode 1..1
  * typeCode = #RESP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"RESP\" (CONF:1098-28663)."
  * participantRole 1..1
    * ^requirements = "SHALL contain exactly one [1..1] participantRole (CONF:1098-28662)."
    * classCode 1..1
    * classCode = #ASSIGNED
      * ^requirements = "This participantRole SHALL contain exactly one [1..1] @classCode=\"ASSIGNED\" (CONF:1098-28664)."
    * id 1..*
      * ^requirements = "This participantRole SHALL contain at least one [1..*] id (CONF:1098-28665)."
    * playingEntity 1..1
      * ^requirements = "This participantRole SHALL contain exactly one [1..1] playingEntity (CONF:1098-28667)."
      * classCode 1..1
      * classCode = #PSN
        * ^requirements = "This playingEntity SHALL contain exactly one [1..1] @classCode=\"PSN\" (CONF:1098-28668)."
      * name 1..1
      * name only USRealmPersonNamePNUSFIELDED
        * ^requirements = "This playingEntity SHALL contain exactly one [1..1] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1098-28669)."