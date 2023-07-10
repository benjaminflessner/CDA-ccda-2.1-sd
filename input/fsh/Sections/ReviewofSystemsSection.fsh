Profile: ReviewofSystemsSection
Parent: $Section
Id: 1.3.6.1.4.1.19376.1.5.3.1.3.18
Title: "Review of Systems Section"
Description: "The Review of Systems Section contains a relevant collection of symptoms and functions systematically gathered by a clinician. It includes symptoms the patient is currently experiencing, some of which were not elicited during the history of present illness, as well as a potentially large number of pertinent negatives, for example, symptoms that the patient denied experiencing."
* ^identifier.value = "urn:oid:1.3.6.1.4.1.19376.1.5.3.1.3.18"
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
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-7812) such that it"
  * root 1..1
  * root = "1.3.6.1.4.1.19376.1.5.3.1.3.18"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"1.3.6.1.4.1.19376.1.5.3.1.3.18\" (CONF:81-10469)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-15435)."
  * code 1..1
  * code = "10187-3"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"10187-3\" Review of Systems (CONF:81-15436)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:81-26495)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:81-7814)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:81-7815)."