Profile: FetusSubjectContext
Parent: $RelatedSubject
Id: 2.16.840.1.113883.10.20.6.2.3
Title: "Fetus Subject Context"
Description: "For reports on mothers and their fetus(es), information on a mother is mapped to recordTarget, PatientRole, and Patient. Information on the fetus is mapped to subject, relatedSubject, and SubjectPerson at the CDA section level. Both context information on the mother and fetus must be included in the document if observations on fetus(es) are contained in the document."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.6.2.3"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-9189) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.6.2.3"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.6.2.3\" (CONF:81-10535)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-9190)."
  * code 1..1
  * code = "121026"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"121026\" (CONF:81-26455)."
  * codeSystem 1..1
  * codeSystem = "1.2.840.10008.2.16.4"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"1.2.840.10008.2.16.4\" (CodeSystem: DCM urn:oid:1.2.840.10008.2.16.4) (CONF:81-26476)."
* subject 1..1
  * ^requirements = "SHALL contain exactly one [1..1] subject (CONF:81-9191)."
  * name 1..1
    * ^short = "The name element is used to store the DICOM fetus ID, typically a pseudonym such as fetus_1."
    * ^requirements = "This subject SHALL contain exactly one [1..1] name (CONF:81-15347)."