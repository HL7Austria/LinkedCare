Extension: PatientNationality
Id: HL7at-PatientNationality
Title: "HL7 AT Nationality"
Description: "Nationality of a given patient" //extension is a generic field that allows to use ANY hl7 datatype

* value[x] 0..0
* extension contains code 0..1
* extension[code].value[x] only CodeableConcept
