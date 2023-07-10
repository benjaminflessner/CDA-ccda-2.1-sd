Profile: MedicationActivity
Parent: $SubstanceAdministration
Id: 2.16.840.1.113883.10.20.22.4.16
Title: "Medication Activity"
Description: """A Medication Activity describes substance administrations that have actually occurred (e.g., pills ingested or injections given) or are intended to occur (e.g., "take 2 tablets twice a day for the next 10 days"). Medication activities in "INT" mood are reflections of what a clinician intends a patient to be taking. For example, a clinician may intend that a patient be administered Lisinopril 20 mg PO for blood pressure control. If what was actually administered was Lisinopril 10 mg., then the Medication activities in the "EVN" mood would reflect actual use.

A moodCode of INT is allowed, but it is recommended that the Planned Medication Activity (V2) template be used for moodCodes other than EVN if the document type contains a section that includes Planned Medication Activity (V2) (for example a Care Plan document with Plan of Treatment, Intervention, or Goal sections).

At a minimum, a Medication Activity shall include an effectiveTime indicating the duration of the administration (or single-administration timestamp). Ambulatory medication lists generally provide a summary of use for a given medication over time - a medication activity in event mood with the duration reflecting when the medication started and stopped. Ongoing medications will not have a stop date (or will have a stop date with a suitable NULL value). Ambulatory medication lists will generally also have a frequency (e.g., a medication is being taken twice a day). Inpatient medications generally record each administration as a separate act.

The dose (doseQuantity) represents how many of the consumables are to be administered at each administration event. As a result, the dose is always relative to the consumable and the interval of administration. Thus, a patient consuming a single "metoprolol 25mg tablet" per administration will have a doseQuantity of "1", whereas a patient consuming "metoprolol" will have a dose of "25 mg"."""
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.16:2014-06-09"
* ^version = "2014-06-09"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* obeys 1098-30800
* classCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"SBADM\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-7496)."
* moodCode 1..1
* moodCode from $2.16.840.1.113883.11.20.9.18 (required)
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet MoodCodeEvnInt urn:oid:2.16.840.1.113883.11.20.9.18 STATIC 2011-04-03 (CONF:1098-7497)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-7499) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.16"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.16\" (CONF:1098-10504)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1098-32498)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-7500)."
* code 0..1
  * ^label = "SubstanceAdministration.code is an optional field. Per HL7 Pharmacy Committee, \"this is intended to further specify the nature of the substance administration act. To date the committee has made no use of this attribute\". Because the type of substance administration is generally implicit in the routeCode, in the consumable participant, etc., the field is generally not used, and there is no defined value set."
  * ^short = "SubstanceAdministration.code is an optional field. Per HL7 Pharmacy Committee, \"this is intended to further specify the nature of the substance administration act. To date the committee has made no use of this attribute\". Because the type of substance administration is generally implicit in the routeCode, in the consumable participant, etc., the field is generally not used, and there is no defined value set."
  * ^requirements = "MAY contain zero or one [0..1] code (CONF:1098-7506)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-7507)."
  * code 1..1
  * code from $2.16.840.1.113762.1.4.1099.11 (required)
    * ^short = "The substance administration effectiveTime field can repeat, in order to represent varying levels of complex dosing. effectiveTime can be used to represent the duration of administration (e.g., \"10 days\"), the frequency of administration (e.g., \"every 8 hours\"), and more. Here, we require that there SHALL be an effectiveTime documentation of the duration (or single-administration timestamp), and that there SHOULD be an effectiveTime documentation of the frequency. Other timing nuances, supported by the base CDA R2 standard, may also be included."
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Medication Status urn:oid:2.16.840.1.113762.1.4.1099.11 DYNAMIC (CONF:1098-32360)."
* effectiveTime ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "operator"
  * ^slicing.rules = #open
* effectiveTime contains
    duration 1..1 and
    frequency 0..1
