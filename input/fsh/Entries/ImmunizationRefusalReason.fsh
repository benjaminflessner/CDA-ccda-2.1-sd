Profile: ImmunizationRefusalReason
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.53
Title: "Immunization Refusal Reason"
Description: "The Immunization Refusal Reason documents the rationale for the patient declining an immunization."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.4.53"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:81-8991)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:81-8992)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-8993) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.53"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.53\" (CONF:81-10500)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:81-8994)."
* code 1..1
* code from $2.16.840.1.113883.1.11.19717 (required)
  * ^requirements = "SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet No Immunization Reason urn:oid:2.16.840.1.113883.1.11.19717 DYNAMIC (CONF:81-8995)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:81-8996)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:81-19104)."