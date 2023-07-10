Profile: AdvanceDirectivesSectionEntriesOptional
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.21
Title: "Advance Directives Section (entries optional)"
Description: """This section contains data defining the patient's advance directives and any reference to supporting documentation, including living wills, healthcare proxies, and CPR and resuscitation status. If the referenced documents are available, they can be included in the exchange package. 

The most recent directives are required, if known, and should be listed in as much detail as possible. 

This section differentiates between "advance directives" and "advance directive documents". The former is the directions to be followed whereas the latter refers to a legal document containing those directions.
"""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.21:2015-08-01"
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
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-7928) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.21"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.21\" (CONF:1198-10376)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32497)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-15340)."
  * code 1..1
  * code = "42348-3"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"42348-3\" Advance Directives (CONF:1198-15342)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1198-30812)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1198-7930)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1198-7931)."
* entry 0..*
  * ^slicing.discriminator[0].type = #exists
  * ^slicing.discriminator[=].path = "*"
  * ^slicing.rules = #open
* entry contains
    observation 0..* and
    organizer 0..*
* entry[observation] ^requirements = "MAY contain zero or more [0..*] entry (CONF:1198-7957) such that it"
  * observation 1..1
  * observation only AdvanceDirectiveObservation
    * ^requirements = "SHALL contain exactly one [1..1] Advance Directive Observation (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.48:2015-08-01) (CONF:1198-15443)."
* entry[organizer] ^requirements = "MAY contain zero or more [0..*] entry (CONF:1198-32891) such that it"
  * organizer 1..1
  * organizer only AdvanceDirectiveOrganizer
    * ^requirements = "SHALL contain exactly one [1..1] Advance Directive Organizer (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.108:2015-08-01) (CONF:1198-32892)."