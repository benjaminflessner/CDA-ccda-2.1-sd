Profile: VitalSignsSectionEntriesOptional
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.4
Title: "Vital Signs Section (entries optional)"
Description: """The Vital Signs Section contains relevant vital signs for the context and use case of the document type, such as blood pressure, heart rate, respiratory rate, height, weight, body mass index, head circumference, pulse oximetry, temperature, and body surface area. The section should include notable vital signs such as the most recent, maximum and/or minimum, baseline, or relevant trends.

Vital signs are represented in the same way as other results, but are aggregated into their own section to follow clinical conventions."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.4:2015-08-01"
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
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-7268) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.4"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.4\" (CONF:1198-10451)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32584)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-15242)."
  * code 1..1
  * code = "8716-3"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"8716-3\" Vital Signs (CONF:1198-15243)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1198-30902)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1198-9966)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1198-7270)."
* entry ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "organizer"
  * ^slicing.rules = #open
* entry contains organizer 0..*
* entry[organizer] ^requirements = "SHOULD contain zero or more [0..*] entry (CONF:1198-7271) such that it"
  * organizer 1..1
  * organizer only VitalSignsOrganizer
    * ^requirements = "SHALL contain exactly one [1..1] Vital Signs Organizer (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.26:2015-08-01) (CONF:1198-15517)."