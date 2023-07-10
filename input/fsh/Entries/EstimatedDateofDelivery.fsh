Profile: EstimatedDateofDelivery
Parent: $Observation
Id: 2.16.840.1.113883.10.20.15.3.1
Title: "Estimated Date of Delivery"
Description: "This clinical statement represents the anticipated date when a woman will give birth."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.15.3.1"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:81-444)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:81-445)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #closed
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-16762) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.15.3.1"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.15.3.1\" (CONF:81-16763)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-19139)."
  * code 1..1
  * code = "11778-8"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"11778-8\" Estimated date of delivery (CONF:81-19140)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:81-26503)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:81-448)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:81-19096)."
* value 1..1
* value only $TS
  * ^requirements = "SHALL contain exactly one [1..1] value with @xsi:type=\"TS\" (CONF:81-450)."