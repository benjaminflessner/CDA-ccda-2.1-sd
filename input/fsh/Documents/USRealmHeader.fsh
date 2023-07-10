Profile: USRealmHeader
Parent: $ClinicalDocument
Id: 2.16.840.1.113883.10.20.22.1.1
Title: "US Realm Header"
Description: "This template defines constraints that represent common administrative and demographic concepts for US Realm CDA documents. Further specification, such as ClinicalDocument/code, are provided in document templates that conform to this template."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.1.1:2015-08-01"
* ^version = "2015-08-01"
* ^publisher = "WaveOne Associates"
* ^contact.name = "Brett Marquard"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "4135496886"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "brett@waveoneassociates.com"
* ^contact.telecom[=].use = #work
* realmCode 1..1
* realmCode = "US"
  * ^requirements = "SHALL contain exactly one [1..1] realmCode=\"US\" (CONF:1198-16791)."
* typeId 1..1
  * ^requirements = "SHALL contain exactly one [1..1] typeId (CONF:1198-5361)."
  * root 1..1
  * root = "2.16.840.1.113883.1.3"
    * ^requirements = "This typeId SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.1.3\" (CONF:1198-5250)."
  * extension 1..1
  * extension = "POCD_HD000040"
    * ^requirements = "This typeId SHALL contain exactly one [1..1] @extension=\"POCD_HD000040\" (CONF:1198-5251)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-5252) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.1.1"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.1.1\" (CONF:1198-10036)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32503)."
* id 1..1
  * obeys 1198-9991
  * ^requirements = "SHALL contain exactly one [1..1] id (CONF:1198-5363)."
* code 1..1
  * obeys 1198-9992 and 1198-32948
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-5253)."
* title 1..1
  * ^label = "The title can either be a locally defined name or the displayName corresponding to clinicalDocument/code"
  * ^short = "The title can either be a locally defined name or the displayName corresponding to clinicalDocument/code"
  * ^requirements = "SHALL contain exactly one [1..1] title (CONF:1198-5254)."
* effectiveTime 1..1
* effectiveTime only USRealmDateandTimeDTMUSFIELDED
  * ^requirements = "SHALL contain exactly one [1..1] US Realm Date and Time (DTM.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.4) (CONF:1198-5256)."
* confidentialityCode 1..1
* confidentialityCode from $2.16.840.1.113883.1.11.16926 (preferred)
  * ^requirements = "SHALL contain exactly one [1..1] confidentialityCode, which SHOULD be selected from ValueSet HL7 BasicConfidentialityKind urn:oid:2.16.840.1.113883.1.11.16926 DYNAMIC (CONF:1198-5259)."
* languageCode 1..1
* languageCode from $2.16.840.1.113883.1.11.11526 (required)
  * ^requirements = "SHALL contain exactly one [1..1] languageCode, which SHALL be selected from ValueSet Language urn:oid:2.16.840.1.113883.1.11.11526 DYNAMIC (CONF:1198-5372)."
* setId 0..1
  * obeys 1198-6380
  * ^requirements = "MAY contain zero or one [0..1] setId (CONF:1198-5261)."
* versionNumber 0..1
  * obeys 1198-6387
  * ^requirements = "MAY contain zero or one [0..1] versionNumber (CONF:1198-5264)."
