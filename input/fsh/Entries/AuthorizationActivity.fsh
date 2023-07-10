Profile: AuthorizationActivity
Parent: $Act
Id: 2.16.840.1.113883.10.20.1.19
Title: "Authorization Activity"
Description: """An Authorization Activity represents authorizations or pre-authorizations currently active for the patient for the particular payer. 

Authorizations are represented using an act subordinate to the policy or program that provided it. The authorization refers to the policy or program. Authorized treatments can be grouped into an organizer class, where common properties, such as the reason for the authorization, can be expressed. Subordinate acts represent what was authorized."""
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.1.19"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #ACT
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"ACT\" Act (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:81-8944)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:81-8945)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-8946) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.1.19"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.1.19\" (CONF:81-10529)."
* id 1..1
  * ^requirements = "SHALL contain exactly one [1..1] id (CONF:81-8947)."
* entryRelationship ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "typeCode"
  * ^slicing.rules = #open
* entryRelationship contains target 1..*
* entryRelationship[target] obeys 81-8951 and 81-8952
  * ^requirements = "SHALL contain at least one [1..*] entryRelationship (CONF:81-8948) such that it"
  * typeCode 1..1
  * typeCode = #SUBJ
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SUBJ\" Has Subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:81-8949)."

Invariant: 81-8951
Description: "The target of an authorization activity with act/entryRelationship/@typeCode=\"SUBJ\" SHALL be a clinical statement with moodCode=\"PRMS\" Promise (CONF:81-8951)."
Severity: #warning

Invariant: 81-8952
Description: "The target of an authorization activity MAY contain one or more performer, to indicate the providers that have been authorized to provide treatment (CONF:81-8952)."
Severity: #warning