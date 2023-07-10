Profile: AssessmentandPlanSection
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.9
Title: "Assessment and Plan Section"
Description: """This section represents the clinician's conclusions and working assumptions that will guide treatment of the patient. The Assessment and Plan Section may be combined or separated to meet local policy requirements.

See also the Assessment Section: templateId 2.16.840.1.113883.10.20.22.2.8 and Plan of Treatment Section (V2): templateId 2.16.840.1.113883.10.20.22.2.10:2014-06-09"""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.9:2014-06-09"
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
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-7705) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.9"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.9\" (CONF:1098-10381)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32583)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-15353)."
  * code 1..1
  * code = "51847-2"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"51847-2\" Assessment and Plan (CONF:1098-15354)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-32141)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1098-7707)."
* entry ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "act"
  * ^slicing.rules = #open
* entry contains plannedAct 0..*
* entry[plannedAct] ^requirements = "MAY contain zero or more [0..*] entry (CONF:1098-7708) such that it"
  * act 1..1
  * act only PlannedAct
    * ^requirements = "SHALL contain exactly one [1..1] Planned Act (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.39:2014-06-09) (CONF:1098-15448)."