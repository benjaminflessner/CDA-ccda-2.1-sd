Profile: SOPInstanceObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.6.2.8
Title: "SOP Instance Observation"
Description: "A SOP Instance Observation contains the DICOM Service Object Pair (SOP) Instance information for referenced DICOM composite objects. The SOP Instance act class is used to reference both image and non-image DICOM instances. The text attribute contains the DICOM WADO reference."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.6.2.8"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #DGIMG
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"DGIMG\" Diagnostic Image (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:81-9240)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:81-9241)."
* id 1..*
  * ^short = "The @root contains an OID representing the DICOM SOP Instance UID"
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:81-9242)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-9244)."
  * code 1..1
    * obeys 81-19226
    * ^requirements = "This code SHALL contain exactly one [1..1] @code (CONF:81-19225)."
  * codeSystem 1..1
  * codeSystem = "1.2.840.10008.2.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"1.2.840.10008.2.6.1\" DCMUID (CONF:81-19227)."
* text 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] text (CONF:81-9246)."
  * mediaType 1..1
  * mediaType = "application/dicom"
    * ^requirements = "The text, if present, SHALL contain exactly one [1..1] @mediaType=\"application/dicom\" (CONF:81-9247)."
  * reference 1..1
    * obeys 81-9249
    * ^requirements = "The text, if present, SHALL contain exactly one [1..1] reference (CONF:81-9248)."
* effectiveTime 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:81-9250)."
  * value 1..1
    * ^requirements = "The effectiveTime, if present, SHALL contain exactly one [1..1] @value (CONF:81-9251)."
  * low 0..0
    * ^requirements = "The effectiveTime, if present, SHALL NOT contain [0..0] low (CONF:81-9252)."
  * high 0..0
    * ^requirements = "The effectiveTime, if present, SHALL NOT contain [0..0] high (CONF:81-9253)."
* entryRelationship ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "typeCode"
  * ^slicing.rules = #open
* entryRelationship contains
    subject 0..* and
    purposeofReferenceObservation 0..* and
    referencedFramesObservation 0..*
* entryRelationship[subject] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:81-9254) such that it"
  * typeCode 1..1
  * typeCode = #SUBJ
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SUBJ\" Has Subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:81-9255)."
* entryRelationship[purposeofReferenceObservation] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:81-9257) such that it"
  * typeCode 1..1
  * typeCode = #RSON
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"RSON\" Has Reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:81-9258)."
  * observation 1..1
  * observation only PurposeofReferenceObservation
    * ^requirements = "SHALL contain exactly one [1..1] observationPurpose of Reference Observation (identifier: urn:oid:2.16.840.1.113883.10.20.6.2.9) (CONF:81-15935)."
* entryRelationship[referencedFramesObservation] obeys 81-9263
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:81-9260) such that it"
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" Has Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:81-9261)."
  * observation 1..1
  * observation only ReferencedFramesObservation
    * ^requirements = "SHALL contain exactly one [1..1] observationReferenced Frames Observation (identifier: urn:oid:2.16.840.1.113883.10.20.6.2.10) (CONF:81-15936)."

Invariant: 81-19226
Description: "@code is an OID for a valid SOP class name UID (CONF:81-19226)."
Severity: #error

Invariant: 81-9249
Description: "**SHALL** contain a @value that contains a WADO reference as a URI (CONF:81-9249)."
Severity: #error

Invariant: 81-9263
Description: "This entryRelationship SHALL be present if the referenced DICOM object is a multiframe object and the reference does not apply to all frames (CONF:81-9263)."
Severity: #warning