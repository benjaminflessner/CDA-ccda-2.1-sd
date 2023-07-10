Profile: DiagnosticImagingReport
Parent: USRealmHeader
Id: 2.16.840.1.113883.10.20.22.1.5
Title: "Diagnostic Imaging Report"
Description: "A Diagnostic Imaging Report (DIR) is a document that contains a consulting specialist's interpretation of image data. It conveys the interpretation to the referring (ordering) physician and becomes part of the patient's medical record. It is for use in Radiology, Endoscopy, Cardiology, and other imaging specialties."
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.1.5:2015-08-01"
* ^publisher = "WaveOne Associates"
* ^contact.name = "Brett Marquard"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "4135496886"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "brett@waveoneassociates.com"
* ^contact.telecom[=].use = #work
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains secondary 1..1
* templateId[secondary] obeys 1198-32937
  * ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1198-8404) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.1.5"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.1.5\" (CONF:1198-10042)."
  * extension 1..1
  * extension = "2014-06-09"
    * ^requirements = "SHALL contain exactly one [1..1] @extension=\"2014-06-09\" (CONF:1198-32515)."
* id 1..1
  * ^requirements = "SHALL contain exactly one [1..1] id (CONF:1198-30932)."
  * root 1..1
    * obeys 1198-30934 and 1198-30935
    * ^requirements = "This id SHALL contain exactly one [1..1] @root (CONF:1198-30933)."
* code 1..1
  * ^short = "Preferred code is 18748-4 LOINC Diagnostic Imaging Report"
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-14833)."
  * code 1..1
  * code from $1.3.6.1.4.1.12009.10.2.5 (preferred)
    * ^requirements = "This code SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet LOINC Imaging Document Codes http://hl7.org/fhir/ccda/ValueSet/1.3.6.1.4.1.12009.10.2.5 DYNAMIC (CONF:1198-14834)."
* informant 0..0
  * ^requirements = "SHALL NOT contain [0..0] informant (CONF:1198-8410)."
* informationRecipient 0..*
  * obeys 1198-8412 and 1198-8413
  * ^requirements = "MAY contain zero or more [0..*] informationRecipient (CONF:1198-8411)."
* participant ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "ClinicalDocument.associatedEntity"
  * ^slicing.rules = #open
  * ^short = "If participant is present, the associatedEntity/associatedPerson element SHALL be present and SHALL represent the physician requesting the imaging procedure (the referring physician AssociatedEntity that is the target of ClincalDocument/participant@typeCode=REF)."
* participant[participant1] 0..1
  * ^requirements = "MAY contain zero or one [0..1] participant (CONF:1198-8414) such that it"
  * associatedEntity 1..1
    * ^requirements = "SHALL contain exactly one [1..1] associatedEntity (CONF:1198-31198)."
    * associatedPerson 1..1
      * ^requirements = "This associatedEntity SHALL contain exactly one [1..1] associatedPerson (CONF:1198-31199)."
      * name 1..1
      * name only USRealmPersonNamePNUSFIELDED
        * ^requirements = "This associatedPerson SHALL contain exactly one [1..1] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1198-31200)."
* inFulfillmentOf 0..*
  * ^short = "An inFulfillmentOf element represents the Placer Order that is either a group of orders (modeled as PlacerGroup in the Placer Order RMIM of the Orders & Observations domain) or a single order item (modeled as ObservationRequest in the same RMIM). This optionality reflects two major approaches to the grouping of procedures as implemented in the installed base of imaging information systems. These approaches differ in their handling of grouped procedures and how they are mapped to identifiers in the Digital Imaging and Communications in Medicine (DICOM) image and structured reporting data. The example of a CT examination covering chest, abdomen, and pelvis will be used in the discussion below. In the IHE Scheduled Workflow model, the Chest CT, Abdomen CT, and Pelvis CT each represent a Requested Procedure, and all three procedures are grouped under a single Filler Order. The Filler Order number maps directly to the DICOM Accession Number in the DICOM imaging and report data. A widely deployed alternative approach maps the requested procedure identifiers directly to the DICOM Accession Number. The Requested Procedure ID in such implementations may or may not be different from the Accession Number, but is of little identifying importance because there is only one Requested Procedure per Accession Number. There is no identifier that formally connects the requested procedures ordered in this group."
  * ^requirements = "MAY contain zero or more [0..*] inFulfillmentOf (CONF:1198-30936)."
  * order 1..1
    * ^requirements = "The inFulfillmentOf, if present, SHALL contain exactly one [1..1] order (CONF:1198-30937)."
    * id 1..*
      * ^label = "DICOM Accession Number in the DICOM imaging and report data"
      * ^short = "DICOM Accession Number in the DICOM imaging and report data"
      * ^requirements = "This order SHALL contain at least one [1..*] id (CONF:1198-30938)."
