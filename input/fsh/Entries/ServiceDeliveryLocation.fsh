Profile: ServiceDeliveryLocation
Parent: $ParticipantRole
Id: 2.16.840.1.113883.10.20.22.4.32
Title: "Service Delivery Location"
Description: "This clinical statement represents the location of a service event where an act, observation or procedure took place."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.4.32"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #SDLOC
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"SDLOC\" (CodeSystem: HL7RoleCode urn:oid:2.16.840.1.113883.5.111 STATIC) (CONF:81-7758)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-7635) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.32"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.32\" (CONF:81-10524)."
* code 1..1
* code from $2.16.840.1.113883.1.11.20275 (required)
  * ^requirements = "SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet HealthcareServiceLocation urn:oid:2.16.840.1.113883.1.11.20275 DYNAMIC (CONF:81-16850)."
* addr 0..*
  * ^requirements = "SHOULD contain zero or more [0..*] addr (CONF:81-7760)."
* telecom 0..*
  * ^requirements = "SHOULD contain zero or more [0..*] telecom (CONF:81-7761)."
* playingEntity 0..1
  * ^requirements = "MAY contain zero or one [0..1] playingEntity (CONF:81-7762)."
  * classCode 1..1
  * classCode = #PLC
    * ^requirements = "The playingEntity, if present, SHALL contain exactly one [1..1] @classCode=\"PLC\" (CodeSystem: HL7EntityClass urn:oid:2.16.840.1.113883.5.41 STATIC) (CONF:81-7763)."
  * name 0..1
    * ^requirements = "The playingEntity, if present, MAY contain zero or one [0..1] name (CONF:81-16037)."