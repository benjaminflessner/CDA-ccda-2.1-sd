Profile: WoundCharacteristic
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.134
Title: "Wound Characteristic"
Description: "This template represents characteristics of a wound (e.g., integrity of suture line, odor, erythema)."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.4.134"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-29938)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-29939)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-29940) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.134"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.134\" (CONF:1098-29941)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-29942)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-29943)."
  * code 1..1
  * code = "ASSERTION"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"ASSERTION\" assertion (CONF:1098-31540)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.5.4"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.5.4\" (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:1098-31541)."
* statusCode 1..1
* statusCode = "completed"
  * ^requirements = "SHALL contain exactly one [1..1] statusCode=\"completed\" (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-29944)."
* effectiveTime 1..1
  * ^requirements = "SHALL contain exactly one [1..1] effectiveTime (CONF:1098-29946)."
* value ^slicing.rules = #open
* value contains woundCharacteristic 1..1
* value[woundCharacteristic] only $CD
* value[woundCharacteristic] from $2.16.840.1.113883.11.20.9.58 (required)
  * ^requirements = "SHALL contain exactly one [1..1] value with @xsi:type=\"CD\", where the code SHALL be selected from ValueSet Wound Characteristic urn:oid:2.16.840.1.113883.11.20.9.58 DYNAMIC (CONF:1098-29947)."