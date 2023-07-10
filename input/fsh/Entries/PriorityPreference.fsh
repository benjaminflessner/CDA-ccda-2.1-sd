Profile: PriorityPreference
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.143
Title: "Priority Preference"
Description: "This template represents priority preferences chosen by a patient or a care provider. Priority preferences are choices made by care providers or patients or both relative to options for care or treatment (including scheduling, care experience, and meeting of personal health goals), the sharing and disclosure of health information, and the prioritization of concerns and problems."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.4.143"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1098-30949)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1098-30950)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-30951) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.143"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.143\" (CONF:1098-30952)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-30953)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-30954)."
  * code 1..1
  * code = "225773000"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"225773000\" Preference (CONF:1098-30955)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.96"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.96\" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:1098-30956)."
* effectiveTime 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-32327)."
* value 1..1
* value only $CD
* value from $2.16.840.1.113883.11.20.9.60 (required)
  * ^requirements = "SHALL contain exactly one [1..1] value with @xsi:type=\"CD\", where the code SHALL be selected from ValueSet Priority Level urn:oid:2.16.840.1.113883.11.20.9.60 DYNAMIC (CONF:1098-30957)."
* author 0..*
* author only AuthorParticipation
  * ^requirements = "SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-30958)."