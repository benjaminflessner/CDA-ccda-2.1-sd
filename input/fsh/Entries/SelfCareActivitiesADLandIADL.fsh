Profile: SelfCareActivitiesADLandIADL
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.128
Title: "Self-Care Activities (ADL and IADL)"
Description: "This template represents a patient's daily self-care ability. These activities are called Activities of Daily Living (ADL) and Instrumental Activities of Daily Living (IADL). ADLs involve caring for and moving of the body (e.g., dressing, bathing, eating). IADLs support an independent life style (e.g., cooking, managing medications, driving, shopping)."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.4.128"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1098-31389)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1098-31390)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-28190) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.128"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.128\" (CONF:1098-28457)."
* code 1..1
* code from $2.16.840.1.113883.11.20.9.47 (preferred)
  * ^short = "If more detailed ADL and IADL activities need to be recorded select the appropriate code from LOINC."
  * ^requirements = "SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet ADL Result Type urn:oid:2.16.840.1.113883.11.20.9.47 DYNAMIC (CONF:1098-28153)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1098-32490)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1098-32491)."
* effectiveTime 1..1
  * ^requirements = "SHALL contain exactly one [1..1] effectiveTime (CONF:1098-32492)."
* value ^slicing.rules = #open
* value contains ability 1..1
* value[ability] only $CD
* value[ability] from $2.16.840.1.113883.11.20.9.46 (preferred)
  * ^requirements = "SHALL contain exactly one [1..1] value with @xsi:type=\"CD\", where the code SHOULD be selected from ValueSet Ability urn:oid:2.16.840.1.113883.11.20.9.46 DYNAMIC (CONF:1098-28042)."
* author 0..*
* author only AuthorParticipation
  * ^requirements = "SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-32469)."