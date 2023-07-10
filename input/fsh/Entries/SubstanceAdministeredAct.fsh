Profile: SubstanceAdministeredAct
Parent: $Act
Id: 2.16.840.1.113883.10.20.22.4.118
Title: "Substance Administered Act"
Description: "This template represents the administration course in a series. The entryRelationship/sequenceNumber in the containing template shows the order of this particular administration in that medication series."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.4.118"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #ACT
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"ACT\" Act (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1098-31500)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1098-31501)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-31502) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.118"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.118\" (CONF:1098-31503)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-31504)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-31506)."
  * code 1..1
  * code = "416118004"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"416118004\" Administration (CONF:1098-31507)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.96"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.96\" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:1098-31508)."
* statusCode 1..1
* statusCode = "completed"
  * ^requirements = "SHALL contain exactly one [1..1] statusCode=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1098-31505)."
* effectiveTime 0..1
  * ^requirements = "MAY contain zero or one [0..1] effectiveTime (CONF:1098-31509)."