* recordTarget 1..*
  * ^short = "The recordTarget records the administrative and demographic data of the patient whose health information is described by the clinical document; each recordTarget must contain at least one patientRole element"
  * ^requirements = "SHALL contain at least one [1..*] recordTarget (CONF:1198-5266)."
  * patientRole 1..1
    * ^requirements = "Such recordTargets SHALL contain exactly one [1..1] patientRole (CONF:1198-5267)."
    * id 1..*
      * ^requirements = "This patientRole SHALL contain at least one [1..*] id (CONF:1198-5268)."
    * addr 1..*
    * addr only USRealmAddressADUSFIELDED
      * ^requirements = "This patientRole SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1198-5271)."
    * telecom 1..*
      * ^requirements = "This patientRole SHALL contain at least one [1..*] telecom (CONF:1198-5280)."
      * use 0..1
      * use from $2.16.840.1.113883.11.20.9.20 (required)
        * ^requirements = "Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) urn:oid:2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1198-5375)."
    * patient 1..1
      * ^requirements = "This patientRole SHALL contain exactly one [1..1] patient (CONF:1198-5283)."
      * name 1..*
      * name only USRealmPatientNamePTNUSFIELDED
        * ^requirements = "This patient SHALL contain at least one [1..*] US Realm Patient Name (PTN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1) (CONF:1198-5284)."
      * administrativeGenderCode 1..1
      * administrativeGenderCode from $2.16.840.1.113883.1.11.1 (required)
        * ^requirements = "This patient SHALL contain exactly one [1..1] administrativeGenderCode, which SHALL be selected from ValueSet Administrative Gender (HL7 V3) urn:oid:2.16.840.1.113883.1.11.1 DYNAMIC (CONF:1198-6394)."
      * birthTime 1..1
        * obeys 1198-5299 and 1198-5300 and 1198-32418
        * ^requirements = "This patient SHALL contain exactly one [1..1] birthTime (CONF:1198-5298)."
      * maritalStatusCode 0..1
      * maritalStatusCode from $2.16.840.1.113883.1.11.12212 (required)
        * ^requirements = "This patient SHOULD contain zero or one [0..1] maritalStatusCode, which SHALL be selected from ValueSet Marital Status urn:oid:2.16.840.1.113883.1.11.12212 DYNAMIC (CONF:1198-5303)."
      * religiousAffiliationCode 0..1
      * religiousAffiliationCode from $2.16.840.1.113883.1.11.19185 (required)
        * ^requirements = "This patient MAY contain zero or one [0..1] religiousAffiliationCode, which SHALL be selected from ValueSet Religious Affiliation urn:oid:2.16.840.1.113883.1.11.19185 DYNAMIC (CONF:1198-5317)."
      * raceCode 1..1
      * raceCode from $2.16.840.1.113883.3.2074.1.1.3 (required)
        * ^requirements = "This patient SHALL contain exactly one [1..1] raceCode, which SHALL be selected from ValueSet Race Category Excluding Nulls urn:oid:2.16.840.1.113883.3.2074.1.1.3 DYNAMIC (CONF:1198-5322)."
      * sdtcRaceCode 0..*
      * sdtcRaceCode from $2.16.840.1.113883.1.11.14914 (undefined)
        * obeys 1198-31347
        * ^extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace"
        * ^extension.valueUri = "urn:hl7-org:sdtc"
        * ^short = "Note: The sdtc:raceCode is only used to record additional values when the patient has indicated multiple races or additional race detail beyond the five categories required for Meaningful Use Stage 2. The prefix sdtc: SHALL be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the additional raceCode elements."
        * ^requirements = "This patient MAY contain zero or more [0..*] sdtc:raceCode, which SHALL be selected from ValueSet Race Value Set urn:oid:2.16.840.1.113883.1.11.14914 DYNAMIC (CONF:1198-7263). "
      * ethnicGroupCode 1..1
      * ethnicGroupCode from $2.16.840.1.114222.4.11.837 (required)
        * ^requirements = "This patient SHALL contain exactly one [1..1] ethnicGroupCode, which SHALL be selected from ValueSet Ethnicity urn:oid:2.16.840.1.114222.4.11.837 DYNAMIC (CONF:1198-5323)."
      * sdtcEthnicGroupCode 0..*
      * sdtcEthnicGroupCode from $2.16.840.1.114222.4.11.877 (undefined)
        * ^extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace"
        * ^extension.valueUri = "urn:hl7-org:sdtc"
        * ^requirements = "This patient MAY contain zero or more [0..*] sdtc:ethnicGroupCode, which SHALL be selected from ValueSet Detailed Ethnicity urn:oid:2.16.840.1.114222.4.11.877 DYNAMIC (CONF:1198-32901)."
      * guardian 0..*
        * ^requirements = "This patient MAY contain zero or more [0..*] guardian (CONF:1198-5325)."
        * code 0..1
        * code from $2.16.840.1.113883.11.20.12.1 (required)
          * ^requirements = "The guardian, if present, SHOULD contain zero or one [0..1] code, which SHALL be selected from ValueSet Personal And Legal Relationship Role Type urn:oid:2.16.840.1.113883.11.20.12.1 DYNAMIC (CONF:1198-5326)."
        * addr 0..*
        * addr only USRealmAddressADUSFIELDED
          * ^requirements = "The guardian, if present, SHOULD contain zero or more [0..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1198-5359)."
        * telecom 0..*
          * ^requirements = "The guardian, if present, SHOULD contain zero or more [0..*] telecom (CONF:1198-5382)."
          * use 0..1
          * use from $2.16.840.1.113883.11.20.9.20 (required)
            * ^requirements = "The telecom, if present, SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) urn:oid:2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1198-7993)."
        * guardianPerson 1..1
          * ^requirements = "The guardian, if present, SHALL contain exactly one [1..1] guardianPerson (CONF:1198-5385)."
          * name 1..*
          * name only USRealmPersonNamePNUSFIELDED
            * ^requirements = "This guardianPerson SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1198-5386)."
      * birthplace 0..1
        * ^requirements = "This patient MAY contain zero or one [0..1] birthplace (CONF:1198-5395)."
        * place 1..1
          * ^requirements = "The birthplace, if present, SHALL contain exactly one [1..1] place (CONF:1198-5396)."
          * addr 1..1
            * obeys 1198-5402 and 1198-5403
            * ^requirements = "This place SHALL contain exactly one [1..1] addr (CONF:1198-5397)."
            * country 0..1
            * country from $2.16.840.1.113883.3.88.12.80.63 (required)
              * ^requirements = "This addr SHOULD contain zero or one [0..1] country, which SHALL be selected from ValueSet Country urn:oid:2.16.840.1.113883.3.88.12.80.63 DYNAMIC (CONF:1198-5404)."
      * languageCommunication 0..*
        * ^requirements = "This patient SHOULD contain zero or more [0..*] languageCommunication (CONF:1198-5406)."
        * languageCode 1..1
        * languageCode from $2.16.840.1.113883.1.11.11526 (required)
          * ^requirements = "The languageCommunication, if present, SHALL contain exactly one [1..1] languageCode, which SHALL be selected from ValueSet Language urn:oid:2.16.840.1.113883.1.11.11526 DYNAMIC (CONF:1198-5407)."
        * modeCode 0..1
        * modeCode from $2.16.840.1.113883.1.11.12249 (required)
          * ^requirements = "The languageCommunication, if present, MAY contain zero or one [0..1] modeCode, which SHALL be selected from ValueSet LanguageAbilityMode urn:oid:2.16.840.1.113883.1.11.12249 DYNAMIC (CONF:1198-5409)."
        * proficiencyLevelCode 0..1
        * proficiencyLevelCode from $2.16.840.1.113883.1.11.12199 (required)
          * ^requirements = "The languageCommunication, if present, SHOULD contain zero or one [0..1] proficiencyLevelCode, which SHALL be selected from ValueSet LanguageAbilityProficiency urn:oid:2.16.840.1.113883.1.11.12199 DYNAMIC (CONF:1198-9965)."
        * preferenceInd 0..1
          * ^requirements = "The languageCommunication, if present, SHOULD contain zero or one [0..1] preferenceInd (CONF:1198-5414)."
    * providerOrganization 0..1
      * ^requirements = "This patientRole MAY contain zero or one [0..1] providerOrganization (CONF:1198-5416)."
      * id 1..*
        * ^requirements = "The providerOrganization, if present, SHALL contain at least one [1..*] id (CONF:1198-5417)."
        * root 0..1
        * root = "2.16.840.1.113883.4.6"
          * ^requirements = "Such ids SHOULD contain zero or one [0..1] @root=\"2.16.840.1.113883.4.6\" National Provider Identifier (CONF:1198-16820)."
      * name 1..*
        * ^requirements = "The providerOrganization, if present, SHALL contain at least one [1..*] name (CONF:1198-5419)."
      * telecom 1..*
        * ^requirements = "The providerOrganization, if present, SHALL contain at least one [1..*] telecom (CONF:1198-5420)."
        * use 0..1
        * use from $2.16.840.1.113883.11.20.9.20 (required)
          * ^requirements = "Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) urn:oid:2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1198-7994)."
      * addr 1..*
      * addr only USRealmAddressADUSFIELDED
        * ^requirements = "The providerOrganization, if present, SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1198-5422)."
