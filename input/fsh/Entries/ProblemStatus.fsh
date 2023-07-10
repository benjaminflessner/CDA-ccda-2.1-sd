Profile: ProblemStatus
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.6
Title: "Problem Status"
Description: """The Problem Status records the clinical status attributed to the problem.

"""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.6:2019-06-20"
* ^version = "2019-06-20"
* ^publisher = "Life Over Time Solutions"
* ^contact.name = "Lisa Nelson"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "4012191165"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "LisaRNelson@cox.net"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1198-7357)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1198-7358)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-7359) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.6"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.6\" (CONF:1198-10518)."
  * extension 1..1
  * extension = "2019-06-20"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2019-06-20\" (CONF:1198-32961)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-19162)."
  * code 1..1
  * code = "33999-4"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"33999-4\" Status (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1 STATIC) (CONF:1198-19163)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1198-7364)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1198-19113)."
* value 1..1
* value only $CD
* value from $2.16.840.1.113883.3.88.12.80.68 (required)
  * ^requirements = "SHALL contain exactly one [1..1] value with @xsi:type=\"CD\", where the code SHALL be selected from ValueSet Problem Status urn:oid:2.16.840.1.113883.3.88.12.80.68 DYNAMIC (CONF:1198-7365)."