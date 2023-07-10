Profile: ReferencedFramesObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.6.2.10
Title: "Referenced Frames Observation"
Description: "A Referenced Frames Observation is used if the referenced DICOM SOP instance is a multiframe image and the reference does not apply to all frames. The list of integer values for the referenced frames of a DICOM multiframe image SOP instance is contained in a Boundary Observation nested inside this class."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.6.2.10"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #ROIBND
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"ROIBND\" Bounded Region of Interest (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:81-9276)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:81-9277)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-19164)."
  * code 0..1
  * code = "121190"
    * ^requirements = "This code MAY contain zero or one [0..1] @code=\"121190\" Referenced Frames (CodeSystem: DCM urn:oid:1.2.840.10008.2.16.4 STATIC) (CONF:81-19165)."
* entryRelationship 1..1
  * ^requirements = "SHALL contain exactly one [1..1] entryRelationship (CONF:81-9279)."
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "This entryRelationship SHALL contain exactly one [1..1] @typeCode=\"COMP\" Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:81-9280)."
  * observation 1..1
  * observation only BoundaryObservation
    * ^requirements = "This entryRelationship SHALL contain exactly one [1..1] observationBoundary Observation (identifier: urn:oid:2.16.840.1.113883.10.20.6.2.11) (CONF:81-15923)."