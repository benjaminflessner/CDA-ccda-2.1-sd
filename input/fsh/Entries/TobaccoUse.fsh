Profile: TobaccoUse
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.85
Title: "Tobacco Use"
Description: """This template represents a patient's tobacco use. 

All the types of tobacco use are represented using the codes from the tobacco use and exposure-finding hierarchy in SNOMED CT, including codes required for recording smoking status in Meaningful Use Stage 2. 

The effectiveTime element is used to describe dates associated with the patient's tobacco use. Whereas the Smoking Status - Meaningful Use (V2) template (2.16.840.1.113883.10.20.22.4.78:2014-06-09) represents a "snapshot in time" observation, simply reflecting what the patient's current smoking status is at the time of the observation, this Tobacco Use template uses effectiveTime to represent the biologically relevant time of the observation. Thus, to record a former smoker, an observation of "cigarette smoker" will have an effectiveTime/low defining the time the patient started to smoke cigarettes and an effectiveTime/high defining the time the patient ceased to smoke cigarettes. To record a current smoker, the effectiveTime/low will define the time the patient started smoking and will have no effectiveTime/high to indicated that the patient is still smoking."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.85:2014-06-09"
* ^version = "2014-06-09"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-16558)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-16559)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-16566) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.85"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.85\" (CONF:1098-16567)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32589)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-32400)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-19174)."
  * code 1..1
  * code = "11367-0"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"11367-0\" History of tobacco use (CONF:1098-19175)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-32172)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-16561)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19118)."
* effectiveTime 1..1
  * ^label = "The effectiveTime represents the biologically relevant time of the observation. A \"former smoker\" is recorded with the proper code \"current smoker\" with an effectiveTime/low and effectiveTime/high  defining the time during which the patient was a smoker."
  * ^short = "The effectiveTime represents the biologically relevant time of the observation. A \"former smoker\" is recorded with the proper code \"current smoker\" with an effectiveTime/low and effectiveTime/high  defining the time during which the patient was a smoker."
  * ^requirements = "SHALL contain exactly one [1..1] effectiveTime (CONF:1098-16564)."
  * low 1..1
    * ^requirements = "This effectiveTime SHALL contain exactly one [1..1] low (CONF:1098-16565)."
  * high 0..1
    * ^requirements = "This effectiveTime MAY contain zero or one [0..1] high (CONF:1098-31431)."
* value 1..1
* value only $CD
  * ^requirements = "SHALL contain exactly one [1..1] value with @xsi:type=\"CD\" (CONF-1098-16562)."
  * code 1..1
  * code from $2.16.840.1.113883.11.20.9.41 (required)
    * ^requirements = "This value SHALL contain exactly one [1..1] @code,  which SHALL be selected from ValueSet Tobacco Use urn:oid:2.16.840.1.113883.11.20.9.41 DYNAMIC (CONF:1098-16563)."
* author 0..*
* author only AuthorParticipation
  * ^requirements = "SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31152)."