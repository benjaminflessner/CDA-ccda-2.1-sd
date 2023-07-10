Profile: ProcedureContext
Parent: $Act
Id: 2.16.840.1.113883.10.20.6.2.5
Title: "Procedure Context"
Description: "The ServiceEvent Procedure Context of the document header may be overridden in the CDA structured body if there is a need to refer to multiple imaging procedures or acts. The selection of the Procedure or Act entry from the clinical statement choice box depends on the nature of the imaging service that has been performed. The Procedure entry shall be used for image-guided interventions and minimally invasive imaging services, whereas the Act entry shall be used for diagnostic imaging services."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.6.2.5"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* obeys 81-9199
* classCode 1..1
* classCode = #ACT
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"ACT\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:81-26452)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:81-26453)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:81-9200) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.6.2.5"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.6.2.5\" (CONF:81-10530)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:81-9201)."
* effectiveTime 0..1
  * ^requirements = "SHOULD contain zero or one [0..1] effectiveTime (CONF:81-9203)."
  * value 1..1
    * ^requirements = "The effectiveTime, if present, SHALL contain exactly one [1..1] @value (CONF:81-17173)."

Invariant: 81-9199
Description: "Procedure Context SHALL be represented with the procedure or act elements depending on the nature of the procedure (CONF:81-9199)."
Severity: #warning