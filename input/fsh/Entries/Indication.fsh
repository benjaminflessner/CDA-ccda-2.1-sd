Profile: Indication
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.19
Title: "Indication"
Description: "This template represents the rationale for an action such as an encounter, a medication administration, or a procedure. The id element can be used to reference a problem recorded elsewhere in the document, or can be used with a code and value to record the problem. Indications for treatment are not laboratory results; rather the problem associated with the laboratory result should be cited (e.g., hypokalemia instead of a laboratory result of Potassium 2.0 mEq/L). Use the Drug Monitoring Act [templateId 2.16.840.1.113883.10.20.22.4.123] to indicate if a particular drug needs special monitoring (e.g., anticoagulant therapy). Use Precondition for Substance Administration (V2) [templateId 2.16.840.1.113883.10.20.22.4.25.2] to represent that a medication is to be administered only when the associated criteria are met."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.19:2014-06-09"
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
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-7480)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7481)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-7482) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.19"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.19\" (CONF:1098-10502)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32570)."
* id 1..*
  * ^label = "If the id element is used to reference a problem recorded elsewhere in the document then this id must equal another entry/id in the same document instance. Application Software must be responsible for resolving the identifier back to its original object and then rendering the information in the correct place in the containing section's narrative text. Its purpose is to obviate the need to repeat the complete XML representation of the referred to entry when relating one entry to another."
  * ^short = "If the id element is used to reference a problem recorded elsewhere in the document then this id must equal another entry/id in the same document instance. Application Software must be responsible for resolving the identifier back to its original object and then rendering the information in the correct place in the containing section's narrative text. Its purpose is to obviate the need to repeat the complete XML representation of the referred to entry when relating one entry to another."
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-7483)."
* code 1..1
* code from $2.16.840.1.113883.3.88.12.3221.7.2 (example)
  * ^requirements = "SHALL contain exactly one [1..1] code, which MAY be selected from ValueSet Problem Type (SNOMEDCT) urn:oid:2.16.840.1.113883.3.88.12.3221.7.2 DYNAMIC (CONF:1098-31229)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-7487)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19105)."
* effectiveTime 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-7488)."
* value 0..1
* value only $CD
* value from $2.16.840.1.113883.3.88.12.3221.7.4 (preferred)
  * ^requirements = "MAY contain zero or one [0..1] value with @xsi:type=\"CD\", where the code SHOULD be selected from ValueSet Problem urn:oid:2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:1098-7489)."