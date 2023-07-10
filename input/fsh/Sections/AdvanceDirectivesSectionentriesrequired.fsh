Profile: AdvanceDirectivesSectionentriesrequired
Parent: AdvanceDirectivesSectionEntriesOptional
Id: 2.16.840.1.113883.10.20.22.2.21.1
Title: "Advance Directives Section (entries required)"
Description: """This section contains data defining the patient's advance directives and any reference to supporting documentation, including living wills, healthcare proxies, and CPR and resuscitation status. If the referenced documents are available, they can be included in the exchange package.

The most recent directives are required, if known, and should be listed in as much detail as possible.

This section differentiates between "advance directives" and "advance directive documents". The former is the directions to be followed whereas the latter refers to a legal document containing those directions.
"""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.21.1:2015-08-01"
* ^publisher = "WaveOne Associates"
* ^contact.name = "Brett Marquard"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "4135496886"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "brett@waveoneassociates.com"
* ^contact.telecom[=].use = #work
* nullFlavor 0..1
* nullFlavor = #NI
  * ^requirements = "MAY contain zero or one [0..1] @nullFlavor=\"NI\" No information (CodeSystem: HL7NullFlavor urn:oid:2.16.840.1.113883.5.1008) (CONF:1198-32800)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains secondary 1..1
* templateId[secondary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-30227) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.21.1"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.21.1\" (CONF:1198-30228)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32512)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-32929)."
  * code 1..1
  * code = "42348-3"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"42348-3\" Advance Directives (CONF:1198-32930)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1198-32931)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1198-32932)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1198-32933)."
* entry 1..*
  * obeys 1198-32881
  * ^short = "If section/@nullFlavor is not present SHALL contain an Advance Directive Observation (V2) OR an Advance Directive Organizer (NEW):"
  * ^requirements = "SHALL contain at least one [1..*] entry (CONF:1198-30235) such that it"

Invariant: 1198-32881
Description: "This entry **SHALL** contain *EITHER* an Advance Directive Observation (V2) *OR* an Advance Directive Organizer (CONF:1198-32881)."
Severity: #error