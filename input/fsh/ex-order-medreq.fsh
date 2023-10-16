Instance: Ex0101-inline-LINCAOrderItem-US001
InstanceOf: LINCAOrderMedicationRequest
Title: "Ex0101 US001 LINCAOrderMedicationRequest: Single Inline LINCAOrderMedicationRequest"
Description: "DGKP Susanne Allzeit, employed at mobile care facility 'Pflegedienst Immerdar' ordered a single dedication for her client. The LINCAOrderMedication Request is contained in the LINCARequestOrchestration."
Usage: #inline
* status = #unknown
* intent = #proposal
* medication.concept = $asp-liste#0031130  "Lasix 40 mg Tabletten"
* requester = Reference(urn:oid:2.999.40.0.34.1.1.3/ALLZEIT_BEREIT) "Susanne Allzeit (DGKP)"
* subject = Reference(Registered-Patient-Renate) 
* performer = Reference(urn:oid:1.2.40.0.34/2.999.40.0.34.3.1.1)  "Dr. Wibke Würm"
* informationSource = Reference(urn:oid:1.2.40.0.34/2.999.40.0.34.1.1.3) "Pflegedienst Immerdar"
* note[0].text = ""
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].text = "Take 1 pill daily" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].timing.repeat.boundsDuration = 14 #d
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 1 #100000073665 

Instance: Ex0102-Instance-LINCAOrderItem-US001
InstanceOf: LINCAOrderMedicationRequest
Title: "Ex0102 US001 LINCAOrderMedicationRequest: Systeminstance"
Description: "The Linked Care FHIR server, creates an instance from DGKP Susanne Allzeit's single medication order."
Usage: #example
* status = #active
* intent = #order
* meta
  * versionId = "1"
  * lastUpdated = "2023-10-12T10:23:18.7157042+00:00"
* id = "b8aad49741e74c36aeab76cada3ad1bc"
* meta.versionId = "1"
* meta.lastUpdated = "2023-10-12T10:23:18.7157042+00:00"
* supportingInformation[orderref] = Reference(Ex0100-LINCARequestOrchestration-US001)
* medication.concept = $asp-liste##0031130 "Lasix 40 mg Tabletten"
* subject = Reference(Registered-Patient-Renate) 
* informationSource
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.1.1.3"
  * display = "Pflegedienst Immerdar"
* requester
  * identifier
    * system = "urn:oid:2.999.40.0.34.1.1.3"
    * value = "ALLZEIT_BEREIT"
  * display = "DGKP Susanne Allzeit"
* performer
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.3.1.1"
  * display = "Dr. Wibke Würm"
* note[0].text = ""
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].text = "2 x 1 daily" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].timing.repeat.boundsDuration = 14 #d
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 2 #100000073665 


Instance: Ex0201-inline-LINCAOrderItem-US003-Item1
InstanceOf: LINCAOrderMedicationRequest
Title: "Ex0201 US003 LINCAOrderMedicationRequest: Inline 01"
Description: "First item that DGKP Walter Specht orders for a second patient in inpatient care. One medication request per patient and medication."
Usage: #inline
* status = #unknown
* intent = #proposal
* medication.concept = $asp-liste#0018589 "Effortil 7,5 mg/ml - Tropfen"
* subject = Reference(Registered-Patient-Guenter)
* informationSource
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.1.1.1"
  * display = "Haus Vogelsang"
* requester
  * identifier
    * system = "urn:oid:2.999.40.0.34.1.1.1"
    * value = "ECHT_SPECHT"
  * display = "DGKP Walter Specht"
* performer
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.3.1.3"
  * display = "Dr. Silvia Spitzmaus"
* note[0].text = "Station SUNFLOWER, room 13"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].text = "Take 2 drops on monday" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #wk
* dosageInstruction[=].timing.repeat.dayOfWeek = #mon
* dosageInstruction[=].timing.repeat.boundsDuration = 14 #d
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 2 #100000116169 
* dispenseRequest.dispenser
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.5.1.2"
  * display = "Apotheke 'Zum frühen Vogel'"



Instance: Ex0203-instance-US003-Item1
InstanceOf: LINCAOrderMedicationRequest
Title: "Ex0203 US003 LINCAOrderMedicationRequest: Systeminstance 01"
Description: "The order was successfully posted to the Linked Care FHIR server and an instance of the inline LINCAOrderMedicationRequest was created."
Usage: #example
* id = "4ca9d9bf9936427c926118e9c627fc3a"
* meta
  * versionId = "1"
  * lastUpdated = "2023-10-12T10:25:51.1513486+00:00"
* status = #active
* intent = #order
* medication.concept = $asp-liste#0018589 "Effortil 7,5 mg/ml - Tropfen"
* subject = Reference(Registered-Patient-Guenter) 
* informationSource
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.1.1.1"
  * display = "Haus Vogelsang"
* supportingInformation[orderref] = Reference(Ex0200-LINCARequestOrchestration-US003)
* requester
  * identifier
    * system = "urn:oid:2.999.40.0.34.1.1.1"
    * value = "ECHT_SPECHT"
  * display = "DGKP Walter Specht"
* performer
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.3.1.3"
  * display = "Dr. Silvia Spitzmaus"
* note[0].text = "Station SUNFLOWER, room 13"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].text = "Take 2 drops on monday" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #wk
* dosageInstruction[=].timing.repeat.dayOfWeek = #mon
* dosageInstruction[=].timing.repeat.boundsDuration = 14 #d
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 2 #100000116169 
* dispenseRequest.dispenser
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.5.1.2"
  * display = "Apotheke 'Zum frühen Vogel'"

