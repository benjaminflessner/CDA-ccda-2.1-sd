Profile: BoundaryObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.6.2.11
Title: "Boundary Observation"
Description: "A Boundary Observation contains a list of integer values for the referenced frames of a DICOM multiframe image SOP instance. It identifies the frame numbers within the referenced SOP instance to which the reference applies. The CDA Boundary Observation numbers frames using the same convention as DICOM, with the first frame in the referenced object being Frame 1. A Boundary Observation must be used if a referenced DICOM SOP instance is a multiframe image and the reference does not apply to all frames."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.6.2.11"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:81-9282)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:81-9283)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-9284)."
  * code 1..1
  * code = "113036"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"113036\" Frames for Display (CodeSystem: DCM urn:oid:1.2.840.10008.2.16.4 STATIC) (CONF:81-19157)."
* value 1..*
* value only $INT
  * ^short = "Each number represents a frame for display."
  * ^requirements = "SHALL contain at least one [1..*] value with @xsi:type=\"INT\" (CONF:81-9285)."