* documentationOf ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "ClinicalDocument.serviceEvent"
  * ^slicing.rules = #open
  * ^short = "Each serviceEvent indicates an imaging procedure that the provider describes and interprets in the content of the DIR. The main activity being described by this document is the interpretation of the imaging procedure. This is shown by setting the value of the @classCode attribute of the serviceEvent element to ACT, and indicating the duration over which care was provided in the effectiveTime element. Within each documentationOf element, there is one serviceEvent element. This event is the unit imaging procedure corresponding to a billable item. The type of imaging procedure may be further described in the serviceEvent/code element. This guide makes no specific recommendations about the vocabulary to use for describing this event. In IHE Scheduled Workflow environments, one serviceEvent/id element contains the DICOM Study Instance UID from the Modality Worklist, and the second serviceEvent/id element contains the DICOM Requested Procedure ID from the Modality Worklist. These two ids are in a single serviceEvent. The effectiveTime for the serviceEvent covers the duration of the imaging procedure being reported. This event should have one or more performers, which may participate at the same or different periods of time. Service events map to DICOM Requested Procedures. That is, serviceEvent/id is the ID of the Requested Procedure."
* documentationOf contains documentationOf1 1..1
  * serviceEvent 1..1
    * ^requirements = "SHALL contain exactly one [1..1] serviceEvent (CONF:1198-8431) such that it"
    * classCode 1..1
    * classCode = #ACT
      * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"ACT\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1198-8430)."
    * id 0..*
      * ^requirements = "SHOULD contain zero or more [0..*] id (CONF:1198-8418)."
    * code 1..1
      * obeys 1198-8420
      * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1198-8419)."
    * performer 0..*
    * performer only PhysicianReadingStudyPerformer
      * ^short = "The performer is the Physician Reading Study Performer defined in serviceEvent and is usually different from the attending physician. The reading physician interprets the images and evidence of the study (DICOM Definition)."
      * ^requirements = "SHOULD contain zero or more [0..*] Physician Reading Study Performer (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.6.2.1:2014-06-09) (CONF:1198-8422)."
* documentationOf[documentationOf1] ^requirements = "SHALL contain exactly one [1..1] documentationOf (CONF:1198-8416) such that it"
* relatedDocument 0..1
  * obeys 1198-8433
  * ^short = "A DIR may have three types of parent document: * A superseded version that the present document wholly replaces (typeCode = RPLC). DIRs may go through stages of revision prior to being legally authenticated. Such early stages may be drafts from transcription, those created by residents, or other preliminary versions. Policies not covered by this specification may govern requirements for retention of such earlier versions. Except for forensic purposes, the latest version in a chain of revisions represents the complete and current report. * An original version that the present document appends (typeCode = APND). When a DIR is legally authenticated, it can be amended by a separate addendum document that references the original. * A source document from which the present document is transformed (typeCode = XFRM). A DIR may be created by transformation from a DICOM Structured Report (SR) document or from another DIR. An example of the latter case is the creation of a derived document for inclusion of imaging results in a clinical document."
  * ^requirements = "MAY contain zero or one [0..1] relatedDocument (CONF:1198-8432)."
  * parentDocument 1..1
    * ^requirements = "The relatedDocument, if present, SHALL contain exactly one [1..1] parentDocument (CONF:1198-32089)."
    * id 1..1
      * obeys 1198-10031 and 1198-10032
      * ^requirements = "This parentDocument SHALL contain exactly one [1..1] id (CONF:1198-32090)."
