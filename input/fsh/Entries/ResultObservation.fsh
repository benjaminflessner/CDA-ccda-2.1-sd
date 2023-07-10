Profile: ResultObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.2
Title: "Result Observation"
Description: """This template represents the results of a laboratory, radiology, or other study performed on a patient.

The result observation includes a statusCode to allow recording the status of an observation. Pending results (e.g., a test has been run but results have not been reported yet) should be represented as active ActStatus."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.2:2015-08-01"
* ^version = "2015-08-01"
* ^publisher = "WaveOne Associates"
* ^contact.name = "Brett Marquard"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "4135496886"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "brett@waveoneassociates.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1198-7130)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1198-7131)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-7136) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.2"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.2\" (CONF:1198-9138)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32575)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1198-7137)."
* code 1..1
  * obeys 1198-19212
  * ^requirements = "SHALL contain exactly one [1..1] code, which SHOULD be selected from CodeSystem LOINC (urn:oid:2.16.840.1.113883.6.1) (CONF:1198-7133)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1198-7134)."
  * code 1..1
  * code from $2.16.840.1.113883.11.20.9.39 (required)
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Result Status urn:oid:2.16.840.1.113883.11.20.9.39 STATIC (CONF:1198-14849)."
* effectiveTime 1..1
  * ^label = "Represents the biologically relevant time of the measurement (e.g., the time a blood pressure reading is obtained, the time the blood sample was obtained for a chemistry test)."
  * ^short = "Represents the biologically relevant time of the measurement (e.g., the time a blood pressure reading is obtained, the time the blood sample was obtained for a chemistry test)."
  * ^requirements = "SHALL contain exactly one [1..1] effectiveTime (CONF:1198-7140)."
* value 1..1
  * obeys 1198-32610 and 1198-31866 and 1198-31484
  * ^requirements = "SHALL contain exactly one [1..1] value (CONF:1198-7143)."
* interpretationCode 0..*
  * ^requirements = "SHOULD contain zero or more [0..*] interpretationCode (CONF:1198-7147)."
  * code 1..1
  * code from $2.16.840.1.113883.1.11.78 (required)
    * ^requirements = "The interpretationCode, if present, SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Observation Interpretation (HL7) urn:oid:2.16.840.1.113883.1.11.78 DYNAMIC (CONF:1198-32476)."
* methodCode 0..1
  * ^requirements = "MAY contain zero or one [0..1] methodCode (CONF:1198-7148)."
* targetSiteCode 0..1
  * ^requirements = "MAY contain zero or one [0..1] targetSiteCode (CONF:1198-7153)."
* author 0..*
* author only AuthorParticipation
  * ^requirements = "SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1198-7149)."
* referenceRange 0..*
  * ^requirements = "SHOULD contain zero or more [0..*] referenceRange (CONF:1198-7150)."
  * observationRange 1..1
    * ^requirements = "The referenceRange, if present, SHALL contain exactly one [1..1] observationRange (CONF:1198-7151)."
    * code 0..0
      * ^requirements = "This observationRange SHALL NOT contain [0..0] code (CONF:1198-7152)."
    * value 1..1
      * ^requirements = "This observationRange SHALL contain exactly one [1..1] value (CONF:1198-32175)."

Invariant: 1198-19212
Description: "This code **SHOULD** be a code from the LOINC that identifies the result observation. If an appropriate LOINC code does not exist, then the local code for this result **SHALL** be sent (CONF:1198-19212)."
Severity: #warning

Invariant: 1198-32610
Description: "If Observation/value is a CD (**xsi:type=\"CD\"**) the value **SHOULD** be SNOMED-CT (CONF:1198-32610)."
Severity: #warning

Invariant: 1198-31866
Description: "A coded or physical quantity value **MAY** contain zero or more [0..&ast;] translations, which can be used to represent the original results as output by the lab (CONF:1198-31866)."
Severity: #warning

Invariant: 1198-31484
Description: "If Observation/value is a physical quantity (**xsi:type=\"PQ\"**), the unit of measure **SHALL** be selected from ValueSet UnitsOfMeasureCaseSensitive 2.16.840.1.113883.1.11.12839 **DYNAMIC** (CONF:1198-31484)."
Severity: #error