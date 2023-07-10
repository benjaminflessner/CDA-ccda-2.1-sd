Profile: AdvanceDirectiveOrganizer
Parent: $Organizer
Id: 2.16.840.1.113883.10.20.22.4.108
Title: "Advance Directive Organizer"
Description: "This clinical statement groups a set of advance directive observations."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.108:2015-08-01"
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
* classCode = #CLUSTER
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"CLUSTER\" Cluster (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1198-28410)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1198-28411)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-28412) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.108"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.108\" (CONF:1198-28413)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32876)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1198-28414)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-28415)."
  * code 1..1
  * code = "45473-6"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"45473-6\" Advance directive - living will  (CONF:1198-31230)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1 STATIC) (CONF:1198-31231)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1198-28418)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1198-31346)."
* author 0..*
* author only AuthorParticipation
  * ^requirements = "SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1198-32407)."
* component ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.rules = #open
* component contains component1 1..*
* component[component1] ^requirements = "SHALL contain at least one [1..*] component (CONF:1198-28420) such that it"
  * observation 1..1
  * observation only AdvanceDirectiveObservation
    * ^requirements = "SHALL contain exactly one [1..1] Advance Directive Observation (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.48:2015-08-01) (CONF:1198-28421)."