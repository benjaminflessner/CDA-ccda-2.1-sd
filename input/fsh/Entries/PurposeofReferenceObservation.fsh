Profile: PurposeofReferenceObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.6.2.9
Title: "Purpose of Reference Observation"
Description: "A Purpose of Reference Observation describes the purpose of the DICOM composite object reference. Appropriate codes, such as externally defined DICOM codes, may be used to specify the semantics of the purpose of reference. When this observation is absent, it implies that the reason for the reference is unknown."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.6.2.9"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:81-9264)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:81-9265)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-9266) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.6.2.9"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.6.2.9\" (CONF:81-10531)."
* code 1..1
  * obeys 81-19209
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-9267)."
  * code 0..1
  * code = "ASSERTION"
    * ^requirements = "This code SHOULD contain zero or one [0..1] @code=\"ASSERTION\" Assertion (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4 STATIC) (CONF:81-19208)."
* value 0..1
* value only $CD
* value from $2.16.840.1.113883.11.20.9.28 (preferred)
  * ^short = "The value element is a SHOULD to allow backwards compatibility with the DICOM CMET. Note that the use of ASSERTION for the code differs from the DICOM CMET. This is intentional. The DICOM CMET was created before the Term Info guidelines describing the use of the assertion pattern were released. It was determined that this IG should follow the latest Term Info guidelines. Implementers using both this IG and the DICOM CMET should be aware of this difference and apply appropriate transformations."
  * ^requirements = "SHOULD contain zero or one [0..1] value with @xsi:type=\"CD\", where the code SHOULD be selected from ValueSet DICOMPurposeOfReference urn:oid:2.16.840.1.113883.11.20.9.28 DYNAMIC (CONF:81-9273)."

Invariant: 81-19209
Description: "For backwards compatibility with the DICOM CMET, the code MAY be drawn from ValueSet 2.16.840.1.113883.11.20.9.28 DICOMPurposeOfReference DYNAMIC (CONF:81-19209)."
Severity: #warning