* componentOf 0..1
  * ^short = "The id element of the encompassingEncounter represents the identifier for the encounter. When the diagnostic imaging procedure is performed in the context of a hospital stay or an outpatient visit for which there is an Encounter Number, that number should be present as the ID of the encompassingEncounter. The effectiveTime represents the time interval or point in time in which the encounter took place. The encompassing encounter might be that of the hospital or office visit in which the diagnostic imaging procedure was performed. If the effective time is unknown, a nullFlavor attribute can be used."
  * ^requirements = "MAY contain zero or one [0..1] componentOf (CONF:1198-30939)."
  * encompassingEncounter 1..1
    * ^short = "The id element of the encompassingEncounter represents the identifier for the encounter. When the diagnostic imaging procedure is performed in the context of a hospital stay or an outpatient visit for which there is an Encounter Number, that number should be present as the ID of the encompassingEncounter.\n\nThe effectiveTime represents the time interval or point in time in which the encounter took place. The encompassing encounter might be that of the hospital or office visit in which the diagnostic imaging procedure was performed. If the effective time is unknown, a nullFlavor attribute can be used."
    * ^requirements = "The componentOf, if present, SHALL contain exactly one [1..1] encompassingEncounter (CONF:1198-30940)."
    * id 1..*
      * obeys 1198-30942
      * ^requirements = "This encompassingEncounter SHALL contain at least one [1..*] id (CONF:1198-30941)."
    * effectiveTime 1..1
    * effectiveTime only USRealmDateandTimeDTUSFIELDED
      * ^requirements = "This encompassingEncounter SHALL contain exactly one [1..1] US Realm Date and Time (DT.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.3) (CONF:1198-30943)."
    * responsibleParty 0..1
      * ^requirements = "This encompassingEncounter MAY contain zero or one [0..1] responsibleParty (CONF:1198-30945)."
      * assignedEntity 1..1
        * obeys 1198-30947
        * ^requirements = "The responsibleParty, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1198-30946)."
    * encounterParticipant 0..1
    * encounterParticipant only PhysicianofRecordParticipant
      * ^requirements = "This encompassingEncounter SHOULD contain zero or one [0..1] Physician of Record Participant (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.6.2.2:2014-06-09) (CONF:1198-30948)."
