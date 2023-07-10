Profile: AdmissionDiagnosisSection
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.43
Title: "Admission Diagnosis Section"
Description: "This section contains a narrative description of the problems or diagnoses identified by the clinician at the time of the patient's admission. This section may contain a coded entry which represents the admitting diagnoses."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.43:2015-08-01"
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
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-9930) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.43"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.43\" (CONF:1198-10391)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32563)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-15479)."
  * code 1..1
  * code = "46241-6"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"46241-6\" Hospital Admission diagnosis (CONF:1198-15480)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1198-30865)."
  * translation ^slicing.discriminator[0].type = #value
    * ^slicing.discriminator[=].path = "code"
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "codeSystem"
    * ^slicing.rules = #open
* Section.code
  * translation contains admissionDiag 1..1
  * translation[admissionDiag] ^requirements = "This code SHALL contain exactly one [1..1] translation (CONF:1198-32749) such that it"
    * code 1..1
    * code = "42347-5"
      * ^requirements = "SHALL contain exactly one [1..1] @code=\"42347-5\" Admission Diagnosis (CONF:1198-32750)."
    * codeSystem 1..1
    * codeSystem = "2.16.840.1.113883.6.1"
      * ^requirements = "SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1 STATIC) (CONF:1198-32751)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1198-9932)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1198-9933)."
* entry 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] entry (CONF:1198-9934)."
  * act 1..1
  * act only HospitalAdmissionDiagnosis
    * ^requirements = "The entry, if present, SHALL contain exactly one [1..1] Hospital Admission Diagnosis (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.34:2015-08-01) (CONF:1198-15481)."