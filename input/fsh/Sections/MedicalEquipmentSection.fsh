Profile: MedicalEquipmentSection
Parent: $Section
Id: 2.16.840.1.113883.10.20.22.2.23
Title: "Medical Equipment Section"
Description: """This section defines a patient's implanted and external health and medical devices and equipment. This section lists any pertinent durable medical equipment (DME) used to help maintain the patient's health status. All equipment relevant to the diagnosis, care, or treatment of a patient should be included. 

Devices applied to, or placed in, the patient are represented with the Procedure Activity Procedure (V2) template. Equipment supplied to the patient (e.g., pumps, inhalers, wheelchairs) is represented by the Non-Medicinal Supply Activity V2 template. 

These devices may be grouped together within a Medical Equipment Organizer. The organizer would probably not be used with devices applied in or on the patient but rather to organize a group of medical supplies the patient has been supplied with."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.23:2014-06-09"
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
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-7944) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.23"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.23\" (CONF:1098-10404)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32523)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-15381)."
  * code 1..1
  * code = "46264-8"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"46264-8\" Medical Equipment (CONF:1098-15382)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-30828)."
* title 1..1
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1098-7946)."
* text 1..1
  * ^requirements = "SHALL contain exactly one [1..1] text (CONF:1098-7947)."
* entry ..*
  * ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "organizer"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "procedure"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "supply"
  * ^slicing.rules = #open
* entry contains
    medicalEquip 0..* and
    nonMedSupply 0..* and
    procedure 0..*
* entry[medicalEquip] ^requirements = "MAY contain zero or more [0..*] entry (CONF:1098-7948) such that it"
  * organizer 1..1
  * organizer only MedicalEquipmentOrganizer
    * ^requirements = "SHALL contain exactly one [1..1] Medical Equipment Organizer (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.135) (CONF:1098-30351)."
* entry[nonMedSupply] ^requirements = "SHOULD contain zero or more [0..*] entry (CONF:1098-31125) such that it"
  * supply 1..1
  * supply only NonMedicinalSupplyActivity
    * ^requirements = "SHALL contain exactly one [1..1] Non-Medicinal Supply Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.50:2014-06-09) (CONF:1098-31861)."
* entry[procedure] ^requirements = "SHOULD contain zero or more [0..*] entry (CONF:1098-31885) such that it"
  * procedure 1..1
  * procedure only ProcedureActivityProcedure
    * ^requirements = "SHALL contain exactly one [1..1] Procedure Activity Procedure (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.14:2014-06-09) (CONF:1098-31886)."