* effectiveTime[duration] only $IVL-TS
  * obeys 1098-32890
  * ^label = "This effectiveTime represents either the medication duration (i.e., the time the medication was started and stopped) or the single-administration timestamp."
  * ^short = "This effectiveTime represents either the medication duration (i.e., the time the medication was started and stopped) or the single-administration timestamp."
  * ^requirements = "SHALL contain exactly one [1..1] effectiveTime (CONF:1098-7508) such that it"
  * value 0..1
    * ^label = "indicates a single-administration timestamp"
    * ^short = "indicates a single-administration timestamp"
    * ^requirements = "SHOULD contain zero or one [0..1] @value (CONF:1098-32775)."
  * low 0..1
    * ^label = "indicates when medication started"
    * ^short = "indicates when medication started"
    * ^requirements = "SHOULD contain zero or one [0..1] low (CONF:1098-32776)."
  * high 0..1
    * ^label = "indicates when medication stopped"
    * ^short = "indicates when medication stopped"
    * ^requirements = "MAY contain zero or one [0..1] high (CONF:1098-32777)."
* effectiveTime[frequency] obeys 1098-28499
  * ^label = "This effectiveTime represents the medication frequency (e.g., administration times per day)."
  * ^short = "This effectiveTime represents the medication frequency (e.g., administration times per day)."
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-7513) such that it"
  * operator 1..1
  * operator = "A"
    * ^requirements = "SHALL contain exactly one [1..1] @operator=\"A\" (CONF:1098-9106)."
* repeatNumber 0..1
  * ^short = "In \"INT\" (intent) mood, the repeatNumber defines the number of allowed administrations. For example, a repeatNumber of \"3\" means that the substance can be administered up to 3 times. In \"EVN\" (event) mood, the repeatNumber is the number of occurrences. For example, a repeatNumber of \"3\" in a substance administration event means that the current administration is the 3rd in a series."
  * ^requirements = "MAY contain zero or one [0..1] repeatNumber (CONF:1098-7555)."
* routeCode 0..1
* routeCode from $2.16.840.1.113883.3.88.12.3221.8.7 (required)
  * ^requirements = "SHOULD contain zero or one [0..1] routeCode, which SHALL be selected from ValueSet SPL Drug Route of Administration Terminology urn:oid:2.16.840.1.113883.3.88.12.3221.8.7 DYNAMIC (CONF:1098-7514)."
  * translation 0..*
  * translation from $2.16.840.1.113762.1.4.1099.12 (required)
    * ^requirements = "The routeCode, if present, SHOULD contain zero or more [0..*] translation, which SHALL be selected from ValueSet Medication Route urn:oid:2.16.840.1.113762.1.4.1099.12 DYNAMIC (CONF:1098-32950)."
* approachSiteCode 0..1
* approachSiteCode from $2.16.840.1.113883.3.88.12.3221.8.9 (required)
  * ^requirements = "MAY contain zero or one [0..1] approachSiteCode, where the code SHALL be selected from ValueSet Body Site Value Set urn:oid:2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:1098-7515)."
* doseQuantity 1..1
  * obeys 1098-16879 and 1098-16878
  * ^requirements = "SHALL contain exactly one [1..1] doseQuantity (CONF:1098-7516)."
  * unit 0..1
  * unit from $2.16.840.1.113883.1.11.12839 (required)
    * ^requirements = "This doseQuantity SHOULD contain zero or one [0..1] @unit, which SHALL be selected from ValueSet UnitsOfMeasureCaseSensitive urn:oid:2.16.840.1.113883.1.11.12839 DYNAMIC (CONF:1098-7526)."
* rateQuantity 0..1
  * ^requirements = "MAY contain zero or one [0..1] rateQuantity (CONF:1098-7517)."
  * unit 1..1
  * unit from $2.16.840.1.113883.1.11.12839 (required)
    * ^requirements = "The rateQuantity, if present, SHALL contain exactly one [1..1] @unit, which SHALL be selected from ValueSet UnitsOfMeasureCaseSensitive urn:oid:2.16.840.1.113883.1.11.12839 DYNAMIC (CONF:1098-7525)."
