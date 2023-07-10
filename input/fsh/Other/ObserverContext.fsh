Profile: ObserverContext
Parent: $AssignedAuthor
Id: 2.16.840.1.113883.10.20.6.2.4
Title: "Observer Context"
Description: "The Observer Context is used to override the author specified in the CDA Header. It is valid as a direct child element of a section."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.6.2.4"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* obeys 81-9198
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-9194) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.6.2.4"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.6.2.4\" (CONF:81-10536)."
* id 1..*
  * ^short = "The id element contains the author's id or the DICOM device observer UID"
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:81-9196)."

Invariant: 81-9198
Description: "Either assignedPerson or assignedAuthoringDevice SHALL be present (CONF:81-9198)."
Severity: #error