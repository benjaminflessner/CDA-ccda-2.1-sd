Profile: CoverageActivity
Parent: $Act
Id: 2.16.840.1.113883.10.20.22.4.60
Title: "Coverage Activity"
Description: "A Coverage Activity groups the policy and authorization acts within a Payers Section to order the payment sources. A Coverage Activity contains one or more Policy Activities, each of which contains zero or more Authorization Activities. The Coverage Activity id is the ID from the patient's insurance card. The sequenceNumber/@value shows the policy order of preference."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.60:2015-08-01"
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
* classCode = #ACT
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"ACT\" Act (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1198-8872)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1198-8873)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-8897) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.60"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.60\" (CONF:1198-10492)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32596)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1198-8874)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-8876)."
  * code 1..1
  * code = "48768-6"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"48768-6\" Payment sources (CONF:1198-19160)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1198-32156)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1198-8875)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1198-19094)."
* entryRelationship ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "act"
  * ^slicing.rules = #open
* entryRelationship contains policyActivity 1..*
* entryRelationship[policyActivity] ^requirements = "SHALL contain at least one [1..*] entryRelationship (CONF:1198-8878) such that it"
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" has component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1198-8879)."
  * sequenceNumber 0..1
    * ^requirements = "MAY contain zero or one [0..1] sequenceNumber (CONF:1198-17174)."
  * act 1..1
  * act only PolicyActivity
    * ^requirements = "SHALL contain exactly one [1..1] Policy Activity (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.61:2015-08-01) (CONF:1198-15528)."
* entryRelationship[entryRelationship1].sequenceNumber.value 1..1
  * ^requirements = "The sequenceNumber, if present, SHALL contain exactly one [1..1] @value (CONF:1198-17175)."