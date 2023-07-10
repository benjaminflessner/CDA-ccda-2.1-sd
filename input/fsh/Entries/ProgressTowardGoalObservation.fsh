Profile: ProgressTowardGoalObservation
Parent: $Observation
Id: 2.16.840.1.113883.10.20.22.4.110
Title: "Progress Toward Goal Observation"
Description: """This template represents a patient's progress toward a goal. It can describe whether a goal has been achieved or not and can also describe movement a patient is making toward the achievement of a goal (e.g., "Goal not achieved - no discernible change", "Goal not achieved - progressing toward goal", "Goal not achieved - declining from goal").

In the Care Planning workflow, the judgment about how well the person is progressing towards the goal is based on the observations made about the status of the patient with respect to interventions performed in the pursuit of achieving that goal.

For example, an observation outcome of a blood oxygen saturation level of 95% is related to the goal of "Maintain Pulse Ox greater than 92" and in this case the Progress Toward Goal Observation template would record that the related goal has been achieved."""
* ^identifier.value = "urn:oid:2.16.840.1.113883.10.20.22.4.110"
* ^contact.name = "Gaye Dolin"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "714-744-4152"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "gaye.dolin@lantanagroup.com"
* ^contact.telecom[=].use = #work
* classCode 1..1
* classCode = #OBS
  * ^requirements = "SHALL contain exactly one [1..1] @classCode=\"OBS\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1098-31418)."
* moodCode 1..1
* moodCode = #EVN
  * ^requirements = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1098-31419)."
* templateId ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "root"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^requirements = "SHALL contain exactly one [1..1] templateId (CONF:1098-31420) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.110"
    * ^requirements = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.110\" (CONF:1098-31421)."
* id 1..*
  * ^requirements = "SHALL contain at least one [1..*] id (CONF:1098-31422)."
* code 1..1
  * ^requirements = "SHALL contain exactly one [1..1] code (CONF:1098-31423)."
  * code 1..1
  * code = "ASSERTION"
    * ^requirements = "This code SHALL contain exactly one [1..1] @code=\"ASSERTION\" Assertion (CONF:1098-31424)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.5.4"
    * ^requirements = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.5.4\" (CodeSystem: HL7ActCode urn:oid:2.16.840.1.113883.5.4) (CONF:1098-31425)."
* statusCode 1..1
  * ^requirements = "SHALL contain exactly one [1..1] statusCode (CONF:1098-31609)."
  * code 1..1
  * code = "completed"
    * ^requirements = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1098-31610)."
* value 1..1
* value only $CD
* value from $2.16.840.1.113883.11.20.9.55 (required)
  * ^requirements = "SHALL contain exactly one [1..1] value with @xsi:type=\"CD\", where the code SHALL be selected from ValueSet Goal Achievement urn:oid:2.16.840.1.113883.11.20.9.55 DYNAMIC (CONF:1098-31426)."