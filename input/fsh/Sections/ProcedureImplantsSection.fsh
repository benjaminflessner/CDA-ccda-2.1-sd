Profile: ProcedureImplantsSection
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.40
Title: "Procedure Implants Section"
Description: "The Procedure Implants Section records any materials placed during the procedure including stents, tubes, and drains."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.2.40"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* obeys 81-8769
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-8178) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.40"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.40\" (CONF:81-10444)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-15373)."
  * code 1..1
  * code = "59771-6"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"59771-6\" Procedure Implants (CONF:81-15374)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:81-26492)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:81-8180)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:81-8181)."

Invariant: 81-8769
Description: "The Procedure Implants section **SHALL** include a statement providing details of the implants placed, or assert no implants were placed (CONF:81-8769)."
Severity: #error