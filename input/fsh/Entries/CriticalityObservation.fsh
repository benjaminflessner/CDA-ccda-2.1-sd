Profile: CriticalityObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.145
Title: "Criticality Observation"
Description: "This observation represents the gravity of the potential risk for future life-threatening adverse reactions when exposed to a substance known to cause an adverse reaction in that individual. When the worst case result is assessed to have a life-threatening or organ system threatening potential, it is considered to be of high criticality."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.4.145"
* ^publisher = "WaveOne Associates"
* ^contact.name = "Brett Marquard"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "4135496886"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "brett@waveoneassociates.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:81-32921)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:81-32922)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-32918) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.145"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.145\" (CONF:81-32923)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-32919)."
  * code 1..1
  * code = "82606-5"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"82606-5\" Criticality (CONF:81-32925)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:81-32926)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:81-32920)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:81-32927)."
* value 1..1
* value only $CD
* value from $2.16.840.1.113883.1.11.20549 (required)
  * ^requirements = "SHALL contain exactly one [1..1] value with @xsi:type=\"CD\", where the code SHALL be selected from ValueSet Criticality Observation urn:oid:2.16.840.1.113883.1.11.20549 DYNAMIC (CONF:81-32928)."