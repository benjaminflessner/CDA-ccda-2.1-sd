Profile: HealthStatusEvaluationsandOutcomesSection
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.61
Title: "Health Status Evaluations and Outcomes Section"
Description: "This template represents observations regarding the outcome of care from the interventions used to treat the patient. These observations represent status, at points in time, related to established care plan goals and/or interventions."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.2.61"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* nullFlavor 0..1
* nullFlavor = #NI
  * ^requirements = "MAY contain zero or one [0..1] @nullFlavor=\"NI\" No information (CodeSystem: HL7NullFlavor urn:oid:2.16.840.1.113883.5.1008) (CONF:1098-32821)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-29578) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.61"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.61\" (CONF:1098-29579)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-29580)."
  * code 1..1
  * code = "11383-7"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"11383-7\" Patient Problem Outcome (CONF:1098-29581)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-29582)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1098-29589)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1098-29590)."
* entry ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "observation"
  * ^slicing.rules = #open
  * ^short = "If section/@nullFlavor is not present:"
* entry contains outcome 1..*
* entry[outcome] ^requirements = "SHALL contain at least one [1..*] entry (CONF:1098-31227) such that it"
  * observation 1..1
  * observation only OutcomeObservation
    * ^requirements = "SHALL contain exactly one [1..1] Outcome Observation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.144) (CONF:1098-31228)."