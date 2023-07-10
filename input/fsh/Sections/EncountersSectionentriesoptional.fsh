Profile: EncountersSectionentriesoptional
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.22
Title: "Encounters Section (entries optional)"
Description: "This section lists and describes any healthcare encounters pertinent to the patient's current health status or historical health history. An encounter is an interaction, regardless of the setting, between a patient and a practitioner who is vested with primary responsibility for diagnosing, evaluating, or treating the patient's condition. It may include visits, appointments, or non-face-to-face interactions. It is also a contact between a patient and a practitioner who has primary responsibility (exercising independent judgment) for assessing and treating the patient at a given contact. This section may contain all encounters for the time period being summarized, but should include notable encounters."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.22:2015-08-01"
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
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-7940) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.22"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.22\" (CONF:1198-10386)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32547)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-15461)."
  * code 1..1
  * code = "46240-8"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"46240-8\" Encounters (CONF:1198-15462)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1198-31136)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1198-7942)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1198-7943)."
* entry ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "encounter"
  * ^slicing.rules = #open
* entry contains encounter 0..*
* entry[encounter] ^requirements = "SHOULD contain zero or more [0..*] entry (CONF:1198-7951) such that it"
  * encounter 1..1
  * encounter only EncounterActivity
    * ^requirements = "SHALL contain exactly one [1..1] Encounter Activity (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.49:2015-08-01) (CONF:1198-15465)."