Profile: ImmunizationMedicationInformation
Parent: $ManufacturedProduct
Id: 2.16.840.1.113883.10.20.22.4.54
Title: "Immunization Medication Information"
Description: "The Immunization Medication Information represents product information about the immunization substance. The vaccine manufacturer and vaccine lot number are typically recorded in the medical record and should be included if known."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.54:2014-06-09"
* ^version = "2014-06-09"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"MANU\" (CodeSystem: HL7RoleClass urn:oid:2.16.840.1.113883.5.110 STATIC) (CONF:1098-9002)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-9004) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.54"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.54\" (CONF:1098-10499)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32602)."
* id 0..*
  * ^requirements = "MAY contain zero or more [0..*] id (CONF:1098-9005)."
* manufacturedMaterial 1..1
  * ^requirements = "SHALL contain exactly one [1..1] manufacturedMaterial (CONF:1098-9006)."
  * code 1..1
  * code from $2.16.840.1.113762.1.4.1010.6 (required)
    * ^requirements = "This manufacturedMaterial SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet CVX Vaccines Administered Vaccine Set urn:oid:2.16.840.1.113762.1.4.1010.6 DYNAMIC (CONF:1098-9007)."
    * translation ^slicing.discriminator[0].type = #value
      * ^slicing.discriminator[=].path = "$this"
      * ^slicing.rules = #open
    * translation contains
        vaccine 0..* and
        specificVaccine 0..*
    * translation[vaccine] from $2.16.840.1.113762.1.4.1010.8 (example)
      * ^requirements = "This code MAY contain zero or more [0..*] translation, which MAY be selected from ValueSet Vaccine Clinical Drug urn:oid:2.16.840.1.113762.1.4.1010.8 DYNAMIC (CONF:1098-31543)."
    * translation[specificVaccine] from $2.16.840.1.113762.1.4.1010.10 (example)
      * ^requirements = "This code MAY contain zero or more [0..*] translation (CONF:1098-31881)."
  * lotNumberText 0..1
    * ^short = "lotNumberText should be included if known. It may not be known for historical immunizations, planned immunizations, or refused/deferred immunizations."
    * ^requirements = "This manufacturedMaterial SHOULD contain zero or one [0..1] lotNumberText (CONF:1098-9014)."
* manufacturerOrganization 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] manufacturerOrganization (CONF:1098-9012)."