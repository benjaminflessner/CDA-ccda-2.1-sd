Profile: CodeObservations
Parent: $Observation
Id: 2.16.840.1.113883.10.20.6.2.13
Title: "Code Observations"
Description: "DICOM Template 2000 specifies that Imaging Report Elements of Value Type Code are contained in sections. The Imaging Report Elements are inferred from Basic Diagnostic Imaging Report Observations that consist of image references and measurements (linear, area, volume, and numeric). Coded DICOM Imaging Report Elements in this context are mapped to CDA-coded observations that are section components and are related to the SOP Instance Observations (templateId 2.16.840.1.113883.10.20.6.2.8) or Quantity Measurement Observations (templateId 2.16.840.1.113883.10.20.6.2.14) by the SPRT (Support) act relationship."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.6.2.13"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* obeys 81-9310
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:81-9304)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:81-9305)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-15523)."
  * root 1..1
  * root = "2.16.840.1.113883.10.20.6.2.13"
    * ^requirements = "This templateId SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.6.2.13\" (CONF:81-15524)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-19181)."
* effectiveTime 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:81-9309)."
* value 1..1
  * ^requirements = "SHALL contain exactly one [1..1] value (CONF:81-9308)."
* entryRelationship ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "observation"
  * ^slicing.rules = #open
* entryRelationship contains
    SOPInstanceObservation 0..* and
    quantityMeasurementObservation 0..*
* entryRelationship[SOPInstanceObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:81-9311) such that it"
  * typeCode 1..1
  * typeCode = #SPRT
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SPRT\" Has Support (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:81-9312)."
  * observation 1..1
  * observation only SOPInstanceObservation
    * ^requirements = "SHALL contain exactly one [1..1] SOP Instance Observation (identifier: urn:oid:2.16.840.1.113883.10.20.6.2.8) (CONF:81-16083)."
* entryRelationship[quantityMeasurementObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:81-9314) such that it"
  * typeCode 1..1
  * typeCode = #SPRT
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SPRT\" Has Support (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:81-9315)."
  * observation 1..1
  * observation only QuantityMeasurementObservation
    * ^requirements = "SHALL contain exactly one [1..1] Quantity Measurement Observation (identifier: urn:oid:2.16.840.1.113883.10.20.6.2.14) (CONF:81-16084)."

Invariant: 81-9310
Description: "Code Observations SHALL be rendered into section/text in separate paragraphs (CONF:81-9310)."
Severity: #warning