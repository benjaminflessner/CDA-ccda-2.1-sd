Profile: AssessmentScaleObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.69
Title: "Assessment Scale Observation"
Description: "An assessment scale is a collection of observations that together yield a summary evaluation of a particular condition. Examples include the Braden Scale (assesses pressure ulcer risk), APACHE Score (estimates mortality in critically ill patients), Mini-Mental Status Exam (assesses cognitive function), APGAR Score (assesses the health of a newborn), and Glasgow Coma Scale (assesses coma and impaired consciousness)."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.4.69"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:81-14434)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:81-14435)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-14436) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.69"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.69\" (CONF:81-14437)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:81-14438)."
* code 1..1
  * obeys 81-14440
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-14439)."
* derivationExpr 0..1
  * ^short = "Such derivation expression can contain a text calculation of how the components total up to the summed score"
  * ^requirements = "MAY contain zero or one [0..1] derivationExpr (CONF:81-14637)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:81-14444)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:81-19088)."
* effectiveTime 1..1
  * ^short = "Represents clinically effective time of the measurement, which may be when the measurement was performed (e.g., a BP measurement), or may be when sample was taken (and measured some time afterwards)"
  * ^requirements = "SHALL contain exactly one [1..1] effectiveTime (CONF:81-14445)."
* value 1..1
  * ^requirements = "SHALL contain exactly one [1..1] value (CONF:81-14450)."
* interpretationCode 0..*
  * ^requirements = "MAY contain zero or more [0..*] interpretationCode (CONF:81-14459)."
  * translation 0..*
    * ^requirements = "The interpretationCode, if present, MAY contain zero or more [0..*] translation (CONF:81-14888)."
* author 0..*
  * ^requirements = "MAY contain zero or more [0..*] author (CONF:81-14460)."
* entryRelationship ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "observation"
  * ^slicing.rules = #open
* entryRelationship contains supporting 0..*
* entryRelationship[supporting] ^requirements = "SHOULD contain zero or more [0..*] entryRelationship (CONF:81-14451) such that it"
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" has component (CONF:81-16741)."
  * observation 1..1
  * observation only AssessmentScaleSupportingObservation
    * ^requirements = "SHALL contain exactly one [1..1] Assessment Scale Supporting Observation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.86) (CONF:81-16742)."
* referenceRange 0..*
  * ^short = "The referenceRange/observationRange/text, if present, MAY contain a description of the scale (e.g., for a Pain Scale 1 to 10:  1 to 3 = little pain, 4 to 7= moderate pain, 8 to 10 = severe pain)"
  * ^requirements = "MAY contain zero or more [0..*] referenceRange (CONF:81-16799)."
  * observationRange 1..1
    * ^requirements = "The referenceRange, if present, SHALL contain exactly one [1..1] observationRange (CONF:81-16800)."
    * text 0..1
      * ^short = "The text may contain a description of the scale (e.g., for a Pain Scale 1 to 10:  1 to 3 = little pain, 4 to 7= moderate pain, 8 to 10 = severe pain)"
      * ^requirements = "This observationRange SHOULD contain zero or one [0..1] text (CONF:81-16801)."
      * reference 0..1
        * ^requirements = "The text, if present, SHOULD contain zero or one [0..1] reference (CONF:81-16802)."
        * value 0..1
          * obeys 81-16804
          * ^requirements = "The reference, if present, MAY contain zero or one [0..1] @value (CONF:81-16803)."

Invariant: 81-14440
Description: "**SHOULD** be from LOINC (CodeSystem: 2.16.840.1.113883.6.1) or SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) identifying the assessment scale (CONF:81-14440)."
Severity: #warning

Invariant: 81-16804
Description: "This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:81-16804)."
Severity: #error