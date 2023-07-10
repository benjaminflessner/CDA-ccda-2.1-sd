Profile: MedicationInformation
Parent: $ManufacturedProduct
Id: 2.16.840.1.113883.10.20.22.4.23
Title: "Medication Information"
Description: """A medication should be recorded as a pre-coordinated ingredient + strength + dose form (e.g., "metoprolol 25mg tablet", "amoxicillin 400mg/5mL suspension") where possible. This includes RxNorm codes whose Term Type is SCD (semantic clinical drug), SBD (semantic brand drug), GPCK (generic pack), BPCK (brand pack).

The dose (doseQuantity) represents how many of the consumables are to be administered at each administration event. As a result, the dose is always relative to the consumable. Thus, a patient consuming a single "metoprolol 25mg tablet" per administration will have a doseQuantity of "1", whereas a patient consuming "metoprolol" will have a dose of "25 mg"."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.23:2014-06-09"
* ^version = "2014-06-09"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"MANU\" (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110 STATIC) (CONF:1098-7408)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-7409) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.23"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.23\" (CONF:1098-10506)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32579)."
* id 0..*
  * ^requirements = "MAY contain zero or more [0..*] id (CONF:1098-7410)."
* manufacturedMaterial 1..1
  * ^label = "A medication should be recorded as a pre-coordinated ingredient + strength + dose form (e.g., “metoprolol 25mg tablet”, “amoxicillin 400mg/5mL suspension”) where possible. This includes RxNorm codes whose Term Type is SCD (semantic clinical drug), SBD (semantic brand drug), GPCK (generic pack), BPCK (brand pack)."
  * ^short = "A medication should be recorded as a pre-coordinated ingredient + strength + dose form (e.g., “metoprolol 25mg tablet”, “amoxicillin 400mg/5mL suspension”) where possible. This includes RxNorm codes whose Term Type is SCD (semantic clinical drug), SBD (semantic brand drug), GPCK (generic pack), BPCK (brand pack)."
  * ^requirements = "SHALL contain exactly one [1..1] manufacturedMaterial (CONF:1098-7411)."
  * code 1..1
  * code from $2.16.840.1.113762.1.4.1010.4 (required)
    * ^requirements = "This manufacturedMaterial SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet Medication Clinical Drug urn:oid:2.16.840.1.113762.1.4.1010.4 DYNAMIC (CONF:1098-7412)."
    * translation 0..*
    * translation from $2.16.840.1.113762.1.4.1010.2 (example)
      * ^requirements = "This code MAY contain zero or more [0..*] translation, which MAY be selected from ValueSet Clinical Substance urn:oid:2.16.840.1.113762.1.4.1010.2 DYNAMIC (CONF:1098-31884)."
* manufacturerOrganization 0..1
  * ^requirements = "MAY contain zero or one [0..1] manufacturerOrganization (CONF:1098-7416)."