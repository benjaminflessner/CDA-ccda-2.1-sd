Profile: FunctionalStatusProblemObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.68
Title: "Functional Status Problem Observation (DEPRECATED)"
Description: """A functional status problem observation is a clinical statement that represents a patient's functional perfomance and ability.

THIS TEMPLATE HAS BEEN DEPRECATED IN C-CDA R2 AND MAY BE DELETED FROM A FUTURE RELEASE OF THIS IMPLEMENTATION GUIDE. USE OF THIS TEMPLATE IS NOT RECOMMENDED.

*Reason for deprecation*: Functional Status Problem Observation has been merged, without loss of expressivity, into Functional Status Observation (2.16.840.1.113883.10.20.22.4.67:2014-06-09)."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.68:2014-06-09"
* ^version = "2014-06-09"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-14282)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-14283)."
* negationInd 0..1
  * ^short = "Use negationInd=\"true\" to indicate that the problem was not observed."
  * ^requirements = "MAY contain zero or one [0..1] @negationInd (CONF:1098-14307)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-14312) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.68"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.68\" (CONF:1098-14313)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32601)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-14284)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-14314)."
  * code 0..1
  * code = "248536006"
    * ^requirements = "This code SHOULD contain zero or one [0..1] @code=\"248536006\" finding of functional performance and activity (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96 STATIC) (CONF:1098-14315)."
* text 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] text (CONF:1098-14304)."
  * reference 0..1
    * ^requirements = "The text, if present, SHOULD contain zero or one [0..1] reference (CONF:1098-15552)."
    * value 0..1
      * obeys 1098-15554
      * ^requirements = "The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1098-15553)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-14286)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19100)."
* effectiveTime 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-14287)."
  * low 1..1
    * ^short = "The value of effectiveTime/low represents onset date."
    * ^requirements = "The effectiveTime, if present, SHALL contain exactly one [1..1] low (CONF:1098-26456)."
  * high 0..1
    * ^short = "If the problem is resolved, record the resolution date in effectiveTime/high. If the problem is known to be resolved but the resolution date is not known, use @nullFlavor=\"UNK\". If the problem is not resolved, do not include the high element."
    * ^requirements = "The effectiveTime, if present, MAY contain zero or one [0..1] high (CONF:1098-26457)."
* value 1..1
* value only $CD
* value from $2.16.840.1.113883.3.88.12.3221.7.4 (preferred)
  * ^requirements = "SHALL contain exactly one [1..1] value with @xsi:type=\"CD\", where the code SHOULD be selected from ValueSet Problem urn:oid:2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:1098-14291)."
  * nullFlavor 0..1
    * obeys 1098-14293
    * ^requirements = "This value MAY contain zero or one [0..1] @nullFlavor (CONF:1098-14292)."
* methodCode 0..1
  * ^requirements = "MAY contain zero or one [0..1] methodCode (CONF:1098-14316)."

Invariant: 1098-15554
Description: "This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1098-15554)."
Severity: #error

Invariant: 1098-14293
Description: "If the diagnosis is unknown or the SNOMED code is unknown, @nullFlavor SHOULD be “UNK”.  If the diagnosis is known but the code cannot be found in the Value Set, @nullFlavor SHOULD be “OTH” and the known diagnosis code SHOULD be placed in the translation element (CONF:1098-14293)."
Severity: #warning