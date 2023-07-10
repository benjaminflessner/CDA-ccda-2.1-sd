Profile: MedicationSupplyOrder
Parent: CDAR2Supply
Id: 2.16.840.1.113883.10.20.22.4.17
Title: "Medication Supply Order"
Description: "This template records the intent to supply a patient with medications."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.17:2014-06-09"
* ^version = "2014-06-09"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"SPLY\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-7427)."
* moodCode 1..1
* moodCode = #INT
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"INT\" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7428)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-7429) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.17"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.17\" (CONF:1098-10507)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32578)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-7430)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-7432)."
  * code 1..1
  * code from $2.16.840.1.113883.1.11.15933 (required)
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ActStatus urn:oid:2.16.840.1.113883.1.11.15933 DYNAMIC (CONF:1098-32362)."
* effectiveTime ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "high"
  * ^slicing.rules = #open
* effectiveTime contains when 0..1
* effectiveTime[when] only $IVL-TS
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-15143) such that it"
  * high 1..1
    * ^requirements = "SHALL contain exactly one [1..1] high (CONF:1098-15144)."
* repeatNumber 0..1
  * ^short = "In \"INT\" (intent) mood, the repeatNumber defines the number of allowed administrations. For example, a repeatNumber of \"3\" means that the substance can be administered up to 3 times. In \"EVN\" (event) mood, the repeatNumber is the number of occurrences. For example, a repeatNumber of \"3\" in a substance administration event means that the current administration is the 3rd in a series."
  * ^requirements = "SHOULD contain zero or one [0..1] repeatNumber (CONF:1098-7434)."
* quantity 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] quantity (CONF:1098-7436)."
* product 0..1
  * ^requirements = "MAY contain zero or one [0..1] product (CONF:1098-7439)."
  * manufacturedProduct 1..1
  * manufacturedProduct only MedicationInformation or ImmunizationMedicationInformation
    * ^requirements = "The product, if present, SHALL contain exactly one [1..1] Medication Information (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.23:2014-06-09) (CONF:1098-16093)."
* author 0..1
  * ^requirements = "MAY contain zero or one [0..1] author (CONF:1098-7438)."
* entryRelationship 0..1
  * ^requirements = "MAY contain zero or one [0..1] entryRelationship (CONF:1098-7442)."
  * typeCode 1..1
  * typeCode = #SUBJ
    * ^requirements = "The entryRelationship, if present, SHALL contain exactly one [1..1] @typeCode=\"SUBJ\" (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-7444)."
  * inversionInd 1..1
  * inversionInd = true
    * ^requirements = "The entryRelationship, if present, SHALL contain exactly one [1..1] @inversionInd=\"true\" True (CONF:1098-7445)."
  * act 1..1
  * act only Instruction
    * ^requirements = "The entryRelationship, if present, SHALL contain exactly one [1..1] Instruction (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.20:2014-06-09) (CONF:1098-31391)."