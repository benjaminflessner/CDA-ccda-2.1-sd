Profile: PreconditionforSubstanceAdministration
Parent: $Criterion
Id: 2.16.840.1.113883.10.20.22.4.25
Title: "Precondition for Substance Administration"
Description: "A criterion for administration can be used to record that the medication is to be administered only when the associated criteria are met."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.25:2014-06-09"
* ^version = "2014-06-09"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-7372) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.25"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.25\" (CONF:1098-10517)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32603)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code with @xsi:type=\"CD\" (CONF:1098-32396)."
  * code 1..1
  * code = "ASSERTION"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"ASSERTION\" Assertion (CONF:1098-32397)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.5.4"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.5.4\" (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:1098-32398)."
* value 1..1
* value only $CD
* value from $2.16.840.1.113883.3.88.12.3221.7.4 (required)
  * ^requirements = "SHALL contain exactly one [1..1] value with @xsi:type=\"CD\", where the code SHALL be selected from ValueSet Problem urn:oid:2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:1098-7369)."