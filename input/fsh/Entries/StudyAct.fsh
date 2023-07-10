Profile: StudyAct
Parent: $Act
Id: 2.16.840.1.113883.10.20.6.2.6
Title: "Study Act"
Description: "A Study Act contains the DICOM study information that defines the characteristics of a referenced medical study performed on a patient. A study is a collection of one or more series of medical images, presentation states, SR documents, overlays, and/or curves that are logically related for the purpose of diagnosing a patient. Each study is associated with exactly one patient. A study may include composite instances that are created by a single modality, multiple modalities, or by multiple devices of the same modality. The study information is modality-independent. Study Act clinical statements are only instantiated in the DICOM Object Catalog section; in other sections, the SOP Instance Observation is included directly."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.6.2.6"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #ACT
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"ACT\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:81-9207)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:81-9208)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-9209) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.6.2.6"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.6.2.6\" (CONF:81-10533)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:81-9210)."
  * root 1..1
    * ^short = "The @root contains the OID of the study instance UID since DICOM study ids consist only of an OID"
    * ^requirements = "Such ids SHALL contain exactly one [1..1] @root (CONF:81-9213)."
  * extension 0..0
    * ^requirements = "Such ids SHALL NOT contain [0..0] @extension (CONF:81-9211)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-19172)."
  * code 1..1
  * code = "113014"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"113014\" (CONF:81-19173)."
  * codeSystem 1..1
  * codeSystem = "1.2.840.10008.2.16.4"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"1.2.840.10008.2.16.4\" (CodeSystem: DCM urn:oid:1.2.840.10008.2.16.4) (CONF:81-26506)."
* text 0..1
  * ^short = "If present, the text element contains the description of the study."
  * ^requirements = "MAY contain zero or one [0..1] text (CONF:81-9215)."
  * reference 0..1
    * ^requirements = "The text, if present, SHOULD contain zero or one [0..1] reference (CONF:81-15995)."
    * value 0..1
      * obeys 81-15997
      * ^requirements = "The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:81-15996)."
* effectiveTime 0..1
  * ^short = "If present, the effectiveTime contains the time the study was started"
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:81-9216)."
* entryRelationship ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "act"
  * ^slicing.rules = #open
* entryRelationship contains seriesAct 1..*
* entryRelationship[seriesAct] ^requirements = "SHALL contain at least one [1..*] entryRelationship (CONF:81-9219) such that it"
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:81-9220)."
  * act 1..1
  * act only SeriesAct
    * ^requirements = "SHALL contain exactly one [1..1] Series Act (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.63) (CONF:81-15937)."

Invariant: 81-15997
Description: "This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:81-15997)."
Severity: #error