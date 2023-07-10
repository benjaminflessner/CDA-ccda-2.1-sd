Profile: PhysicianofRecordParticipant
Parent: $EncounterParticipant
Id: 2.16.840.1.113883.10.20.6.2.2
Title: "Physician of Record Participant"
Description: "This encounterParticipant is the attending physician and is usually different from the Physician Reading Study Performer defined in documentationOf/serviceEvent."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.6.2.2:2014-06-09"
* ^version = "2014-06-09"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* typeCode 1..1
* typeCode = #ATND
  * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"ATND\" Attender (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:1098-8881)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-16072) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.6.2.2"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.6.2.2\" (CONF:1098-16073)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32586)."
* assignedEntity 1..1
  * ^requirements = "SHALL contain exactly one [1..1] assignedEntity (CONF:1098-8886)."
  * id 1..*
    * obeys 1098-31203
    * ^requirements = "This assignedEntity SHALL contain at least one [1..*] id (CONF:1098-8887)."
  * code 1..1
    * obeys 1098-8889
    * ^requirements = "This assignedEntity SHALL contain exactly one [1..1] code (CONF:1098-8888)."
  * assignedPerson 0..1
    * ^requirements = "This assignedEntity SHOULD contain zero or one [0..1] assignedPerson (CONF:1098-30928)."
    * name 1..1
    * name only USRealmPersonNamePNUSFIELDED
      * ^requirements = "The assignedPerson, if present, SHALL contain exactly one [1..1] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1098-30929)."
  * representedOrganization 0..1
    * ^requirements = "This assignedEntity MAY contain zero or one [0..1] representedOrganization (CONF:1098-16074)."
    * name 0..1
      * ^requirements = "The representedOrganization, if present, SHOULD contain zero or one [0..1] name (CONF:1098-16075)."

Invariant: 1098-31203
Description: "**SHOULD** contain zero or one [0..1] *id* such that *@root=\"2.16.840.1.113883.4.6\" National Provider Identifier (CONF:1098-31203)."
Severity: #warning

Invariant: 1098-8889
Description: "**SHALL** contain a valid DICOM Organizational Role from DICOM CID 7452  (Value Set 1.2.840.10008.6.1.516) (@codeSystem is 1.2.840.10008.2.16.4) or an appropriate national health care provider coding system (e.g., NUCC in the U.S., where @codeSystem is 2.16.840.1.113883.6.101). Footnote: DICOM Part 16 (NEMA PS3.16), page 631 in the 2011 edition. See [URL:ftp://medical.nema.org/medical/dicom/2011/11_16pu.pdf] (CONF:1098-8889)."
Severity: #error