Profile: AllergiesAndIntolerancesSectionEntriesRequired
Parent: AllergiesAndIntolerancesSectionEntriesOptional
Id: 2.16.840.1.113883.10.20.22.2.6.1
Title: "Allergies and Intolerances Section (entries required)"
Description: "This section lists and describes any medication allergies, adverse reactions, idiosyncratic reactions, anaphylaxis/anaphylactoid reactions to food items, and metabolic variations or adverse reactions/allergies to other substances (such as latex, iodine, tape adhesives). At a minimum, it should list currently active and any relevant historical allergies and adverse reactions."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.6.1:2015-08-01"
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
  * ^requirements = "MAY contain zero or one [0..1] @nullFlavor=\"NI\" No information (CodeSystem: HL7NullFlavor urn:oid:2.16.840.1.113883.5.1008) (CONF:1198-32824)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.rules = #open
* templateId contains secondary 1..1
* templateId[secondary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-7527) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.6.1"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.6.1\" (CONF:1198-10379)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32545)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-15349)."
  * code 1..1
  * code = "48765-2"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"48765-2\" Allergies, adverse reactions, alerts (CONF:1198-15350)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1198-32140)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1198-7534)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1198-7530)."
* entry ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "act"
  * ^slicing.rules = #open
  * ^short = "If section/@nullFlavor is not present:"
* entry[allergyConcern] 1..*
  * ^requirements = "SHALL contain at least one [1..*] entry (CONF:1198-7531) such that it"
  * act 1..1
  * act only AllergyConcernAct
    * ^requirements = "SHALL contain exactly one [1..1] Allergy Concern Act (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.30:2015-08-01) (CONF:1198-15446)."