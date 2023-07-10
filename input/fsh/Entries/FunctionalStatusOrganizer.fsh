Profile: FunctionalStatusOrganizer
Parent: $Organizer
Id: 2.16.840.1.113883.10.20.22.4.66
Title: "Functional Status Organizer"
Description: "This template groups related functional status observations into categories (e.g., mobility, self-care)."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.66:2014-06-09"
* ^version = "2014-06-09"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #CLUSTER
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"CLUSTER\" Cluster (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1098-14355)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-14357)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-14361) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.66"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.66\" (CONF:1098-14362)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32569)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-14363)."
* code 1..1
  * obeys 1098-31417
  * ^short = "The code selected should indicate the category that groups the contained functional status evaluation observations (e.g., mobility, self-care, communication)."
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-14364)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-14358)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1098-31434)."
* author 0..*
* author only AuthorParticipation
  * ^requirements = "SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31585)."
* component ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "observation"
* component contains
    functionalStatus 1..* and
    selfCare 1..*
* component[functionalStatus] ^requirements = "SHALL contain at least one [1..*] component (CONF:1098-14359) such that it"
  * observation 1..1
  * observation only FunctionalStatusObservation
    * ^requirements = "SHALL contain exactly one [1..1] Functional Status Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.67:2014-06-09) (CONF:1098-14368)."
* component[selfCare] ^requirements = "SHALL contain at least one [1..*] component (CONF:1098-31432) such that it"
  * observation 1..1
  * observation only SelfCareActivitiesADLandIADL
    * ^requirements = "SHALL contain exactly one [1..1] Self-Care Activities (ADL and IADL) (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.128) (CONF:1098-31433)."

Invariant: 1098-31417
Description: "**SHOULD** be selected from ICF (codeSystem 2.16.840.1.113883.6.254) *OR* LOINC (2.16.840.1.113883.6.1) (CONF:1098-31417)."
Severity: #warning