* author 1..*
  * ^short = "The author element represents the creator of the clinical document.  The author may be a device or a person."
  * ^requirements = "SHALL contain at least one [1..*] author (CONF:1198-5444)."
  * time 1..1
  * time only USRealmDateandTimeDTMUSFIELDED
    * ^requirements = "Such authors SHALL contain exactly one [1..1] US Realm Date and Time (DTM.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.4) (CONF:1198-5445)."
  * assignedAuthor 1..1
    * obeys 1198-16790
    * ^requirements = "Such authors SHALL contain exactly one [1..1] assignedAuthor (CONF:1198-5448)."
    * id obeys 1198-5449
      * ^slicing.discriminator[0].type = #value
      * ^slicing.discriminator[=].path = "root"
      * ^slicing.rules = #open
    * id contains id1 0..1
    * id[id1] ^requirements = "This assignedAuthor SHOULD contain zero or one [0..1] id (CONF:1198-32882) such that it"
      * nullFlavor 0..1
      * nullFlavor = #UNK
        * ^short = "If id with @root=\"2.16.840.1.113883.4.6\" National Provider Identifier is unknown then"
        * ^requirements = "MAY contain zero or one [0..1] @nullFlavor=\"UNK\" Unknown (CodeSystem: HL7NullFlavor urn:oid:2.16.840.1.113883.5.1008) (CONF:1198-32883)."
      * root 1..1
      * root = "2.16.840.1.113883.4.6"
        * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.4.6\" National Provider Identifier (CONF:1198-32884)."
      * extension 0..1
        * ^requirements = "SHOULD contain zero or one [0..1] @extension (CONF:1198-32885)."
    * code 0..1
      * ^short = "Only if this assignedAuthor is an assignedPerson should the assignedAuthor contain a code."
      * ^requirements = "This assignedAuthor SHOULD contain zero or one [0..1] code (CONF:1198-16787)."
      * code 1..1
      * code from $2.16.840.1.114222.4.11.1066 (preferred)
        * ^requirements = "The code, if present, SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy urn:oid:2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1198-16788)."
    * addr 1..*
    * addr only USRealmAddressADUSFIELDED
      * ^requirements = "This assignedAuthor SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1198-5452)."
    * telecom 1..*
      * ^requirements = "This assignedAuthor SHALL contain at least one [1..*] telecom (CONF:1198-5428)."
      * use 0..1
      * use from $2.16.840.1.113883.11.20.9.20 (required)
        * ^requirements = "Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) urn:oid:2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1198-7995)."
    * assignedPerson 0..1
      * ^requirements = "This assignedAuthor SHOULD contain zero or one [0..1] assignedPerson (CONF:1198-5430)."
      * name 1..*
      * name only USRealmPersonNamePNUSFIELDED
        * ^requirements = "The assignedPerson, if present, SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1198-16789)."
    * assignedAuthoringDevice 0..1
      * ^requirements = "This assignedAuthor SHOULD contain zero or one [0..1] assignedAuthoringDevice (CONF:1198-16783)."
      * manufacturerModelName 1..1
        * ^requirements = "The assignedAuthoringDevice, if present, SHALL contain exactly one [1..1] manufacturerModelName (CONF:1198-16784)."
      * softwareName 1..1
        * ^requirements = "The assignedAuthoringDevice, if present, SHALL contain exactly one [1..1] softwareName (CONF:1198-16785)."