* maxDoseQuantity 0..1
  * ^requirements = "MAY contain zero or one [0..1] maxDoseQuantity (CONF:1098-7518)."
* administrationUnitCode 0..1
* administrationUnitCode from $2.16.840.1.113762.1.4.1021.30 (required)
  * ^short = "administrationUnitCode@code describes the units of medication administration for an item using a code that is pre-coordinated to include a physical unit form (ointment, powder, solution, etc.) which differs from the units used in administering the consumable (capful, spray, drop, etc.). For example when recording medication administrations, 'metric drop (C48491)'' would be appropriate to accompany the RxNorm code of 198283 (Timolol 0.25% Ophthalmic Solution) where the number of drops would be specified in doseQuantity@value."
  * ^requirements = "MAY contain zero or one [0..1] administrationUnitCode, which SHALL be selected from ValueSet AdministrationUnitDoseForm urn:oid:2.16.840.1.113762.1.4.1021.30 DYNAMIC (CONF:1098-7519)."
* consumable 1..1
  * ^requirements = "SHALL contain exactly one [1..1] consumable (CONF:1098-7520)."
  * manufacturedProduct 1..1
  * manufacturedProduct only MedicationInformation
    * ^requirements = "This consumable SHALL contain exactly one [1..1] Medication Information (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.23:2014-06-09) (CONF:1098-16085)."
* performer 0..1
  * ^requirements = "MAY contain zero or one [0..1] performer (CONF:1098-7522)."
* author 0..*
* author only AuthorParticipation
  * ^requirements = "SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31150)."
* participant ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "participantRole"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "typeCode"
  * ^slicing.rules = #open
* participant contains drugVehicle 0..*
* participant[drugVehicle] ^requirements = "MAY contain zero or more [0..*] participant (CONF:1098-7523) such that it"
  * typeCode 1..1
  * typeCode = #CSM
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"CSM\" (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:1098-7524)."
  * participantRole 1..1
  * participantRole only DrugVehicle
    * ^requirements = "SHALL contain exactly one [1..1] Drug Vehicle (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.24) (CONF:1098-16086)."
* entryRelationship ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[=].path = "substanceAdministration"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "act"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "supply"
  * ^slicing.rules = #open
* entryRelationship contains
    indication 0..* and
    instruction 0..1 and
    supplyOrder 0..1 and
    medicationDispense 0..* and
    reaction 0..* and
    drugMonitoring 0..1 and
    substanceAdministered 0..* and
    signature 0..*
* entryRelationship[indication] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-7536) such that it"
  * typeCode 1..1
  * typeCode = #RSON
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"RSON\" (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-7537)."
  * observation 1..1
  * observation only Indication
    * ^requirements = "SHALL contain exactly one [1..1] Indication (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.19:2014-06-09) (CONF:1098-16087)."
* entryRelationship[instruction] ^requirements = "MAY contain zero or one [0..1] entryRelationship (CONF:1098-7539) such that it"
  * typeCode 1..1
  * typeCode = #SUBJ
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"SUBJ\" (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-7540)."
  * inversionInd 1..1
  * inversionInd = true
    * ^requirements = "SHALL contain exactly one [1..1] @inversionInd=\"true\" True (CONF:1098-7542)."
  * act 1..1
  * act only Instruction
    * ^requirements = "SHALL contain exactly one [1..1] Instruction (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.20:2014-06-09) (CONF:1098-31387)."
* entryRelationship[supplyOrder] ^requirements = "MAY contain zero or one [0..1] entryRelationship (CONF:1098-7543) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-7547)."
  * supply 1..1
  * supply only MedicationSupplyOrder
    * ^requirements = "SHALL contain exactly one [1..1] Medication Supply Order (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.17:2014-06-09) (CONF:1098-16089)."
* entryRelationship[medicationDispense] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-7549) such that it"
  * typeCode 1..1
  * typeCode = #REFR
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-7553)."
  * supply 1..1
  * supply only MedicationDispense
    * ^requirements = "SHALL contain exactly one [1..1] Medication Dispense (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.18:2014-06-09) (CONF:1098-16090)."
