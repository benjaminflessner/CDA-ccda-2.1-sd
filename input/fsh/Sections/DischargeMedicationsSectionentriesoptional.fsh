Profile: DischargeMedicationsSectionentriesoptional
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.11
Title: "Discharge Medications Section (entries optional)"
Description: "This section contains the medications the patient is intended to take or stop after discharge. Current, active medications must be listed. The section may also include a patient's prescription history and indicate the source of the medication list."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.11:2015-08-01"
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
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-7816) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.11"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.11\" (CONF:1198-10396)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32561)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-15359)."
  * code 1..1
  * code = "10183-2"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"10183-2\" Hospital Discharge medications (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1 STATIC) (CONF:1198-15360)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1198-32480)."
  * translation ^slicing.discriminator[0].type = #value
    * ^slicing.discriminator[=].path = "code"
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "codeSystem"
    * ^slicing.rules = #open
* Section.code
  * translation contains translation1 1..1
  * translation[translation1] ^requirements = "This code SHALL contain exactly one [1..1] translation (CONF:1198-32854) such that it"
    * code 1..1
    * code = "75311-1"
      * ^requirements = "SHALL contain exactly one [1..1] @code=\"75311-1\" Discharge medications (CONF:1198-32855)."
    * codeSystem 1..1
    * codeSystem = "2.16.840.1.113883.6.1"
      * ^requirements = "SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1198-32856)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1198-7818)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1198-7819)."
* entry ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "act"
  * ^slicing.rules = #open
* entry contains dischargeMed 0..*
* entry[dischargeMed] ^requirements = "SHOULD contain zero or more [0..*] entry (CONF:1198-7820) such that it"
  * act 1..1
  * act only DischargeMedication
    * ^requirements = "SHALL contain exactly one [1..1] Discharge Medication (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.35:2016-03-01) (CONF:1198-15490)."