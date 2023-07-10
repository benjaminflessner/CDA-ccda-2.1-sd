Profile: PressureUlcerObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.70
Title: "Pressure Ulcer Observation (DEPRECATED)"
Description: """The pressure ulcer observation contains details about the pressure ulcer such as the stage of the ulcer, location, and dimensions. If the pressure ulcer is a diagnosis, you may find this on the problem list. An example of how this would appear is in the Problem Section.

THIS TEMPLATE HAS BEEN DEPRECATED IN C-CDA R2 AND MAY BE DELETED FROM A FUTURE RELEASE OF THIS IMPLEMENTATION GUIDE. USE OF THIS TEMPLATE IS NOT RECOMMENDED.

*Reason for deprecation*: This template has been replaced by Longitudinal Care Wound Observation (2.16.840.1.113883.10.20.22.4.114)."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.70:2014-06-09"
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
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-14383)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-14384)."
* negationInd 0..1
  * ^short = "Use negationInd=\"true\" to indicate that the problem was not observed."
  * ^requirements = "MAY contain zero or one [0..1] @negationInd (CONF:1098-14385)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-14387) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.70"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.70\" (CONF:1098-14388)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32594)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-14389)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-14759)."
  * code 1..1
  * code = "ASSERTION"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"ASSERTION\" Assertion (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4 STATIC) (CONF:1098-14760)."
* text 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] text (CONF:1098-14391)."
  * reference 0..1
    * ^requirements = "The text, if present, SHOULD contain zero or one [0..1] reference (CONF:1098-14392)."
    * value 1..1
      * obeys 1098-15586
      * ^requirements = "The reference, if present, SHALL contain exactly one [1..1] @value (CONF:1098-15585)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-14394)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19111)."
* effectiveTime 1..1
  * ^requirements = "SHALL contain exactly one [1..1] effectiveTime (CONF:1098-14395)."
* value 1..1
* value only $CD
* value = "Pressure Ulcer Stage"
* value from $2.16.840.1.113883.11.20.9.35 (preferred)
  * ^requirements = "SHALL contain exactly one [1..1] value with @xsi:type=\"CD\", where the code SHOULD be selected from ValueSet Pressure Ulcer Stage urn:oid:2.16.840.1.113883.11.20.9.35 STATIC 2014-09-01 (CONF:1098-14396)."
* targetSiteCode 0..*
  * ^requirements = "SHOULD contain zero or more [0..*] targetSiteCode (CONF:1098-14797)."
  * code 1..1
  * code from $2.16.840.1.113883.11.20.9.36 (preferred)
    * ^requirements = "The targetSiteCode, if present, SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet Pressure Point  urn:oid:2.16.840.1.113883.11.20.9.36 STATIC (CONF:1098-14798)."
  * qualifier 0..1
    * ^requirements = "The targetSiteCode, if present, SHOULD contain zero or one [0..1] qualifier (CONF:1098-14799)."
    * name 1..1
      * ^requirements = "The qualifier, if present, SHALL contain exactly one [1..1] name (CONF:1098-14800)."
      * code 0..1
      * code = "272741003"
        * ^requirements = "This name SHOULD contain zero or one [0..1] @code=\"272741003\" laterality (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96 STATIC) (CONF:1098-14801)."
    * value 1..1
      * ^requirements = "The qualifier, if present, SHALL contain exactly one [1..1] value (CONF:1098-14802)."
      * code 0..1
      * code from $2.16.840.1.113883.11.20.9.37 (preferred)
        * ^requirements = "This value SHOULD contain zero or one [0..1] @code, which SHOULD be selected from ValueSet TargetSite Qualifiers urn:oid:2.16.840.1.113883.11.20.9.37 STATIC 2014-09-01 (CONF:1098-14803)."
* entryRelationship ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.rules = #open
* entryRelationship contains
    entryRelationship1 0..1 and
    entryRelationship2 0..1 and
    entryRelationship3 0..1
* entryRelationship[entryRelationship1] ^requirements = "SHOULD contain zero or one [0..1] entryRelationship (CONF:1098-14410) such that it"
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-14411)."
  * observation 1..1
    * ^requirements = "SHALL contain exactly one [1..1] observation (CONF:1098-14619)."
    * classCode 1..1
    * classCode = #OBS
      * ^requirements = "This observation SHALL contain exactly one [1..1] @classCode=\"OBS\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-14685)."
    * moodCode 1..1
    * moodCode = #EVN
      * ^requirements = "This observation SHALL contain exactly one [1..1] @moodCode=\"EVN\" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-14686)."
    * code 1..1
      * ^requirements = "This observation SHALL contain exactly one [1..1] code (CONF:1098-14620)."
      * code 1..1
      * code = "401238003"
        * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"401238003\" Length of Wound (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96 STATIC) (CONF:1098-14621)."
    * value 1..1
    * value only $PQ
      * ^requirements = "This observation SHALL contain exactly one [1..1] value with @xsi:type=\"PQ\" (CONF:1098-14622)."
* entryRelationship[entryRelationship2] ^requirements = "SHOULD contain zero or one [0..1] entryRelationship (CONF:1098-14601) such that it"
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" (CONF:1098-14602)."
  * observation 1..1
    * ^requirements = "SHALL contain exactly one [1..1] observation (CONF:1098-14623)."
    * classCode 1..1
    * classCode = #OBS
      * ^requirements = "This observation SHALL contain exactly one [1..1] @classCode=\"OBS\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-14687)."
    * moodCode 1..1
    * moodCode = #EVN
      * ^requirements = "This observation SHALL contain exactly one [1..1] @moodCode=\"EVN\" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-14688)."
    * code 1..1
      * ^requirements = "This observation SHALL contain exactly one [1..1] code (CONF:1098-14624)."
      * code 1..1
      * code = "401239006"
        * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"401239006\" Width of Wound (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96 STATIC) (CONF:1098-14625)."
    * value 1..1
    * value only $PQ
      * ^requirements = "This observation SHALL contain exactly one [1..1] value with @xsi:type=\"PQ\" (CONF:1098-14626)."
* entryRelationship[entryRelationship3] ^requirements = "SHOULD contain zero or one [0..1] entryRelationship (CONF:1098-14605) such that it"
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" (CONF:1098-14606)."
  * observation 1..1
    * ^requirements = "SHALL contain exactly one [1..1] observation (CONF:1098-14627)."
    * classCode 1..1
    * classCode = #OBS
      * ^requirements = "This observation SHALL contain exactly one [1..1] @classCode=\"OBS\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-14689)."
    * moodCode 1..1
    * moodCode = #EVN
      * ^requirements = "This observation SHALL contain exactly one [1..1] @moodCode=\"EVN\" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-14690)."
    * code 1..1
      * ^requirements = "This observation SHALL contain exactly one [1..1] code (CONF:1098-14628)."
      * code 1..1
      * code = "425094009"
        * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"425094009\" Depth of Wound (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96 STATIC) (CONF:1098-14629)."
    * value 1..1
    * value only $PQ
      * ^requirements = "This observation SHALL contain exactly one [1..1] value with @xsi:type=\"PQ\" (CONF:1098-14630)."

Invariant: 1098-15586
Description: "This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1098-15586)."
Severity: #error