* component 1..1
  * ^requirements = "SHALL contain exactly one [1..1] component (CONF:1198-14907)."
  * structuredBody 1..1
    * ^requirements = "This component SHALL contain exactly one [1..1] structuredBody (CONF:1198-30695)."
    * component ^slicing.discriminator[0].type = #value
      * ^slicing.discriminator[=].path = "ClinicalDocument.section"
      * ^slicing.rules = #open
    * component contains
        component1 1..1 and
        component2 0..1 and
        component3 0..*
      * section
        * subject 0..*
          * ^requirements = "This section MAY contain zero or more [0..*] subject (CONF:1198-31215) such that it"
          * relatedSubject 1..1
          * relatedSubject only FetusSubjectContext
            * ^requirements = "SHALL contain exactly one [1..1] Fetus Subject Context (identifier: urn:oid:2.16.840.1.113883.10.20.6.2.3) (CONF:1198-31216)."
        * author ^slicing.discriminator[0].type = #value
          * ^slicing.discriminator[=].path = "assignedAuthor"
          * ^slicing.rules = #open
          * ^short = "This author element is used when the author of a section is different from the author(s) listed in the Header"
        * author contains author1 0..*
        * author[author1] ^requirements = "This section MAY contain zero or more [0..*] author (CONF:1198-31217) such that it"
          * assignedAuthor 1..1
          * assignedAuthor only ObserverContext
            * ^requirements = "SHALL contain exactly one [1..1] Observer Context (identifier: urn:oid:2.16.840.1.113883.10.20.6.2.4) (CONF:1198-31218)."
        * entry contains
            textObs 0..* and
            codeObs 0..* and
            quantityObs 0..* and
            instanceObs 0..*
        * entry[textObs] ^requirements = "This section MAY contain zero or more [0..*] entry (CONF:1198-31357) such that it"
          * observation 1..1
          * observation only TextObservation
            * ^requirements = "SHALL contain exactly one [1..1] Text Observation (identifier: urn:oid:2.16.840.1.113883.10.20.6.2.12) (CONF:1198-31358)."
        * entry[codeObs] ^requirements = "This section MAY contain zero or more [0..*] entry (CONF:1198-31359) such that it"
          * observation 1..1
          * observation only CodeObservations
            * ^requirements = "SHALL contain exactly one [1..1] Code Observations (identifier: urn:oid:2.16.840.1.113883.10.20.6.2.13) (CONF:1198-31360)."
        * entry[quantityObs] ^requirements = "This section MAY contain zero or more [0..*] entry (CONF:1198-31361) such that it"
          * observation 1..1
          * observation only QuantityMeasurementObservation
            * ^requirements = "SHALL contain exactly one [1..1] Quantity Measurement Observation (identifier: urn:oid:2.16.840.1.113883.10.20.6.2.14) (CONF:1198-31362)."
        * entry[instanceObs] ^requirements = "This section MAY contain zero or more [0..*] entry (CONF:1198-31363) such that it"
          * observation 1..1
          * observation only SOPInstanceObservation
            * ^requirements = "SHALL contain exactly one [1..1] SOP Instance Observation (identifier: urn:oid:2.16.840.1.113883.10.20.6.2.8) (CONF:1198-31364)."
    * component[component1] ^requirements = "This structuredBody SHALL contain exactly one [1..1] component (CONF:1198-30696) such that it"
      * section 1..1
      * section only FindingsSectionDIR
        * ^requirements = "SHALL contain exactly one [1..1] Findings Section (DIR) (identifier: urn:oid:2.16.840.1.113883.10.20.6.1.2) (CONF:1198-30697)."
    * component[component2] ^requirements = "This structuredBody SHOULD contain zero or one [0..1] component (CONF:1198-30698) such that it"
      * section 1..1
      * section only DICOMObjectCatalogSectionDCM121181
        * obeys 1198-31206
        * ^requirements = "SHALL contain exactly one [1..1] DICOM Object Catalog Section - DCM 121181 (identifier: urn:oid:2.16.840.1.113883.10.20.6.1.1) (CONF:1198-30699)."
    * component[component3] ^requirements = "This structuredBody MAY contain zero or more [0..*] component (CONF:1198-31055) such that it"
      * section 1..1
        * obeys 1198-31211 and 1198-31212
        * ^requirements = "SHALL contain exactly one [1..1] section (CONF:1198-31056)."
        * code 1..1
          * ^short = "For sections listed in the DIR Section Type Codes table, the code element must contain a LOINC code or DCM code for sections that have no LOINC equivalent"
          * ^requirements = "This section SHALL contain exactly one [1..1] code (CONF:1198-31057)."
          * code 1..1
          * code from $2.16.840.1.113883.11.20.9.59 (preferred)
            * ^label = "The section/code SHOULD be selected from LOINC or DICOM for sections not listed in the DIR Section Type Codes table"
            * ^short = "The section/code SHOULD be selected from LOINC or DICOM for sections not listed in the DIR Section Type Codes table"
            * ^requirements = "This code SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet DIRSectionTypeCodes http://hl7.org/fhir/ccda/ValueSet/2.16.840.1.113883.11.20.9.59 DYNAMIC (CONF:1198-31207)."
        * title 0..1
          * ^short = "There is no equivalent to section/title in DICOM SR, so for a CDA to SR transformation, the section/code will be transferred and the title element will be dropped."
          * ^requirements = "This section SHOULD contain zero or one [0..1] title (CONF:1198-31058)."
        * text 0..1
          * obeys 1198-31060 and 1198-31061 and 1198-31062
          * ^requirements = "This section SHOULD contain zero or one [0..1] text (CONF:1198-31059)."
        * entry ^slicing.discriminator[0].type = #value
          * ^slicing.discriminator[=].path = "ClinicalDocument.section.structuredBody.component.section.entry"
          * ^slicing.rules = #open
        * entry[act] 0..*
          * ^short = "If the service context of a section is different from the value specified in documentationOf/serviceEvent, then the section SHALL contain one or more entries containing Procedure Context (templateId 2.16.840.1.113883.10.20.6.2.5), which will reset the context for any clinical statements nested within those elements"
          * ^requirements = "This section MAY contain zero or more [0..*] entry (CONF:1198-31213)."
          * act 1..1
          * act only ProcedureContext
            * ^requirements = "The entry, if present, SHALL contain exactly one [1..1] Procedure Context (identifier: urn:oid:2.16.840.1.113883.10.20.6.2.5) (CONF:1198-31214)."
        * component 0..*
          * obeys 1198-31210
          * ^requirements = "This section MAY contain zero or more [0..*] component (CONF:1198-31208)."