* dataEnterer 0..1
  * ^short = "The dataEnterer element represents the person who transferred the content, written or dictated, into the clinical document. To clarify, an author provides the content found within the header or body of a document, subject to their own interpretation; a dataEnterer adds an author's information to the electronic system."
  * ^requirements = "MAY contain zero or one [0..1] dataEnterer (CONF:1198-5441)."
  * assignedEntity 1..1
    * ^requirements = "The dataEnterer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1198-5442)."
    * id 1..*
      * ^requirements = "This assignedEntity SHALL contain at least one [1..*] id (CONF:1198-5443)."
      * root 0..1
      * root = "2.16.840.1.113883.4.6"
        * ^requirements = "Such ids SHOULD contain zero or one [0..1] @root=\"2.16.840.1.113883.4.6\" National Provider Identifier (CONF:1198-16821)."
    * code 0..1
    * code from $2.16.840.1.114222.4.11.1066 (preferred)
      * ^requirements = "This assignedEntity MAY contain zero or one [0..1] code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy urn:oid:2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1198-32173)."
    * addr 1..*
    * addr only USRealmAddressADUSFIELDED
      * ^requirements = "This assignedEntity SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1198-5460)."
    * telecom 1..*
      * ^requirements = "This assignedEntity SHALL contain at least one [1..*] telecom (CONF:1198-5466)."
      * use 0..1
      * use from $2.16.840.1.113883.11.20.9.20 (required)
        * ^requirements = "Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) urn:oid:2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1198-7996)."
    * assignedPerson 1..1
      * ^requirements = "This assignedEntity SHALL contain exactly one [1..1] assignedPerson (CONF:1198-5469)."
      * name 1..*
      * name only USRealmPersonNamePNUSFIELDED
        * ^requirements = "This assignedPerson SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1198-5470)."
* informant ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "relatedEntity"
  * ^slicing.rules = #open
  * ^short = "The informant element describes an information source (who is not a provider) for any content within the clinical document. This informant would be used when the source of information has a personal relationship with the patient or is the patient."
* informant contains
    informant1 0..* and
    informant2 0..*
* informant[informant1] ^short = "The informant element describes an information source for any content within the clinical document. This informant is constrained for use when the source of information is an assigned health care provider for the patient."
  * ^requirements = "MAY contain zero or more [0..*] informant (CONF:1198-8001) such that it"
  * assignedEntity 1..1
    * ^requirements = "SHALL contain exactly one [1..1] assignedEntity (CONF:1198-8002)."
    * id 1..*
      * obeys 1198-9946
      * ^requirements = "This assignedEntity SHALL contain at least one [1..*] id (CONF:1198-9945)."
    * code 0..1
    * code from $2.16.840.1.114222.4.11.1066 (preferred)
      * ^requirements = "This assignedEntity MAY contain zero or one [0..1] code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy urn:oid:2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1198-32174)."
    * addr 1..*
    * addr only USRealmAddressADUSFIELDED
      * ^requirements = "This assignedEntity SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1198-8220)."
    * assignedPerson 1..1
      * ^requirements = "This assignedEntity SHALL contain exactly one [1..1] assignedPerson (CONF:1198-8221)."
      * name 1..*
      * name only USRealmPersonNamePNUSFIELDED
        * ^requirements = "This assignedPerson SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1198-8222)."
* informant[informant2] ^requirements = "MAY contain zero or more [0..*] informant (CONF:1198-31355) such that it"
  * relatedEntity 1..1
    * ^requirements = "SHALL contain exactly one [1..1] relatedEntity (CONF:1198-31356)."
