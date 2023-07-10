Profile: ProblemConcernAct
Parent: $Act
Id: 2.16.840.1.113883.10.20.22.4.3
Title: "Problem Concern Act"
Description: """This template reflects an ongoing concern on behalf of the provider that placed the concern on a patient's problem list. So long as the underlying condition is of concern to the provider (i.e., as long as the condition, whether active or resolved, is of ongoing concern and interest to the provider), the statusCode is "active". Only when the underlying condition is no longer of concern is the statusCode set to "completed". The effectiveTime reflects the time that the underlying condition was felt to be a concern; it may or may not correspond to the effectiveTime of the condition (e.g., even five years later, the clinician may remain concerned about a prior heart attack).

The statusCode of the Problem Concern Act is the definitive indication of the status of the concern, whereas the effectiveTime of the nested Problem Observation is the definitive indication of whether or not the underlying condition is resolved.

The effectiveTime/low of the Problem Concern Act asserts when the concern became active. The effectiveTime/high asserts when the concern was completed (e.g., when the clinician deemed there is no longer any need to track the underlying condition).

A Problem Concern Act can contain many Problem Observations (templateId 2.16.840.1.113883.10.20.22.4.4). Each Problem Observation is a discrete observation of a condition, and therefore will have a statusCode of "completed". The many Problem Observations nested under a Problem Concern Act reflect the change in the clinical understanding of a condition over time. For instance, a Concern may initially contain a Problem Observation of "chest pain":
 - Problem Concern 1
   --- Problem Observation: Chest Pain 
Later, a new Problem Observation of "esophagitis" will be added, reflecting a better understanding of the nature of the chest pain. The later problem observation will have a more recent author time stamp. 
 - Problem Concern 1
   --- Problem Observation (author/time Jan 3, 2012): Chest Pain 
   --- Problem Observation (author/time Jan 6, 2012): Esophagitis
Many systems display the nested Problem Observation with the most recent author time stamp, and provide a mechanism for viewing prior observations."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.3:2015-08-01"
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
* classCode = #ACT
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"ACT\" Act (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1198-9024)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1198-9025)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-16772) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.3"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.3\" (CONF:1198-16773)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32509)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1198-9026)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-9027)."
  * code 1..1
  * code = "CONC"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"CONC\" Concern (CONF:1198-19184)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.5.6"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.5.6\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1198-32168)."
* statusCode 1..1
  * ^short = "The statusCode of the Problem Concern Act is the definitive indication of the status of the concern, whereas the effectiveTime of the nested Problem Observation is the definitive indication of whether or not the underlying condition is resolved."
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1198-9029)."
  * code 1..1
  * code from $2.16.840.1.113883.11.20.9.19 (required)
    * ^short = "The statusCode of the Problem Concern Act is the definitive indication of the status of the concern, whereas the effectiveTime of the nested Problem Observation is the definitive indication of whether or not the underlying condition is resolved."
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ProblemAct statusCode urn:oid:2.16.840.1.113883.11.20.9.19 STATIC (CONF:1198-31525)."
* effectiveTime 1..1
  * ^requirements = "SHALL contain exactly one [1..1] effectiveTime (CONF:1198-9030)."
  * low 1..1
    * ^label = "The effectiveTime/low of the Problem Concern Act asserts when the concern became active."
    * ^short = "The effectiveTime/low of the Problem Concern Act asserts when the concern became active."
    * ^requirements = "This effectiveTime SHALL contain exactly one [1..1] low (CONF:1198-9032)."
  * high 0..1
    * ^label = "The effectiveTime/high asserts when the concern was completed (e.g., when the clinician deemed there is no longer any need to track the underlying condition)."
    * ^short = "The effectiveTime/high asserts when the concern was completed (e.g., when the clinician deemed there is no longer any need to track the underlying condition)."
    * ^requirements = "This effectiveTime MAY contain zero or one [0..1] high (CONF:1198-9033)."
* author 0..*
* author only AuthorParticipation
  * ^requirements = "SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1198-31146)."
* entryRelationship ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.rules = #open
  * ^short = "The following entryRelationship represents the importance of the concern to a provider."
* entryRelationship contains
    problem 1..* and
    priority 0..*
* entryRelationship[problem] ^requirements = "SHALL contain at least one [1..*] entryRelationship (CONF:1198-9034) such that it"
  * typeCode 1..1
  * typeCode = #SUBJ
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SUBJ\" Has subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1198-9035)."
  * observation 1..1
  * observation only ProblemObservation
    * ^requirements = "SHALL contain exactly one [1..1] Problem Observation (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.4:2015-08-01) (CONF:1198-15980)."
* entryRelationship[priority] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1198-31638) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1198-31639)."
  * observation 1..1
  * observation only PriorityPreference
    * ^requirements = "SHALL contain exactly one [1..1] Priority Preference (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.143) (CONF:1198-31640)."