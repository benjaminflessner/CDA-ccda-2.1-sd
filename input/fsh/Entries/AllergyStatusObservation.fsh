Profile: AllergyStatusObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.28
Title: "Allergy Status Observation"
Description: """This template represents the clinical status attributed to the allergy or intolerance. There can be only one allergy status observation per allergy - intolerance observation.
"""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.28:2019-06-20"
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
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1198-7318)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1198-7319)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-7317) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.28"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.28\" (CONF:1198-10490)."
  * extension 1..1
  * extension = "2019-06-20"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2019-06-20\" (CONF:1198-32962)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-7320)."
  * code 1..1
  * code = "33999-4"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"33999-4\" Status (CONF:1198-19131)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1198-32155)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1198-7321)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1198-19087)."
* value 1..1
* value only $CE
* value from $2.16.840.1.113762.1.4.1099.29 (required)
  * ^requirements = "SHALL contain exactly one [1..1] value with @xsi:type=\"CE\", where the code SHALL be selected from ValueSet Allergy Clinical Status urn:oid:2.16.840.1.113762.1.4.1099.29 DYNAMIC (CONF:1198-7322)."