* entryRelationship[reaction] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-7552) such that it"
  * typeCode 1..1
  * typeCode = #CAUS
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"CAUS\" (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-7544)."
  * observation 1..1
  * observation only ReactionObservation
    * ^requirements = "SHALL contain exactly one [1..1] Reaction Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.9:2014-06-09) (CONF:1098-16091)."
* entryRelationship[drugMonitoring] ^requirements = "MAY contain zero or one [0..1] entryRelationship (CONF:1098-30820) such that it"
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" Has component (CONF:1098-30821)."
  * act 1..1
  * act only DrugMonitoringAct
    * ^requirements = "SHALL contain exactly one [1..1] Drug Monitoring Act (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.123) (CONF:1098-30822)."
* entryRelationship[substanceAdministered] ^short = "The following entryRelationship is used to indicate a given medication's order in a series. The nested Substance Administered Act identifies an administration in the series. The entryRelationship/sequenceNumber shows the order of this particular administration in that series."
  * ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-31515) such that it"
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-31516)."
  * inversionInd 1..1
  * inversionInd = true
    * ^requirements = "SHALL contain exactly one [1..1] @inversionInd=\"true\" (CONF:1098-31517)."
  * sequenceNumber 0..1
    * ^requirements = "MAY contain zero or one [0..1] sequenceNumber (CONF:1098-31518)."
  * act 1..1
  * act only SubstanceAdministeredAct
    * ^requirements = "SHALL contain exactly one [1..1] Substance Administered Act (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.118) (CONF:1098-31519)."
* entryRelationship[signature] ^requirements = "MAY contain zero or more [0..*] entryRelationship (CONF:1098-32907) such that it"
  * typeCode 1..1
  * typeCode = #COMP
    * ^requirements = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" Has component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32908)."
  * substanceAdministration 1..1
  * substanceAdministration only MedicationFreeTextSig
    * ^requirements = "SHALL contain exactly one [1..1] Medication Free Text Sig (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.147) (CONF:1098-32909)."
* precondition 0..*
  * ^requirements = "MAY contain zero or more [0..*] precondition (CONF:1098-31520)."
  * typeCode 1..1
  * typeCode = #PRCN
    * ^requirements = "The precondition, if present, SHALL contain exactly one [1..1] @typeCode=\"PRCN\" (CONF:1098-31882)."
  * criterion 1..1
  * criterion only PreconditionforSubstanceAdministration
    * ^requirements = "The precondition, if present, SHALL contain exactly one [1..1] Precondition for Substance Administration (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.25:2014-06-09) (CONF:1098-31883)."

Invariant: 1098-30800
Description: "Medication Activity **SHOULD** include doseQuantity **OR** rateQuantity (CONF:1098-30800)."
Severity: #warning

Invariant: 1098-32890
Description: "This effectiveTime **SHALL** contain either a low or a @value but not both (CONF:1098-32890)."
Severity: #error

Invariant: 1098-28499
Description: "**SHALL** contain exactly one [1..1] @xsi:type=\"PIVL_TS\" or \"EIVL_TS\" (CONF:1098-28499)."
Severity: #error

Invariant: 1098-16879
Description: "Not pre-coordinated consumable: If the consumable code is not pre-coordinated (e.g., is simply \"metoprolol\"), then doseQuantity must represent a physical quantity with @unit, e.g., \"25\" and \"mg\", specifying the amount of product given per administration (CONF:1098-16879)."
Severity: #warning

Invariant: 1098-16878
Description: "Pre-coordinated consumable: If the consumable code is a pre-coordinated unit dose (e.g., \"metoprolol 25mg tablet\") then doseQuantity is a unitless number that indicates the number of products given per administration (e.g., \"2\", meaning 2 x \"metoprolol 25mg tablet\" per administration) (CONF:1098-16878)."
Severity: #warning