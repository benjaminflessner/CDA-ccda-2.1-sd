Profile: TextObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.6.2.12
Title: "Text Observation"
Description: """DICOM Template 2000 specifies that Imaging Report Elements of Value Type Text are contained in sections. The Imaging Report Elements are inferred from Basic Diagnostic Imaging Report Observations that consist of image references and measurements (linear, area, volume, and numeric). Text DICOM Imaging Report Elements in this context are mapped to CDA text observations that are section components and are related to the SOP Instance Observations (templateId 2.16.840.1.113883.10.20.6.2.8) or Quantity Measurement Observations (templateId 2.16.840.1.113883.10.20.6.2.14) by the SPRT (Support) act relationship.

A Text Observation is required if the findings in the section text are represented as inferred from SOP Instance Observations."""
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.6.2.12"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4 STATIC) (CONF:81-9288)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:81-9289)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-9290) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.6.2.12"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.6.2.12\" (CONF:81-10534)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-9291)."
* text 0..1
  * ^requirements = "MAY contain zero or one [0..1] text (CONF:81-9295)."
  * reference 0..1
    * ^requirements = "The text, if present, SHOULD contain zero or one [0..1] reference (CONF:81-15938)."
    * value 0..1
      * obeys 81-15940
      * ^requirements = "The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:81-15939)."
* effectiveTime 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:81-9294)."
* value 1..1
* value only $ED
  * ^requirements = "SHALL contain exactly one [1..1] value with @xsi:type=\"ED\" (CONF:81-9292)."
* entryRelationship ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "observation"
  * ^slicing.rules = #open
* entryRelationship contains
    SOPInstanceObservation 0..* and
    quantityMeasurementObservation 0..*
* entryRelationship[SOPInstanceObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:81-9298) such that it"
  * typeCode 1..1
  * typeCode = #SPRT
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SPRT\" Has Support (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:81-9299)."
  * observation 1..1
  * observation only SOPInstanceObservation
    * ^requirements = "SHALL contain exactly one [1..1] SOP Instance Observation (identifier: urn:oid:2.16.840.1.113883.10.20.6.2.8) (CONF:81-15941)."
* entryRelationship[quantityMeasurementObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:81-9301) such that it"
  * typeCode 1..1
  * typeCode = #SPRT
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SPRT\" Has Support (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:81-9302)."
  * observation 1..1
  * observation only QuantityMeasurementObservation
    * ^requirements = "SHALL contain exactly one [1..1] Quantity Measurement Observation (identifier: urn:oid:2.16.840.1.113883.10.20.6.2.14) (CONF:81-15942)."

Invariant: 81-15940
Description: "This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:81-15940)."
Severity: #error