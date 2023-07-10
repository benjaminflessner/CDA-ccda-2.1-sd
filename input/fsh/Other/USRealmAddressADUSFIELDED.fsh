Profile: USRealmAddressADUSFIELDED
Parent: AD
Id: 2.16.840.1.113883.10.20.22.5.2
Title: "US Realm Address (AD.US.FIELDED)"
Description: "Reusable address template, for use in US Realm CDA Header."
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.5.2"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* obeys 81-7296
* use 0..1
* use from $2.16.840.1.113883.1.11.10637 (required)
  * ^short = "If addr/@nullFlavor is present, the remaining conformance statements *SHALL NOT* be enforced"
  * ^requirements = "SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet PostalAddressUse urn:oid:2.16.840.1.113883.1.11.10637 STATIC 2005-05-01 (CONF:81-7290)."
* country 0..1
* country from $2.16.840.1.113883.3.88.12.80.63 (required)
  * ^requirements = "SHOULD contain zero or one [0..1] country, which SHALL be selected from ValueSet Country urn:oid:2.16.840.1.113883.3.88.12.80.63 DYNAMIC (CONF:81-7295)."
* state 0..1
* state from $2.16.840.1.113883.3.88.12.80.1 (preferred)
  * obeys 81-10024
  * ^requirements = "SHOULD contain zero or one [0..1] state (ValueSet: StateValueSet urn:oid:2.16.840.1.113883.3.88.12.80.1 DYNAMIC) (CONF:81-7293)."
* city 1..1
  * ^requirements = "SHALL contain exactly one [1..1] city (CONF:81-7292)."
* postalCode 0..1
* postalCode from $2.16.840.1.113883.3.88.12.80.2 (preferred)
  * obeys 81-10025
  * ^requirements = "SHOULD contain zero or one [0..1] postalCode, which SHOULD be selected from ValueSet PostalCode urn:oid:2.16.840.1.113883.3.88.12.80.2 DYNAMIC (CONF:81-7294)."
* streetAddressLine 1..4
  * ^requirements = "SHALL contain at least one and not more than 4 streetAddressLine (CONF:81-7291)."

Invariant: 81-7296
Description: "**SHALL NOT** have mixed content except for white space (CONF:81-7296)."
Severity: #error

Invariant: 81-10024
Description: "If the country is US, the state element is required but SHOULD have @nullFlavor if the state is unknown. If country is not specified, it's assumed to be US. If country is something other than US, the state MAY be present but MAY be bound to different vocabularies (CONF:81-10024)."
Severity: #error

Invariant: 81-10025
Description: "If the country is US, the postalCode element is required but SHOULD have @nullFlavor if the postalCode is unknown. If country is not specified, it's assumed to be US. If country is something other than US, the postalCode MAY be present but MAY be bound to different vocabularies (CONF:81-10025)."
Severity: #error