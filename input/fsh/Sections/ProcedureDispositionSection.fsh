Profile: ProcedureDispositionSection
Parent: $Section
Id: 2.16.840.1.113883.10.20.18.2.12
Title: "Procedure Disposition Section"
Description: "The Procedure Disposition Section records the status and condition of the patient at the completion of the procedure or surgery. It often also states where the patient was transferred to for the next level of care."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.18.2.12"
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
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-8070) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.18.2.12"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.18.2.12\" (CONF:81-10466)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-15413)."
  * code 1..1
  * code = "59775-7"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"59775-7\" Procedure Disposition (CONF:81-15414)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:81-26490)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:81-8072)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:81-8073)."