Instance: Ex0202-inline-LINCAOrderItem-US003-Item2
InstanceOf: LINCAOrderMedicationRequest
Title: "Ex0202 US003 LINCAOrderMedicationRequest: Inline 02"
Description: "Second item that DGKP Walter Specht orders for a second patient in inpatient care. One medication request per patient and medication."
Usage: #inline
* status = #unknown
* intent = #proposal
* medication.concept = $asp-liste#0028903 "Isoptin 80 mg - Dragees"
* subject = Reference(Registered-Patient-Patrizia)
* informationSource
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.1.1.1"
  * display = "Haus Vogelsang"
* requester
  * identifier
    * system = "urn:oid:2.999.40.0.34.1.1.1"
    * value = "ECHT_SPECHT"
  * display = "DGKP Walter Specht"
* performer
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.3.1.2"
  * display = "Dr. Kunibert Kreuzotter"
* note[0].text = "Station TULIP, room 2"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].text = "Take 2 pills on monday" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #wk
* dosageInstruction[=].timing.repeat.dayOfWeek = #mon
* dosageInstruction[=].timing.repeat.boundsDuration = 14 #d
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 2 #100000073665 
* dispenseRequest.dispenser
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.5.1.2"
  * display = "Apotheke 'Zum frühen Vogel'"

Instance: Ex0204-instance-US003-Item2
InstanceOf: LINCAOrderMedicationRequest
Title: "Ex0204 US003 LINCAOrderMedicationRequest: Systeminstance 02"
Description: "Second order item of DGKP Walte Specht's order. Instance is for another patient in 'Haus Vogelsang'"
Usage: #example
* id = "1762e9b8e2c84b01824f101db887593c"
* meta
  * versionId = "1"
  * lastUpdated = "2023-10-12T10:25:51.1518211+00:00"
* status = #active
* intent = #order
* medication.concept = $asp-liste#0028903 "Isoptin 80 mg - Dragees"
* subject = Reference(Registered-Patient-Patrizia)
  * identifier
    * system = "urn:oid:1.2.40.0.10.1.4.3.1"
    * value = "1148070771"
* informationSource
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.1.1.1"
  * display = "Haus Vogelsang"
* supportingInformation = Reference(Ex0200-LINCARequestOrchestration-US003)
* requester
  * identifier
    * system = "urn:oid:2.999.40.0.34.1.1.1"
    * value = "ECHT_SPECHT"
  * display = "DGKP Walter Specht"
* performer
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.3.1.2"
  * display = "Dr. Kunibert Kreuzotter"
* note[0].text = "Station TULIP, room 2"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].text = "Take 2 pills on monday" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #wk
* dosageInstruction[=].timing.repeat.dayOfWeek = #mon
* dosageInstruction[=].timing.repeat.boundsDuration = 14 #d
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 2 #100000073665 
* dispenseRequest.dispenser
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.5.1.2"
  * display = "Apotheke 'Zum frühen Vogel'"

Instance: Ex0205-US004-Update-basedOn
InstanceOf: LINCAOrderMedicationRequest
Title: "Ex0205 US004 LINCAOrderMedicationRequest: Update basedOn"
Description: "DGKP Walter Specht needs to modify details of his order. He wants to update one individual order item for his client Günter Gürtelthier."
Usage: #example
* id = "3249246cd3774134abeafdfe6189e8e7"
* meta
  * versionId = "1"
  * lastUpdated = "2023-10-12T11:38:22.7547743+00:00"
* basedOn = Reference(Ex0203-instance-US003-Item1)
* status = #active
* intent = #order
* medication.concept.coding.display = "Creme mixed at pharmacy"
* subject = Reference(Registered-Patient-Guenter)
* informationSource
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.1.1.1"
  * display = "Haus Vogelsang"
* supportingInformation = Reference(Ex0200-LINCARequestOrchestration-US003)
* requester
  * identifier
    * system = "urn:oid:2.999.40.0.34.1.1.1"
    * value = "ECHT_SPECHT"
  * display = "DGKP Walter Specht"
* performer
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.3.1.3"
  * display = "Dr. Silvia Spitzmaus"
* dispenseRequest.dispenser
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.5.1.2"
  * display = "Apotheke 'Zum frühen Vogel'"

Instance: Ex0206-US005-Cancel-basedOn
InstanceOf: LINCAOrderMedicationRequest
Title: "Ex0206 US005 LINCAOrderMedicationRequest: Cancel basedOn"
Description: "DGKP Walter Specht needs to cancel individual order positions for his client Patrizia Platypus. He submits updates on those positions, providing a reason for cancellation, such as a medical reason, and sets their status to 'cancelled'."
Usage: #example
* id = "ab0ad2904cd14d36af23de4edc332ea3"
* meta
  * versionId = "1"
  * lastUpdated = "2023-10-12T11:55:45.1715568+00:00"
* basedOn = Reference(Ex0204-instance-US003-Item2)
* status = #cancelled
* intent = #order
* medication.concept = $asp-liste#0028903 "Isoptin 80 mg - Dragees"
* subject = Reference(Registered-Patient-Patrizia)
  * identifier
    * system = "urn:oid:1.2.40.0.10.1.4.3.1"
    * value = "1148070771"
* informationSource
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.1.1.1"
  * display = "Haus Vogelsang"
* supportingInformation = Reference(Ex0200-LINCARequestOrchestration-US003)
* requester
  * identifier
    * system = "urn:oid:2.999.40.0.34.1.1.1"
    * value = "ECHT_SPECHT"
  * display = "DGKP Walter Specht"
* performer
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.3.1.2"
  * display = "Dr. Kunibert Kreuzotter"
* dispenseRequest.dispenser
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.5.1.2"
  * display = "Apotheke 'Zum frühen Vogel'"