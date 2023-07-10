Profile: SurgicalDrainsSection
Parent: $Section
Id: 2.16.840.1.113883.10.20.7.13
Title: "Surgical Drains Section"
Description: "The Surgical Drains Section may be used to record drains placed during the surgical procedure. Optionally, surgical drain placement may be represented with a text element in the Procedure Description Section."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.7.13"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* obeys 81-8056
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-8038) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.7.13"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.7.13\" (CONF:81-10473)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-15441)."
  * code 1..1
  * code = "11537-8"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"11537-8\" Surgical Drains (CONF:81-15442)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:81-26498)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:81-8040)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:81-8041)."

Invariant: 81-8056
Description: "If the Surgical Drains section is present, there SHALL be a statement providing details of the drains placed or SHALL explicitly state there were no drains placed (CONF:81-8056)."
Severity: #warning