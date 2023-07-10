Profile: DICOMObjectCatalogSectionDCM121181
Parent: $Section
Id: 2.16.840.1.113883.10.20.6.1.1
Title: "DICOM Object Catalog Section - DCM 121181"
Description: """DICOM Object Catalog lists all referenced objects and their parent Series and Studies, plus other DICOM attributes required for retrieving the objects.

DICOM Object Catalog sections are not intended for viewing and contain empty section text."""
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.6.1.1"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* obeys 81-8527
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-8525) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.6.1.1"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.6.1.1\" (CONF:81-10454)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-15456)."
  * code 1..1
  * code = "121181"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"121181\" Dicom Object Catalog (CONF:81-15457)."
  * codeSystem 1..1
  * codeSystem = "1.2.840.10008.2.16.4"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"1.2.840.10008.2.16.4\" (CodeSystem: DCM urn:oid:1.2.840.10008.2.16.4) (CONF:81-26475)."
* entry 1..*
  * ^requirements = "SHALL contain at least one [1..*] entry (CONF:81-8530)."
  * act 1..1
  * act only StudyAct
    * ^requirements = "Such entries SHALL contain exactly one [1..1] Study Act (identifier: urn:oid:2.16.840.1.113883.10.20.6.2.6) (CONF:81-15458)."

Invariant: 81-8527
Description: "A DICOM Object Catalog SHALL be present if the document contains references to DICOM Images. If present, it SHALL be the first section in the document (CONF:81-8527)."
Severity: #warning