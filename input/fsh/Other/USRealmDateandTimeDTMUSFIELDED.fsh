Profile: USRealmDateandTimeDTMUSFIELDED
Parent: TS
Id: 2.16.840.1.113883.10.20.22.5.4
Title: "US Realm Date and Time (DTM.US.FIELDED)"
Description: """The US Realm Clinical Document Date and Time datatype flavor records date and time information. If no time zone offset is provided, you can make no assumption about time, unless you have made a local exchange agreement.

This data type uses the same rules as US Realm Date and Time (DT.US.FIELDED), but is used with elements having a datatype of TS."""
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.5.4"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* obeys 81-10127 and 81-10128 and 81-10129 and 81-10130

Invariant: 81-10127
Description: "**SHALL** be precise to the day (CONF:81-10127)."
Severity: #error

Invariant: 81-10128
Description: "**SHOULD** be precise to the minute (CONF:81-10128)."
Severity: #warning

Invariant: 81-10129
Description: "**MAY** be precise to the second (CONF:81-10129)."
Severity: #warning

Invariant: 81-10130
Description: "If more precise than day, **SHOULD** include time-zone offset (CONF:81-10130)."
Severity: #warning