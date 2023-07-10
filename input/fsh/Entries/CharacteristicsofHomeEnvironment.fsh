Profile: CharacteristicsofHomeEnvironment
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.109
Title: "Characteristics of Home Environment"
Description: "This template represents the patient's home environment including, but not limited to, type of residence (trailer, single family home, assisted living), living arrangement (e.g., alone, with parents), and housing status (e.g., evicted, homeless, home owner)."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.4.109"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-27890)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-27891)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-27892) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.109"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.109\" (CONF:1098-27893)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-27894)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-31352)."
  * code 1..1
  * code = "75274-1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"75274-1\" Characteristics of residence (CONF:1098-31353)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-31354)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-27901)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-27902)."
* value 1..1
* value only $CD
* value from $2.16.840.1.113883.11.20.9.49 (preferred)
  * ^requirements = "SHALL contain exactly one [1..1] value with @xsi:type=\"CD\", where the code SHOULD be selected from ValueSet Residence and Accommodation Type urn:oid:2.16.840.1.113883.11.20.9.49 DYNAMIC (CONF:1098-28823)."