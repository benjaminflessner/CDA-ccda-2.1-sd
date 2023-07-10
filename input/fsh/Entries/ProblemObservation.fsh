Profile: ProblemObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.4
Title: "Problem Observation"
Description: """This template reflects a discrete observation about a patient's problem. Because it is a discrete observation, it will have a statusCode of "completed". The effectiveTime, also referred to as the "biologically relevant time" is the time at which the observation holds for the patient. For a provider seeing a patient in the clinic today, observing a history of heart attack that occurred five years ago, the effectiveTime is five years ago. 

The effectiveTime of the Problem Observation is the definitive indication of whether or not the underlying condition is resolved. If the problem is known to be resolved, then an effectiveTime/high would be present. If the date of resolution is not known, then effectiveTime/high will be present with a nullFlavor of "UNK"."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.4:2015-08-01"
* ^version = "2015-08-01"
* ^publisher = "WaveOne Associates"
* ^contact.name = "Brett Marquard"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "4135496886"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "brett@waveoneassociates.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1198-9041)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1198-9042)."
* negationInd 0..1
  * ^short = "The negationInd is used to indicate the absence of the condition in observation/value. A negationInd of \"true\" coupled with an observation/value of SNOMED code 64572001 \"Disease (disorder)\" indicates that the patient has no known conditions."
  * ^requirements = "MAY contain zero or one [0..1] @negationInd (CONF:1198-10139)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-14926) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.4"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.4\" (CONF:1198-14927)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32508)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1198-9043)."
* code 1..1
* code from $2.16.840.1.113883.3.88.12.3221.7.2 (preferred)
  * obeys 1198-32950
  * ^requirements = "SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Problem Type (SNOMEDCT) urn:oid:2.16.840.1.113883.3.88.12.3221.7.2 DYNAMIC (CONF:1198-9045)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1198-9049)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1198-19112)."
* effectiveTime 1..1
  * ^short = "If the problem is known to be resolved, but the date of resolution is not known, then the high element **SHALL** be present, and the nullFlavor attribute **SHALL** be set to 'UNK'. Therefore, the existence of a high element within a problem does indicate that the problem has been resolved."
  * ^requirements = "SHALL contain exactly one [1..1] effectiveTime (CONF:1198-9050)."
  * low 1..1
    * ^short = "The effectiveTime/low (a.k.a. \"onset date\") asserts when the condition became biologically active."
    * ^requirements = "This effectiveTime SHALL contain exactly one [1..1] low (CONF:1198-15603)."
  * high 0..1
    * ^short = "The effectiveTime/high (a.k.a. \"resolution date\") asserts when the condition became biologically resolved."
    * ^requirements = "This effectiveTime MAY contain zero or one [0..1] high (CONF:1198-15604)."
* value 1..1
* value only $CD
* value from $2.16.840.1.113883.3.88.12.3221.7.4 (preferred)
  * ^requirements = "SHALL contain exactly one [1..1] value with @xsi:type=\"CD\", where the code SHOULD be selected from ValueSet Problem urn:oid:2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:1198-9058)."
  * code 0..1
    * ^short = "A negationInd of \"true\" coupled with an observation/value/@code of SNOMED code 64572001 \"Disease (disorder)\" indicates that the patient has no known conditions."
    * ^requirements = "This value MAY contain zero or one [0..1] @code (CONF:1198-31871)."
  * qualifier 0..*
    * ^short = "The observation/value and all the qualifiers together (often referred to as a post-coordinated expression) make up one concept. Qualifiers constrain the meaning of the primary code, and cannot negate it or change its meaning. Qualifiers can only be used according to well-defined rules of post-coordination and only if the underlying code system defines the use of such qualifiers or if there is a third code system that specifies how other code systems may be combined.\n\nFor example, SNOMED CT allows constructing concepts as a combination of multiple codes. SNOMED CT defines a concept \"pneumonia (disorder)\" (233604007) an attribute \"finding site\" (363698007) and another concept \"left lower lobe of lung (body structure)\" (41224006). SNOMED CT allows one to combine these codes in a code phrase, as shown in the sample XML."
    * ^requirements = "This value MAY contain zero or more [0..*] qualifier (CONF:1198-31870)."
  * translation ^slicing.rules = #open
* Observation.value
  * translation contains alt 0..*
  * translation[alt] ^requirements = "This value MAY contain zero or more [0..*] translation (CONF:1198-16749) such that it"
    * code 0..1
      * ^requirements = "MAY contain zero or one [0..1] @code (CodeSystem: ICD-10-CM urn:oid:2.16.840.1.113883.6.90 STATIC) (CONF:1198-16750)."
* author 0..*
* author only AuthorParticipation
  * ^requirements = "SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1198-31147)."
* entryRelationship ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.rules = #open
* entryRelationship contains
    age 0..1 and
    prognosis 0..1 and
    priority 0..* and
    status 0..1
* entryRelationship[age] ^requirements = "MAY contain zero or one [0..1] entryRelationship (CONF:1198-9059) such that it"
  * typeCode 1..1
  * typeCode = #SUBJ
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SUBJ\" Has subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1198-9060)."
  * inversionInd 1..1
  * inversionInd = true
    * ^requirements = "SHALL contain exactly one [1..1] @inversionInd=\"true\" True (CONF:1198-9069)."
  * observation 1..1
  * observation only AgeObservation
    * ^requirements = "SHALL contain exactly one [1..1] Age Observation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.31) (CONF:1198-15590)."
* entryRelationship[prognosis] ^requirements = "MAY contain zero or one [0..1] entryRelationship (CONF:1198-29951) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31531)."
  * observation 1..1
  * observation only PrognosisObservation
    * ^requirements = "SHALL contain exactly one [1..1] Prognosis Observation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.113) (CONF:1198-29952)."
* entryRelationship[priority] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31063) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31532)."
  * observation 1..1
  * observation only PriorityPreference
    * ^requirements = "SHALL contain exactly one [1..1] Priority Preference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.143) (CONF:1198-31064)."
* entryRelationship[status] ^requirements = "MAY contain zero or one [0..1] entryRelationship (CONF:1198-9063) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-9068)."
  * observation 1..1
  * observation only ProblemStatus
    * ^requirements = "SHALL contain exactly one [1..1] Problem Status (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.6:2019-06-20) (CONF:1198-15591)."

Invariant: 1198-32950
Description: "If code is selected from ValueSet Problem Type (SNOMEDCT) urn:oid:2.16.840.1.113883.3.88.12.3221.7.2 **DYNAMIC**, then it **SHALL** have at least one [1..*] translation, which **SHOULD** be selected from ValueSet Problem Type (LOINC) urn:oid:2.16.840.1.113762.1.4.1099.28 **DYNAMIC** (CONF:1198-32950) (CONF:1198-32950)."
Severity: #error