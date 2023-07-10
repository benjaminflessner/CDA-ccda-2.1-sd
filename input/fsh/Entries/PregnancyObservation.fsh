Profile: PregnancyObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.15.3.8
Title: "Pregnancy Observation"
Description: "This clinical statement represents current and/or prior pregnancy dates enabling investigators to determine if the subject of the case report was pregnant during the course of a condition."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.15.3.8"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:81-451)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:81-452)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-16768) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.15.3.8"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.15.3.8\" (CONF:81-16868)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-19153)."
  * code 1..1
  * code = "ASSERTION"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"ASSERTION\" Assertion (CONF:81-19154)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.5.4"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.5.4\" (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:81-26505)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:81-455)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:81-19110)."
* effectiveTime 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:81-2018)."
* value 1..1
* value only $CD
  * ^comment = "201707 Errata Comment 1599: Added value set \"Pregnancy Status\" urn:oid:2.16.840.1.113883.11.20.9.85 to Trifolia. Contains values (all from SNOMED): Pregnant (finding), Possible Pregnancy (finding), Not Pregnant (finding).\n\nUpdated Pregnancy Observation template - removed binding to single code (Pregnant) and added SHALL DYNAMIC binding to above value set."
  * ^requirements = "SHALL contain exactly one [1..1] value with @xsi:type=\"CD\"."
  * code 1..1
  * code from $2.16.840.1.113762.1.4.1099.24 (required)
    * ^requirements = "This code SHALL be selected from ValueSet Extended Pregnancy Status urn:oid:2.16.840.1.113762.1.4.1099.24 DYNAMIC (CONF:81-457)."
* entryRelationship ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "observation"
  * ^slicing.rules = #open
* entryRelationship contains estimatedDateofDelivery 0..1
* entryRelationship[estimatedDateofDelivery] ^requirements = "MAY contain zero or one [0..1] entryRelationship (CONF:81-458) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:81-459)."
  * observation 1..1
  * observation only EstimatedDateofDelivery
    * ^requirements = "SHALL contain exactly one [1..1] observationEstimated Date of Delivery (identifier: urn:oid:2.16.840.1.113883.10.20.15.3.1) (CONF:81-15584)."