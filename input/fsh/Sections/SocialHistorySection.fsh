Profile: SocialHistorySection
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.17
Title: "Social History Section"
Description: "This section contains social history data that influence a patient's physical, psychological or emotional health (e.g., smoking status, pregnancy). Demographic data, such as marital status, race, ethnicity, and religious affiliation, is captured in the header."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.17:2015-08-01"
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
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-7936) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.17"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.17\" (CONF:1198-10449)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32494)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-14819)."
  * code 1..1
  * code = "29762-2"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"29762-2\" Social History (CONF:1198-14820)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1198-30814)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1198-7938)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1198-7939)."
* entry ..*
  * ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.rules = #open
* entry contains
    socialHistory 0..* and
    pregnancyPregnancy 0..* and
    smokingStatus 0..* and
    tobaccoUse 0..* and
    caregiver 0..* and
    culteralReligious 0..* and
    homeCharacteristics 0..*
* entry[socialHistory] ^requirements = "MAY contain zero or more [0..*] entry (CONF:1198-7953) such that it"
  * observation 1..1
  * observation only SocialHistoryObservation
    * ^requirements = "SHALL contain exactly one [1..1] Social History Observation (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.38:2015-08-01) (CONF:1198-14821)."
* entry[pregnancyPregnancy] ^requirements = "MAY contain zero or more [0..*] entry (CONF:1198-9132) such that it"
  * observation 1..1
  * observation only PregnancyObservation
    * ^requirements = "SHALL contain exactly one [1..1] Pregnancy Observation (identifier: urn:oid:2.16.840.1.113883.10.20.15.3.8) (CONF:1198-14822)."
* entry[smokingStatus] ^requirements = "SHOULD contain zero or more [0..*] entry (CONF:1198-14823) such that it"
  * observation 1..1
  * observation only SmokingStatusMeaningfulUse
    * ^requirements = "SHALL contain exactly one [1..1] Smoking Status - Meaningful Use (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.78:2014-06-09) (CONF:1198-14824)."
* entry[tobaccoUse] ^requirements = "MAY contain zero or more [0..*] entry (CONF:1198-16816) such that it"
  * observation 1..1
  * observation only TobaccoUse
    * ^requirements = "SHALL contain exactly one [1..1] Tobacco Use (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.85:2014-06-09) (CONF:1198-16817)."
* entry[caregiver] ^requirements = "MAY contain zero or more [0..*] entry (CONF:1198-28361) such that it"
  * observation 1..1
  * observation only CaregiverCharacteristics
    * ^requirements = "SHALL contain exactly one [1..1] Caregiver Characteristics (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.72) (CONF:1198-28362)."
* entry[culteralReligious] ^requirements = "MAY contain zero or more [0..*] entry (CONF:1198-28366) such that it"
  * observation 1..1
  * observation only CulturalandReligiousObservation
    * ^requirements = "SHALL contain exactly one [1..1] Cultural and Religious Observation (identifier: urn:oi\n                d:2.16.840.1.113883.10.20.22.4.111) (CONF:1198-28367)."
* entry[homeCharacteristics] ^requirements = "MAY contain zero or more [0..*] entry (CONF:1198-28825) such that it"
  * observation 1..1
  * observation only CharacteristicsofHomeEnvironment
    * ^requirements = "SHALL contain exactly one [1..1] Characteristics of Home Environment (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.109) (CONF:1198-28826)."