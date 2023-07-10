Profile: ProblemSectionEntriesRequired
Parent: ProblemSectionEntriesOptional
Id: 2.16.840.1.113883.10.20.22.2.5.1
Title: "Problem Section (entries required)"
Description: "This section lists and describes all relevant clinical problems at the time the document is generated. At a minimum, all pertinent current and historical problems should be listed. Overall health status may be represented in this section."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.5.1:2015-08-01"
* ^publisher = "WaveOne Associates"
* ^contact.name = "Brett Marquard"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "4135496886"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "brett@waveoneassociates.com"
* ^contact.telecom[=].use = #work
* nullFlavor 0..1
* nullFlavor = #NI
  * ^requirements = "MAY contain zero or one [0..1] @nullFlavor=\"NI\" No information (CodeSystem: HL7NullFlavor urn:oid:2.16.840.1.113883.5.1008) (CONF:1198-32864)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.rules = #open
* templateId[primary] 1..1
  * ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-9179) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.5.1"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.5.1\" (CONF:1198-10441)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32510)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-15409)."
  * code 1..1
  * code = "11450-4"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"11450-4\" Problem List (CONF:1198-15410)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1198-31142)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1198-9181)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1198-9182)."
* entry 1..*
  * ^short = "If section/@nullFlavor is not present:"
  * ^requirements = "SHALL contain at least one [1..*] entry (CONF:1198-9183)"
* entry[act] ^requirements = "SHALL contain exactly one [1..1] Problem Concern Act (V3) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.3:2015-08-01) (CONF:1198-15506)"
  * ^min = 0