Profile: FamilyHistoryObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.46
Title: "Family History Observation"
Description: "Family History Observations related to a particular family member are contained within a Family History Organizer. The effectiveTime in the Family History Observation is the biologically or clinically relevant time of the observation. The biologically or clinically relevant time is the time at which the observation holds (is effective) for the family member (the subject of the observation)."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.46:2015-08-01"
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
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1198-8586)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1198-8587)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-8599) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.46"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.46\" (CONF:1198-10496)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32605)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1198-8592)."
* code 1..1
* code from $2.16.840.1.113883.3.88.12.3221.7.2 (preferred)
  * ^requirements = "SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Problem Type (SNOMEDCT) urn:oid:2.16.840.1.113883.3.88.12.3221.7.2 DYNAMIC (CONF:1198-32427)."
  * translation 1..*
  * translation from $2.16.840.1.113762.1.4.1099.28 (preferred)
    * ^requirements = "This code SHALL contain at least one [1..*] translation, which SHOULD be selected from ValueSet Problem Type (LOINC) urn:oid:2.16.840.1.113762.1.4.1099.28 DYNAMIC (CONF:1198-32847)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1198-8590)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1198-19098)."
* effectiveTime 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:1198-8593)."
* value 1..1
* value only $CD
* value from $2.16.840.1.113883.3.88.12.3221.7.4 (required)
  * ^requirements = "SHALL contain exactly one [1..1] value with @xsi:type=\"CD\", where the code SHALL be selected from ValueSet Problem urn:oid:2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:1198-8591)."
* entryRelationship ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.rules = #open
* entryRelationship contains
    ageObservation 0..1 and
    deathObservation 0..1
* entryRelationship[ageObservation] ^requirements = "MAY contain zero or one [0..1] entryRelationship (CONF:1198-8675) such that it"
  * typeCode 1..1
  * typeCode = #SUBJ
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SUBJ\" Subject (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:1198-8676)."
  * inversionInd 1..1
  * inversionInd = true
    * ^requirements = "SHALL contain exactly one [1..1] @inversionInd=\"true\" True (CONF:1198-8677)."
  * observation 1..1
  * observation only AgeObservation
    * ^requirements = "SHALL contain exactly one [1..1] Age Observation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.31) (CONF:1198-15526)."
* entryRelationship[deathObservation] ^requirements = "MAY contain zero or one [0..1] entryRelationship (CONF:1198-8678) such that it"
  * typeCode 1..1
  * typeCode = #CAUS
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"CAUS\" Causal or Contributory (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:1198-8679)."
  * observation 1..1
  * observation only FamilyHistoryDeathObservation
    * ^requirements = "SHALL contain exactly one [1..1] Family History Death Observation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.47) (CONF:1198-15527)."