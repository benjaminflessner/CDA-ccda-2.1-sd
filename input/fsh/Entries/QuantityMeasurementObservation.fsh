Profile: QuantityMeasurementObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.6.2.14
Title: "Quantity Measurement Observation"
Description: "A Quantity Measurement Observation records quantity measurements based on image data such as linear, area, volume, and numeric measurements. The codes in DIRQuantityMeasurementTypeCodes (ValueSet: 2.16.840.1.113883.11.20.9.29) are from the qualifier hierarchy of SNOMED CT and are not valid for observation/code according to the Term Info guidelines. These codes can be used for backwards compatibility, but going forward, codes from the observable entity hierarchy will be requested and used."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.6.2.14"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:81-9317)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:81-9318)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-9319) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.6.2.14"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.6.2.14\" (CONF:81-10532)."
* code 1..1
  * ^short = "The value set of the observation/code includes numeric measurement types for linear dimensions, areas, volumes, and other numeric measurements. This value set is extensible and comprises the union of SNOMED codes for observable entities as reproduced in DIRQuantityMeasurementTypeCodes (ValueSet: 2.16.840.1.113883.11.20.9.29) and DICOM Codes in DICOMQuantityMeasurementTypeCodes (ValueSet: 2.16.840.1.113883.11.20.9.30)."
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-9320)."
  * code 0..1
  * code from $2.16.840.1.113883.11.20.9.29 (preferred)
    * ^requirements = "This code SHOULD contain zero or one [0..1] @code, which SHOULD be selected from ValueSet DIRQuantityMeasurementTypeCodes urn:oid:2.16.840.1.113883.11.20.9.29 DYNAMIC (CONF:81-19210)."
* effectiveTime 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:81-9326)."
* value 1..1
* value only $PQ
  * ^requirements = "SHALL contain exactly one [1..1] value with @xsi:type=\"PQ\" (CONF:81-9324)."
* entryRelationship ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "observation"
  * ^slicing.rules = #open
* entryRelationship contains instance 0..*
* entryRelationship[instance] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:81-9327) such that it"
  * typeCode 1..1
  * typeCode = #SPRT
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SPRT\" Has Support (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:81-9328)."
  * observation 1..1
  * observation only SOPInstanceObservation
    * ^requirements = "SHALL contain exactly one [1..1] observationSOP Instance Observation (identifier: urn:oid:2.16.840.1.113883.10.20.6.2.8) (CONF:81-15916)."