* custodian 1..1
  * ^short = "The custodian element represents the organization that is in charge of maintaining and is entrusted with the care of the document.\n\nThere is only one custodian per CDA document. Allowing that a CDA document may not represent the original form of the authenticated document, the custodian represents the steward of the original source document. The custodian may be the document originator, a health information exchange, or other responsible party."
  * ^requirements = "SHALL contain exactly one [1..1] custodian (CONF:1198-5519)."
  * assignedCustodian 1..1
    * ^requirements = "This custodian SHALL contain exactly one [1..1] assignedCustodian (CONF:1198-5520)."
    * representedCustodianOrganization 1..1
      * ^requirements = "This assignedCustodian SHALL contain exactly one [1..1] representedCustodianOrganization (CONF:1198-5521)."
      * id 1..*
        * ^requirements = "This representedCustodianOrganization SHALL contain at least one [1..*] id (CONF:1198-5522)."
        * root 0..1
        * root = "2.16.840.1.113883.4.6"
          * ^requirements = "Such ids SHOULD contain zero or one [0..1] @root=\"2.16.840.1.113883.4.6\" National Provider Identifier (CONF:1198-16822)."
      * name 1..1
        * ^requirements = "This representedCustodianOrganization SHALL contain exactly one [1..1] name (CONF:1198-5524)."
      * telecom 1..1
        * ^requirements = "This representedCustodianOrganization SHALL contain exactly one [1..1] telecom (CONF:1198-5525)."
        * use 0..1
        * use from $2.16.840.1.113883.11.20.9.20 (required)
          * ^requirements = "This telecom SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) urn:oid:2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1198-7998)."
      * addr 1..1
      * addr only USRealmAddressADUSFIELDED
        * ^requirements = "This representedCustodianOrganization SHALL contain exactly one [1..1] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1198-5559)."
* informationRecipient 0..*
  * ^short = "The informationRecipient element records the intended recipient of the information at the time the document was created. In cases where the intended recipient of the document is the patient's health chart, set the receivedOrganization to the scoping organization for that chart."
  * ^requirements = "MAY contain zero or more [0..*] informationRecipient (CONF:1198-5565)."
  * intendedRecipient 1..1
    * ^requirements = "The informationRecipient, if present, SHALL contain exactly one [1..1] intendedRecipient (CONF:1198-5566)."
    * id 0..*
      * ^requirements = "This intendedRecipient MAY contain zero or more [0..*] id (CONF:1198-32399)."
    * informationRecipient 0..1
      * ^requirements = "This intendedRecipient MAY contain zero or one [0..1] informationRecipient (CONF:1198-5567)."
      * name 1..*
      * name only USRealmPersonNamePNUSFIELDED
        * ^requirements = "The informationRecipient, if present, SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1198-5568)."
    * receivedOrganization 0..1
      * ^requirements = "This intendedRecipient MAY contain zero or one [0..1] receivedOrganization (CONF:1198-5577)."
      * name 1..1
        * ^requirements = "The receivedOrganization, if present, SHALL contain exactly one [1..1] name (CONF:1198-5578)."
* legalAuthenticator 0..1
  * ^short = "The legalAuthenticator identifies the single person legally responsible for the document and must be present if the document has been legally authenticated. A clinical document that does not contain this element has not been legally authenticated.\n\nThe act of legal authentication requires a certain privilege be granted to the legal authenticator depending upon local policy. Based on local practice, clinical documents may be released before legal authentication.  \n\nAll clinical documents have the potential for legal authentication, given the appropriate credentials.\n\nLocal policies MAY choose to delegate the function of legal authentication to a device or system that generates the clinical document. In these cases, the legal authenticator is a person accepting responsibility for the document, not the generating device or system.\n\nNote that the legal authenticator, if present, must be a person."
  * ^requirements = "SHOULD contain zero or one [0..1] legalAuthenticator (CONF:1198-5579)."
  * time 1..1
  * time only USRealmDateandTimeDTMUSFIELDED
    * ^requirements = "The legalAuthenticator, if present, SHALL contain exactly one [1..1] US Realm Date and Time (DTM.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.4) (CONF:1198-5580)."
  * signatureCode 1..1
    * ^requirements = "The legalAuthenticator, if present, SHALL contain exactly one [1..1] signatureCode (CONF:1198-5583)."
    * code 1..1
    * code = "S"
      * ^requirements = "This signatureCode SHALL contain exactly one [1..1] @code=\"S\" (CodeSystem: HL7ParticipationSignature urn:oid:2.16.840.1.113883.5.89 STATIC) (CONF:1198-5584)."
  * signatureText 0..1
    * ^extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace"
    * ^extension.valueUri = "urn:hl7-org:sdtc"
    * ^label = "The signature can be represented either inline or by reference according to the ED data type. Typical cases for CDA are:\n1) Electronic signature: this attribute can represent virtually any electronic signature scheme.\n2) Digital signature: this attribute can represent digital signatures by reference to a signature data block that is constructed in accordance to a digital signature standard, such as XML-DSIG, PKCS#7, PGP, etc.\n"
    * ^short = "The signature can be represented either inline or by reference according to the ED data type. Typical cases for CDA are:\n1) Electronic signature: this attribute can represent virtually any electronic signature scheme.\n2) Digital signature: this attribute can represent digital signatures by reference to a signature data block that is constructed in accordance to a digital signature standard, such as XML-DSIG, PKCS#7, PGP, etc.\n\n\nundefined"
    * ^requirements = "The legalAuthenticator, if present, MAY contain zero or one [0..1] sdtc:signatureText (CONF:1198-30810). Note: The signature can be represented either inline or by reference according to the ED data type. Typical cases for CDA are: 1) Electronic signature: this attribute can represent virtually any electronic signature scheme. 2) Digital signature: this attribute can represent digital signatures by reference to a signature data block that is constructed in accordance to a digital signature standard, such as XML-DSIG, PKCS#7, PGP, etc."
  * assignedEntity 1..1
    * ^requirements = "The legalAuthenticator, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1198-5585)."
    * id 1..*
      * ^requirements = "This assignedEntity SHALL contain at least one [1..*] id (CONF:1198-5586)."
      * root 0..1
      * root = "2.16.840.1.113883.4.6"
        * ^requirements = "Such ids MAY contain zero or one [0..1] @root=\"2.16.840.1.113883.4.6\" National Provider Identifier (CONF:1198-16823)."
    * code 0..1
    * code from $2.16.840.1.114222.4.11.1066 (preferred)
      * ^requirements = "This assignedEntity MAY contain zero or one [0..1] code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy urn:oid:2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1198-17000)."
    * addr 1..*
    * addr only USRealmAddressADUSFIELDED
      * ^requirements = "This assignedEntity SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1198-5589)."
    * telecom 1..*
      * ^requirements = "This assignedEntity SHALL contain at least one [1..*] telecom (CONF:1198-5595)."
      * use 0..1
      * use from $2.16.840.1.113883.11.20.9.20 (required)
        * ^requirements = "Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) urn:oid:2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1198-7999)."
    * assignedPerson 1..1
      * ^requirements = "This assignedEntity SHALL contain exactly one [1..1] assignedPerson (CONF:1198-5597)."
      * name 1..*
      * name only USRealmPersonNamePNUSFIELDED
        * ^requirements = "This assignedPerson SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1198-5598)."
