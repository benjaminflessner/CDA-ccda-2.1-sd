Profile: InstructionsSection
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.45
Title: "Instructions Section"
Description: "The Instructions Section records instructions given to a patient. List patient decision aids here."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.45:2014-06-09"
* ^version = "2014-06-09"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* nullFlavor 0..1
* nullFlavor = #NI
  * ^requirements = "MAY contain zero or one [0..1] @nullFlavor=\"NI\" No information (CodeSystem: HL7NullFlavor urn:oid:2.16.840.1.113883.5.1008) (CONF:1098-32835)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-10112) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.45"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.45\" (CONF:1098-31384)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32599)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-15375)."
  * code 1..1
  * code = "69730-0"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"69730-0\" Instructions (CONF:1098-15376)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-32148)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1098-10114)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1098-10115)."
* entry ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "act"
  * ^slicing.rules = #open
  * ^short = "If section/@nullFlavor is not present:"
* entry contains instruction 1..*
* entry[instruction] ^requirements = "SHALL contain at least one [1..*] entry (CONF:1098-10116) such that it"
  * act 1..1
  * act only Instruction
    * ^requirements = "SHALL contain exactly one [1..1] Instruction (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.20:2014-06-09) (CONF:1098-31398)."