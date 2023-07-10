Profile: SeriesAct
Parent: $Act
Id: 2.16.840.1.113883.10.20.22.4.63
Title: "Series Act"
Description: "A Series Act contains the DICOM series information for referenced DICOM composite objects. The series information defines the attributes that are used to group composite instances into distinct logical sets. Each series is associated with exactly one study. Series Act clinical statements are only instantiated in the DICOM Object Catalog section inside a Study Act, and thus do not require a separate templateId; in other sections, the SOP Instance Observation is included directly."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.4.63"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #ACT
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"ACT\" Act (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:81-9222)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:81-9223)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-10918) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.63"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.63\" (CONF:81-10919)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:81-9224)."
  * root 1..1
    * ^short = "The @root contains the OID of the study instance UID since DICOM study ids consist only of an OID"
    * ^requirements = "Such ids SHALL contain exactly one [1..1] @root (CONF:81-9225)."
  * extension 0..0
    * ^requirements = "Such ids SHALL NOT contain [0..0] @extension (CONF:81-9226)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-19166)."
  * code 1..1
  * code = "113015"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"113015\" (CONF:81-19167)."
  * codeSystem 0..1
  * codeSystem = "1.2.840.10008.2.16.4"
    * ^requirements = "This code MAY contain zero or one [0..1] @codeSystem=\"1.2.840.10008.2.16.4\" (CodeSystem: DCM urn:oid:1.2.840.10008.2.16.4) (CONF:81-26461)."
  * qualifier 1..1
    * ^requirements = "This code SHALL contain exactly one [1..1] qualifier (CONF:81-26462)."
    * name 1..1
      * ^requirements = "This qualifier SHALL contain exactly one [1..1] name (CONF:81-26463)."
      * code 1..1
      * code = "121139"
        * ^requirements = "This name SHALL contain exactly one [1..1] @code=\"121139\" Modality (CONF:81-26464)."
      * codeSystem 1..1
      * codeSystem = "1.2.840.10008.2.16.4"
        * ^requirements = "This name SHALL contain exactly one [1..1] @codeSystem=\"1.2.840.10008.2.16.4\" (CodeSystem: DCM urn:oid:1.2.840.10008.2.16.4) (CONF:81-26465)."
    * value 1..1
      * ^requirements = "This qualifier SHALL contain exactly one [1..1] value (CONF:81-26466)."
* text 0..1
  * ^short = "If present, the text element contains the description of the series"
  * ^requirements = "MAY contain zero or one [0..1] text (CONF:81-9233)."
* effectiveTime 0..1
  * ^short = "If present, the effectiveTime contains the time the series was started"
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:81-9235)."
* entryRelationship ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "observation"
  * ^slicing.rules = #open
* entryRelationship contains SOPInstanceObservation 1..*
* entryRelationship[SOPInstanceObservation] ^requirements = "SHALL contain at least one [1..*] entryRelationship (CONF:81-9237) such that it"
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:81-9238)."
  * observation 1..1
  * observation only SOPInstanceObservation
    * ^requirements = "SHALL contain exactly one [1..1] observationSOP Instance Observation (identifier: urn:oid:2.16.840.1.113883.10.20.6.2.8) (CONF:81-15927)."