* authenticator ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "signatureCode"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "assignedEntity"
  * ^slicing.rules = #open
  * ^short = "The authenticator identifies a participant or participants who attest to the accuracy of the information in the document."
* authenticator contains authenticator1 0..*
* authenticator[authenticator1] ^requirements = "MAY contain zero or more [0..*] authenticator (CONF:1198-5607) such that it"
  * time 1..1
  * time only USRealmDateandTimeDTMUSFIELDED
    * ^requirements = "SHALL contain exactly one [1..1] US Realm Date and Time (DTM.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.4) (CONF:1198-5608)."
  * signatureCode 1..1
    * ^requirements = "SHALL contain exactly one [1..1] signatureCode (CONF:1198-5610)."
    * code 1..1
    * code = "S"
      * ^requirements = "This signatureCode SHALL contain exactly one [1..1] @code=\"S\" (CodeSystem: HL7ParticipationSignature urn:oid:2.16.840.1.113883.5.89 STATIC) (CONF:1198-5611)."
  * signatureText 0..1
    * ^extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace"
    * ^extension.valueUri = "urn:hl7-org:sdtc"
    * ^label = "The signature can be represented either inline or by reference according to the ED data type. Typical cases for CDA are:\n1) Electronic signature: this attribute can represent virtually any electronic signature scheme.\n2) Digital signature: this attribute can represent digital signatures by reference to a signature data block that is constructed in accordance to a digital signature standard, such as XML-DSIG, PKCS#7, PGP, etc.\n"
    * ^short = "The signature can be represented either inline or by reference according to the ED data type. Typical cases for CDA are:\n1) Electronic signature: this attribute can represent virtually any electronic signature scheme.\n2) Digital signature: this attribute can represent digital signatures by reference to a signature data block that is constructed in accordance to a digital signature standard, such as XML-DSIG, PKCS#7, PGP, etc.\n\n\nundefined"
    * ^requirements = "MAY contain zero or one [0..1] sdtc:signatureText (CONF:1198-30811)."
  * assignedEntity 1..1
    * ^requirements = "SHALL contain exactly one [1..1] assignedEntity (CONF:1198-5612)."
    * id 1..*
      * ^requirements = "This assignedEntity SHALL contain at least one [1..*] id (CONF:1198-5613)."
      * root 0..1
      * root = "2.16.840.1.113883.4.6"
        * ^requirements = "Such ids SHOULD contain zero or one [0..1] @root=\"2.16.840.1.113883.4.6\" National Provider Identifier  (CONF:1198-16824)."
    * code 0..1
      * ^requirements = "This assignedEntity MAY contain zero or one [0..1] code (CONF:1198-16825)."
      * code 0..1
      * code from $2.16.840.1.114222.4.11.1066 (preferred)
        * ^requirements = "The code, if present, MAY contain zero or one [0..1] @code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy urn:oid:2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1198-16826)."
    * addr 1..*
    * addr only USRealmAddressADUSFIELDED
      * ^requirements = "This assignedEntity SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1198-5616)."
    * telecom 1..*
      * ^requirements = "This assignedEntity SHALL contain at least one [1..*] telecom (CONF:1198-5622)."
      * use 0..1
      * use from $2.16.840.1.113883.11.20.9.20 (required)
        * ^requirements = "Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) urn:oid:2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1198-8000)."
    * assignedPerson 1..1
      * ^requirements = "This assignedEntity SHALL contain exactly one [1..1] assignedPerson (CONF:1198-5624)."
      * name 1..*
      * name only USRealmPersonNamePNUSFIELDED
        * ^requirements = "This assignedPerson SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1198-5625)."
