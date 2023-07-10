Profile: ImmunizationsSectionEntriesRequired
Parent: ImmunizationsSectionEntriesOptional
Id: 2.16.840.1.113883.10.20.22.2.2.1
Title: "Immunizations Section (entries required)"
Description: "The Immunizations Section defines a patient's current immunization status and pertinent immunization history. The primary use case for the Immunization Section is to enable communication of a patient's immunization status. The section should include current immunization status, and may contain the entire immunization history that is relevant to the period of time being summarized."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.2.1:2015-08-01"
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
  * ^requirements = "MAY contain zero or one [0..1] @nullFlavor=\"NI\" No information (CodeSystem: HL7NullFlavor urn:oid:2.16.840.1.113883.5.1008) (CONF:1198-32833)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains secondary 1..1
* templateId[secondary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-9015) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.2.1"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.2.1\" (CONF:1198-10400)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32530)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-15369)."
  * code 1..1
  * code = "11369-6"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"11369-6\" Immunizations (CONF:1198-15370)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1198-32147)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1198-9017)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1198-9018)."
* entry ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "substanceAdministration"
  * ^slicing.rules = #open
  * ^short = "If section/@nullFlavor is not present..."
* entry[activity] 1..*
  * ^requirements = "SHALL contain at least one [1..*] entry (CONF:1198-9019) such that it"