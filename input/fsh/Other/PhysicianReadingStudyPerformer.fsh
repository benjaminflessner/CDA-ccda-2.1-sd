Profile: PhysicianReadingStudyPerformer
Parent: $Performer1
Id: 2.16.840.1.113883.10.20.6.2.1
Title: "Physician Reading Study Performer"
Description: "This participant is the Physician Reading Study Performer defined in documentationOf/serviceEvent. It is usually different from the attending physician. The reading physician interprets the images and evidence of the study (DICOM Definition)."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.6.2.1:2014-06-09"
* ^version = "2014-06-09"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* typeCode 1..1
* typeCode = #PRF
  * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"PRF\" Performer (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-8424)."
* templateId 1..1
  * ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-30773)."
  * root 1..1
  * root = "2.16.840.1.113883.10.20.6.2.1"
    * ^requirements = "This templateId SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.6.2.1\" (CONF:1098-30774)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "This templateId SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32564)."
* time 0..1
* time only USRealmDateandTimeDTUSFIELDED
  * ^requirements = "MAY contain zero or one [0..1] US Realm Date and Time (DT.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.3) (CONF:1098-8425)."
* assignedEntity 1..1
  * obeys 1098-8429 and 1098-32135
  * ^requirements = "SHALL contain exactly one [1..1] assignedEntity (CONF:1098-8426)."
  * id 1..*
    * ^requirements = "This assignedEntity SHALL contain at least one [1..*] id (CONF:1098-10033)."
  * code 1..1
    * obeys 1098-8428
    * ^requirements = "This assignedEntity SHALL contain exactly one [1..1] code (CONF:1098-8427)."

Invariant: 1098-8429
Description: "Every assignedEntity element **SHALL** contain at least one [1..*] assignedPerson or representedOrganization (CONF:1098-8429)."
Severity: #error

Invariant: 1098-32135
Description: "The id **SHOULD** include zero or one [0..1] *id* where id/@root=\"2.16.840.1.113883.4.6\" National Provider Identifier (CONF:1098-32135)."
Severity: #warning

Invariant: 1098-8428
Description: "**SHALL** contain a valid DICOM personal identification code sequence (@codeSystem is 1.2.840.10008.2.16.4) or an appropriate national health care provider coding system (e.g., NUCC in the U.S., where @codeSystem is 2.16.840.1.113883.6.101) (CONF:1098-8428)."
Severity: #error