* participant ^slicing.rules = #open
  * ^short = "The participant element identifies supporting entities, including parents, relatives, caregivers, insurance policyholders, guarantors, and others related in some way to the patient. \n\nA supporting person or organization is an individual or an organization with a relationship to the patient. A supporting person who is playing multiple roles would be recorded in multiple participants (e.g., emergency contact and next-of-kin)."
* participant contains participant1 0..*
* participant[participant1] obeys 1198-10006 and 1198-10007
  * ^requirements = "MAY contain zero or more [0..*] participant (CONF:1198-10003) such that it"
  * time 0..1
    * ^requirements = "MAY contain zero or one [0..1] time (CONF:1198-10004)."
* inFulfillmentOf 0..*
  * ^short = "The inFulfillmentOf element represents orders that are fulfilled by this document such as a radiologists' report of an x-ray."
  * ^requirements = "MAY contain zero or more [0..*] inFulfillmentOf (CONF:1198-9952)."
  * order 1..1
    * ^requirements = "The inFulfillmentOf, if present, SHALL contain exactly one [1..1] order (CONF:1198-9953)."
    * id 1..*
      * ^requirements = "This order SHALL contain at least one [1..*] id (CONF:1198-9954)."
* documentationOf 0..*
  * ^requirements = "MAY contain zero or more [0..*] documentationOf (CONF:1198-14835)."
  * serviceEvent 1..1
    * ^short = "A serviceEvent represents the main act being documented, such as a colonoscopy or a cardiac stress study. In a provision of healthcare serviceEvent, the care providers, PCP, or other longitudinal providers, are recorded within the serviceEvent. If the document is about a single encounter, the providers associated can be recorded in the componentOf/encompassingEncounter template."
    * ^requirements = "The documentationOf, if present, SHALL contain exactly one [1..1] serviceEvent (CONF:1198-14836)."
    * effectiveTime 1..1
      * ^requirements = "This serviceEvent SHALL contain exactly one [1..1] effectiveTime (CONF:1198-14837)."
      * low 1..1
        * ^requirements = "This effectiveTime SHALL contain exactly one [1..1] low (CONF:1198-14838)."
    * performer 0..*
      * ^short = "The performer participant represents clinicians who actually and principally carry out the serviceEvent. In a transfer of care this represents the healthcare providers involved in the current or pertinent historical care of the patient. Preferably, the patient's key healthcare care team members would be listed, particularly their primary physician and any active consulting physicians, therapists, and counselors."
      * ^requirements = "This serviceEvent SHOULD contain zero or more [0..*] performer (CONF:1198-14839)."
      * typeCode 1..1
      * typeCode from $2.16.840.1.113883.1.11.19601 (required)
        * ^requirements = "The performer, if present, SHALL contain exactly one [1..1] @typeCode, which SHALL be selected from ValueSet x_ServiceEventPerformer urn:oid:2.16.840.1.113883.1.11.19601 STATIC (CONF:1198-14840)."
      * functionCode 0..1
        * ^requirements = "The performer, if present, MAY contain zero or one [0..1] functionCode (CONF:1198-16818)."
        * code 0..1
        * code from $2.16.840.1.113762.1.4.1099.30 (preferred)
          * ^requirements = "The functionCode, if present, SHOULD contain zero or one [0..1] @code, which SHOULD be selected from ValueSet Care Team Member Function urn:oid:2.16.840.1.113762.1.4.1099.30 DYNAMIC (CONF:1198-32889)."
      * assignedEntity 1..1
        * ^requirements = "The performer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1198-14841)."
        * id 1..*
          * ^requirements = "This assignedEntity SHALL contain at least one [1..*] id (CONF:1198-14846)."
          * root 0..1
          * root = "2.16.840.1.113883.4.6"
            * ^requirements = "Such ids SHOULD contain zero or one [0..1] @root=\"2.16.840.1.113883.4.6\" National Provider Identifier (CONF:1198-14847)."
        * code 0..1
        * code from $2.16.840.1.114222.4.11.1066 (preferred)
          * ^requirements = "This assignedEntity SHOULD contain zero or one [0..1] code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy urn:oid:2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1198-14842)."
* authorization ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "consent"
  * ^slicing.rules = #open
  * ^short = "The authorization element represents information about the patient's consent.\n\nThe type of consent is conveyed in consent/code. Consents in the header have been finalized (consent/statusCode must equal Completed) and should be on file. This specification does not address how 'Privacy Consent' is represented, but does not preclude the inclusion of 'Privacy Consent'.\n\nThe authorization consent is used for referring to consents that are documented elsewhere in the EHR or medical record for a health condition and/or treatment that is described in the CDA document."