Invariant: 1198-32937
Description: "When asserting this templateId, all C-CDA 2.1 section and entry templates that had a previous version in C-CDA R1.1 **SHALL** include both the C-CDA 2.1 templateId and the C-CDA R1.1 templateId root without an extension. See C-CDA R2.1 Volume 1 - Design Considerations for additional detail (CONF:1198-32937)."
Severity: #error

Invariant: 1198-30934
Description: """The ClinicalDocument/id/@root attribute SHALL be a syntactically correct OID, and SHALL NOT be a UUID (CONF:1198-30934).
OIDs SHALL be represented in dotted decimal notation, where each decimal number is either 0 or starts with a nonzero digit. More formally, an OID SHALL be in the form of the regular expression: ([0-2])(.([1-9][0-9]*|0))+"""
Severity: #error

Invariant: 1198-30935
Description: "OIDs SHALL be no more than 64 characters in length (CONF:1198-30935)."
Severity: #error

Invariant: 1198-8412
Description: "The physician requesting the imaging procedure (ClinicalDocument/participant[@typeCode=REF]/associatedEntity), if present, **SHOULD** also be recorded as an informationRecipient, unless in the local setting another physician (such as the attending physician for an inpatient) is known to be the appropriate recipient of the report (CONF:1198-8412)."
Severity: #warning

Invariant: 1198-8413
Description: "When no referring physician is present, as in the case of self-referred screening examinations allowed by law, the intendedRecipient **MAY** be absent. The intendedRecipient **MAY** also be the health chart of the patient, in which case the receivedOrganization **SHALL** be the scoping organization of that chart (CONF:1198-8413)."
Severity: #warning

Invariant: 1198-8420
Description: "The value of serviceEvent/code **SHALL NOT** conflict with the ClininicalDocument/code. When transforming from DICOM SR documents that do not contain a procedure code, an appropriate nullFlavor **SHALL** be used on serviceEvent/code (CONF:1198-8420)."
Severity: #error

Invariant: 1198-8433
Description: "When a Diagnostic Imaging Report has been transformed from a DICOM SR document, relatedDocument/@typeCode **SHALL** be XFRM, and relatedDocument/parentDocument/id **SHALL** contain the SOP Instance UID of the original DICOM SR document (CONF:1198-8433)."
Severity: #warning

Invariant: 1198-10031
Description: "OIDs **SHALL** be represented in dotted decimal notation, where each decimal number is either 0 or starts with a nonzero digit. More formally, an OID **SHALL** be in the form of the regular expression: ([0-2])(.([1-9][0-9][*]|0))+ (CONF:1198-10031)."
Severity: #error

Invariant: 1198-10032
Description: "OIDs **SHALL** be no more than 64 characters in length (CONF:1198-10032)."
Severity: #error

Invariant: 1198-30942
Description: "In the case of transformed DICOM SR documents, an appropriate null flavor **MAY** be used if the id is unavailable (CONF:1198-30942)."
Severity: #warning

Invariant: 1198-30947
Description: "**SHOULD** contain zero or one [0..1] assignedPerson *OR* contain zero or one [0..1] representedOrganization (CONF:1198-30947)."
Severity: #warning

Invariant: 1198-31206
Description: "The DICOM Object Catalog section (templateId 2.16.840.1.113883.10.20.6.1.1), if present, **SHALL** be the first section in the document Body (CONF:1198-31206)."
Severity: #error

Invariant: 1198-31211
Description: "All sections defined in the DIR Section Type Codes table **SHALL** be top-level sections (CONF:1198-31211)."
Severity: #error

Invariant: 1198-31212
Description: "**SHALL** contain at least one text element or one or more component elements (CONF:1198-31212)."
Severity: #error

Invariant: 1198-31060
Description: "If clinical statements are present, the section/text **SHALL** represent faithfully all such statements and **MAY** contain additional text (CONF:1198-31060)."
Severity: #error

Invariant: 1198-31061
Description: "All text elements **SHALL** contain content. Text elements **SHALL** contain PCDATA or child elements (CONF:1198-31061)."
Severity: #error

Invariant: 1198-31062
Description: "The text elements (and their children) **MAY** contain Web Access to DICOM Persistent Object (WADO) references to DICOM objects by including a linkHtml element where @href is a valid WADO URL and the text content of linkHtml is the visible text of the hyperlink (CONF:1198-31062)."
Severity: #warning

Invariant: 1198-31210
Description: "**SHALL** contain child elements (CONF:1198-31210)."
Severity: #error