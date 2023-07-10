Profile: ComplicationsSection
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.37
Title: "Complications Section"
Description: "This section contains problems that occurred during or around the time of a procedure. The complications may be known risks or unanticipated problems."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.37:2015-08-01"
* ^version = "2015-08-01"
* ^publisher = "WaveOne Associates"
* ^contact.name = "Brett Marquard"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "4135496886"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "brett@waveoneassociates.com"
* ^contact.telecom[=].use = #work
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-8174) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.37"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.37\" (CONF:1198-10384)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32538)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-15453)."
  * code 1..1
  * code = "55109-3"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"55109-3\" Complications (CONF:1198-15454)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1198-30860)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1198-8176)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1198-8177)."
* entry ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.rules = #open
* entry contains problem 0..*
* entry[problem] ^requirements = "MAY contain zero or more [0..*] entry (CONF:1198-8795) such that it"
  * observation 1..1
  * observation only ProblemObservation
    * ^short = "When no coded entries or negation of entries are present, narrative section/text will be provided containing details of the complication(s) or that there were no complications."
    * ^requirements = "SHALL contain exactly one [1..1] Problem Observation (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.4:2015-08-01) (CONF:1198-15455)."