* authorization contains authorization1 0..*
* authorization[authorization1] ^requirements = "MAY contain zero or more [0..*] authorization (CONF:1198-16792) such that it"
  * consent 1..1
    * ^requirements = "SHALL contain exactly one [1..1] consent (CONF:1198-16793)."
    * id 0..*
      * ^requirements = "This consent MAY contain zero or more [0..*] id (CONF:1198-16794)."
    * code 0..1
      * ^label = "The type of consent (e.g., a consent to perform the related serviceEvent) is conveyed in consent/code."
      * ^short = "The type of consent (e.g., a consent to perform the related serviceEvent) is conveyed in consent/code."
      * ^requirements = "This consent MAY contain zero or one [0..1] code (CONF:1198-16795)."
    * statusCode 1..1
      * ^requirements = "This consent SHALL contain exactly one [1..1] statusCode (CONF:1198-16797)."
      * code 1..1
        * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1198-16798)."
* componentOf 0..1
  * ^short = "The encompassing encounter represents the setting of the clinical encounter during which the document act(s) or ServiceEvent(s) occurred. In order to represent providers associated with a specific encounter, they are recorded within the encompassingEncounter as participants. In a CCD, the encompassingEncounter may be used when documenting a specific encounter and its participants. All relevant encounters in a CCD may be listed in the encounters section."
  * ^requirements = "MAY contain zero or one [0..1] componentOf (CONF:1198-9955)."
  * encompassingEncounter 1..1
    * ^requirements = "The componentOf, if present, SHALL contain exactly one [1..1] encompassingEncounter (CONF:1198-9956)."
    * id 1..*
      * ^requirements = "This encompassingEncounter SHALL contain at least one [1..*] id (CONF:1198-9959)."
    * effectiveTime 1..1
      * ^requirements = "This encompassingEncounter SHALL contain exactly one [1..1] effectiveTime (CONF:1198-9958)."

Invariant: 1198-9991
Description: "This id **SHALL** be a globally unique identifier for the document (CONF:1198-9991)."
Severity: #warning

Invariant: 1198-9992
Description: "This code **SHALL** specify the particular kind of document (e.g., History and Physical, Discharge Summary, Progress Note) (CONF:1198-9992)."
Severity: #error

Invariant: 1198-32948
Description: "This code **SHALL** be drawn from the LOINC document type ontology (LOINC codes where SCALE = DOC) (CONF:1198-32948)."
Severity: #error

Invariant: 1198-6380
Description: "If  setId is present versionNumber **SHALL** be present (CONF:1198-6380)."
Severity: #error

Invariant: 1198-6387
Description: "If versionNumber is present setId **SHALL** be present (CONF:1198-6387)."
Severity: #error

Invariant: 1198-5299
Description: "**SHALL** be precise to year (CONF:1198-5299)."
Severity: #error

Invariant: 1198-5300
Description: "**SHOULD** be precise to day (CONF:1198-5300)."
Severity: #warning

Invariant: 1198-32418
Description: """**MAY** be precise to the minute (CONF:1198-32418).
For cases where information about newborn's time of birth needs to be captured."""
Severity: #warning

Invariant: 1198-31347
Description: "If sdtc:raceCode is present, then the patient SHALL contain [1..1] raceCode (CONF:1198-31347)."
Severity: #error

Invariant: 1198-5402
Description: "If country is US, this addr **SHALL** contain exactly one [1..1] state, which **SHALL** be selected from ValueSet StateValueSet 2.16.840.1.113883.3.88.12.80.1 *DYNAMIC* (CONF:1198-5402). Note: A nullFlavor of ' UNK' may be used if the state is unknown."
Severity: #warning

Invariant: 1198-5403
Description: "If country is US, this addr **MAY** contain zero or one [0..1] postalCode, which **SHALL** be selected from ValueSet PostalCode urn:oid:2.16.840.1.113883.3.88.12.80.2 *DYNAMIC* (CONF:1198-5403)."
Severity: #warning

Invariant: 1198-16790
Description: "There **SHALL** be exactly one assignedAuthor/assignedPerson or exactly one assignedAuthor/assignedAuthoringDevice (CONF:1198-16790)."
Severity: #error

Invariant: 1198-5449
Description: "If this assignedAuthor is not an assignedPerson, this assignedAuthor SHALL contain at least one [1..*] id (CONF:1198-5449)."
Severity: #undefined

Invariant: 1198-9946
Description: "If assignedEntity/id is a provider then this id, **SHOULD** include zero or one [0..1] id where id/@root =\"2.16.840.1.113883.4.6\" National Provider Identifier (CONF:1198-9946)."
Severity: #warning

Invariant: 1198-10006
Description: "**SHALL** contain associatedEntity/associatedPerson *AND/OR* associatedEntity/scopingOrganization (CONF:1198-10006)."
Severity: #error

Invariant: 1198-10007
Description: "When participant/@typeCode is *IND*, associatedEntity/@classCode **SHOULD** be selected from ValueSet 2.16.840.1.113883.11.20.9.33 INDRoleclassCodes *STATIC 2011-09-30* (CONF:1198-10007)."
Severity: #warning