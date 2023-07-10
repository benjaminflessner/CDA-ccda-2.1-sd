Profile: MedicationDispense
Parent: CDAR2Supply
Id: 2.16.840.1.113883.10.20.22.4.18
Title: "Medication Dispense"
Description: "This template records the act of supplying medications (i.e., dispensing)."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.18:2014-06-09"
* ^version = "2014-06-09"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* obeys 1098-9333
* classCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"SPLY\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-7451)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7452)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-7453) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.18"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.18\" (CONF:1098-10505)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32580)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-7454)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-7455)."
  * code 1..1
  * code from $2.16.840.1.113883.3.88.12.80.64 (required)
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Medication Fill Status urn:oid:2.16.840.1.113883.3.88.12.80.64 STATIC 2014-04-23 (CONF:1098-32361)."
* effectiveTime 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-7456)."
* repeatNumber 0..1
  * ^short = "In \"INT\" (intent) mood, the repeatNumber defines the number of allowed administrations. For example, a repeatNumber of \"3\" means that the substance can be administered up to 3 times. In \"EVN\" (event) mood, the repeatNumber is the number of occurrences. For example, a repeatNumber of \"3\" in a substance administration event means that the current administration is the 3rd in a series."
  * ^requirements = "SHOULD contain zero or one [0..1] repeatNumber (CONF:1098-7457)."
* quantity 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] quantity (CONF:1098-7458)."
* product 0..1
  * ^requirements = "MAY contain zero or one [0..1] product (CONF:1098-7459)."
  * manufacturedProduct 1..1
  * manufacturedProduct only MedicationInformation or ImmunizationMedicationInformation
    * ^requirements = "The product, if present, SHALL contain exactly one [1..1] Medication Information (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.23:2014-06-09) (CONF:1098-15607)."
* performer 0..1
  * ^requirements = "MAY contain zero or one [0..1] performer (CONF:1098-7461)."
  * assignedEntity 1..1
    * ^requirements = "The performer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1098-7467)."
    * addr 0..1
    * addr only USRealmAddressADUSFIELDED
      * obeys 1098-10565
      * ^requirements = "This assignedEntity SHOULD contain zero or one [0..1] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-7468)."
* entryRelationship ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "supply"
  * ^slicing.rules = #open
* entryRelationship contains supplyOrder 0..1
* entryRelationship[supplyOrder] ^requirements = "MAY contain zero or one [0..1] entryRelationship (CONF:1098-7473) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-7474)."
  * supply 1..1
  * supply only MedicationSupplyOrder
    * ^requirements = "SHALL contain exactly one [1..1] Medication Supply Order (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.17:2014-06-09) (CONF:1098-15606)."

Invariant: 1098-9333
Description: "A supply act  **SHALL** contain one product/Medication Information *OR* one product/Immunization Medication Information template (CONF:1098-9333)."
Severity: #error

Invariant: 1098-10565
Description: "The content of addr **SHALL** be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2) (CONF:1098-10565)."
Severity: #error