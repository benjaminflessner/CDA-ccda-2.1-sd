Profile: PrognosisObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.113
Title: "Prognosis Observation"
Description: """This template represents the patient's prognosis, which must be associated with a problem observation. It may serve as an alert to scope intervention plans. 
The effectiveTime represents the clinically relevant time of the observation. The observation/value is not constrained and can represent the expected life duration in PQ, an anticipated course of the disease in text, or coded term."""
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.4.113"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-29035)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-29036)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-29037) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.113"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.113\" (CONF:1098-29038)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-29039)."
  * code 1..1
  * code = "75328-5"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"75328-5\" Prognosis (CONF:1098-29468)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-31349)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-31350)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1098-31351)."
* effectiveTime 1..1
  * ^requirements = "SHALL contain exactly one [1..1] effectiveTime (CONF:1098-31123)."
* value 1..1
  * ^requirements = "SHALL contain exactly one [1..1] value (CONF:1098-29469)."