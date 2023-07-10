Profile: FindingsSectionDIR
Parent: $Section
Id: 2.16.840.1.113883.10.20.6.1.2
Title: "Findings Section (DIR)"
Description: "The Findings section contains the main narrative body of the report. While not an absolute requirement for transformed DICOM SR reports, it is suggested that Diagnostic Imaging Reports authored in CDA follow Term Info guidelines for the codes in the various observations and procedures recorded in this section."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.6.1.2"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* obeys 81-8532
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-8531) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.6.1.2"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.6.1.2\" (CONF:81-10456)."

Invariant: 81-8532
Description: "This section SHOULD contain only the direct observations in the report, with topics such as Reason for Study, History, and Impression placed in separate sections.  However, in cases where the source of report content provides a single block of text not separated into these sections, that text SHALL be placed in the Findings section (CONF:81-8532)."
Severity: #warning