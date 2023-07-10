Profile: CognitiveStatusProblemObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.73
Title: "Cognitive Status Problem Observation (DEPRECATED)"
Description: """A cognitive status problem observation is a clinical statement that describes a patient's cognitive condition, findings, or symptoms. Examples of cognitive problem observations are inability to recall, amnesia, dementia, and aggressive behavior. 

A cognitive problem observation is a finding or medical condition. This is different from a cognitive result observation, which is a response to a question that provides insight into the patient's cognitive status, judgement, comprehension ability, or response speed.

THIS TEMPLATE HAS BEEN DEPRECATED AND MAY BE DELETED FROM A FUTURE RELEASE OF THIS IMPLEMENTATION GUIDE. USE OF THIS TEMPLATE IS NOT RECOMMENDED.

*Reason for deprecation*: Cognitive Status Problem Observation has been merged, without loss of expressivity, into Mental Status Observation (2.16.840.1.113883.10.20.22.4.74)."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.73:2014-06-09"
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
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-14319)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-14320)."
* negationInd 0..1
  * ^short = "Use negationInd=\"true\" to indicate that the problem was not observed."
  * ^requirements = "MAY contain zero or one [0..1] @negationInd (CONF:1098-14344)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-14346) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.73"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.73\" (CONF:1098-14347)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32600)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-14321)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-14804)."
  * code 0..1
  * code = "373930000"
    * ^requirements = "This code SHOULD contain zero or one [0..1] @code=\"373930000\" Cognitive function finding   (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96 STATIC) (CONF:1098-14805)."
* text 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] text (CONF:1098-14341)."
  * reference 0..1
    * ^requirements = "The text, if present, SHOULD contain zero or one [0..1] reference (CONF:1098-15532)."
    * value 0..1
      * obeys 1098-15534
      * ^requirements = "The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1098-15533)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-14323)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19091)."
* effectiveTime 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-14324)."
  * low 1..1
    * ^short = "The value of effectiveTime/low represents onset date."
    * ^requirements = "The effectiveTime, if present, SHALL contain exactly one [1..1] low (CONF:1098-26458)."
  * high 0..1
    * ^short = "If the problem is resolved, record the resolution date in effectiveTime/high. If the problem is known to be resolved but the resolution date is not known, use @nullFlavor=\"UNK\". If the problem is not resolved, do not include the high element."
    * ^requirements = "The effectiveTime, if present, MAY contain zero or one [0..1] high (CONF:1098-26459)."
* value 1..1
* value only $CD
* value from $2.16.840.1.113883.3.88.12.3221.7.4 (preferred)
  * ^requirements = "SHALL contain exactly one [1..1] value with @xsi:type=\"CD\", where the code SHOULD be selected from ValueSet Problem urn:oid:2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:1098-14349)."
* methodCode 0..*
  * ^requirements = "MAY contain zero or more [0..*] methodCode (CONF:1098-14693)."

Invariant: 1098-15534
Description: "SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1098-15534)."
Severity: #error