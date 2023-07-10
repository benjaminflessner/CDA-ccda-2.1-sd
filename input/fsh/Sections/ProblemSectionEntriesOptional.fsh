Profile: ProblemSectionEntriesOptional
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.5
Title: "Problem Section (entries optional)"
Description: "This section lists and describes all relevant clinical problems at the time the document is generated. At a minimum, all pertinent current and historical problems should be listed. Overall health status may be represented in this section."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.5:2015-08-01"
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
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-7877) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.5"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.5\" (CONF:1198-10440)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32511)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-15407)."
  * code 1..1
  * code = "11450-4"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"11450-4\" Problem List (CONF:1198-15408)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1198-31141)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1198-7879)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1198-7880)."
* entry ..*
  * ^slicing.discriminator[0].type = #exists
  * ^slicing.discriminator[=].path = "*"
  * ^slicing.rules = #open
* entry contains
    act 0..* and
    observation 0..1
* entry[act].act 1..1
* entry[act].act only ProblemConcernAct
  * ^requirements = "SHALL contain exactly one [1..1] Problem Concern Act (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.3:2015-08-01) (CONF:1198-15505)"
* entry[observation].observation 1..1
* entry[observation].observation only HealthStatusObservation
  * ^requirements = "SHALL contain exactly one [1..1] Health Status Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.5:2014-06-09) (CONF:1198-30482)."