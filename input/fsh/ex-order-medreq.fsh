Instance: Ex0101-inline-LINCAProposalItem-US001
InstanceOf: LINCAProposalMedicationRequest
Title: "Ex0101 US001 LINCAProposalMedicationRequest: Single Inline LINCAProposalMedicationRequest"
Description: "DGKP Susanne Allzeit, employed at mobile care facility 'Pflegedienst Immerdar' proposed a single dedication for her client. The LINCAOrderMedication Request is contained in the LINCARequestOrchestration."
Usage: #inline
* status = #unknown
* intent = #proposal
* medication.concept = $asp-liste#0031130  "Lasix 40 mg Tabletten"
* requester
  * identifier
    * system = "urn:oid:2.999.40.0.34.1.1.3"
    * value = "ALLZEIT_BEREIT"
  * display = "DGKP Susanne Allzeit"
* subject = Reference(Registered-Patient-Renate) 
* performer 
  * identifier
    * system = "urn:oid:1.2.40.0.34.5.2"
    * value = "2.999.40.0.34.3.1.1"
  * display = "Dr. Wibke Würm"
* informationSource
  * identifier
    * system = "urn:oid:1.2.40.0.34.5.2"
    * value = "2.999.40.0.34.1.1.3"
  * display = "Pflegedienst Immerdar"
* supportingInformation[0].identifier.system = "urn:oid:2.999.40.0.34.1.1.3"
* supportingInformation[=].identifier.value = "rqo_immerdar_id_0001"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].text = "Take 1 pill daily" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].timing.repeat.boundsDuration = 14 #d
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 1 #100000073665 

Instance: Ex0102-Instance-LINCAProposalItem-US001
InstanceOf: LINCAProposalMedicationRequest
Title: "Ex0102 US001 LINCAProposalMedicationRequest: Systeminstance"
Description: "The Linked Care FHIR server, creates an instance from DGKP Susanne Allzeit's single medication proposal."
Usage: #example
* status = #active
* intent = #proposal
* meta
  * versionId = "1"
  * lastUpdated = "2023-10-12T10:23:18.7157042+00:00"
* id = "b8aad49741e74c36aeab76cada3ad1bc"
* meta.versionId = "1"
* meta.lastUpdated = "2023-10-12T10:23:18.7157042+00:00"
* supportingInformation[listref] = Reference(Ex0100-LINCARequestOrchestration-US001)
* medication.concept = $asp-liste##0031130 "Lasix 40 mg Tabletten"
* subject = Reference(Registered-Patient-Renate) 
* informationSource
  * identifier
    * system = "urn:oid:1.2.40.0.34.5.2"
    * value = "2.999.40.0.34.1.1.3"
  * display = "Pflegedienst Immerdar"
* requester
  * identifier
    * system = "urn:oid:2.999.40.0.34.1.1.3"
    * value = "ALLZEIT_BEREIT"
  * display = "DGKP Susanne Allzeit"
* performer
  * identifier
    * system = "urn:oid:1.2.40.0.34.5.2"
    * value = "2.999.40.0.34.3.1.1"
  * display = "Dr. Wibke Würm"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].text = "2 x 1 daily" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].timing.repeat.boundsDuration = 14 #d
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 2 #100000073665 


Instance: Ex0201-inline-LINCAProposalItem-US003-Item1
InstanceOf: LINCAProposalMedicationRequest
Title: "Ex0201 US003 LINCAProposalMedicationRequest: Inline 01"
Description: "First item that DGKP Walter Specht proposes for a second patient in inpatient care. One medication request per patient and medication."
Usage: #inline
* status = #unknown
* intent = #proposal
* medication.concept = $asp-liste#0018589 "Effortil 7,5 mg/ml - Tropfen"
* subject = Reference(Registered-Patient-Guenter)
* informationSource
  * identifier
    * system = "urn:oid:1.2.40.0.34.5.2"
    * value = "2.999.40.0.34.1.1.1"
  * display = "Haus Vogelsang"
* requester
  * identifier
    * system = "urn:oid:2.999.40.0.34.1.1.1"
    * value = "ECHT_SPECHT"
  * display = "DGKP Walter Specht"
* performer
  * identifier
    * system = "urn:oid:1.2.40.0.34.5.2"
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
    * system = "urn:oid:1.2.40.0.34.5.2"
    * value = "2.999.40.0.34.5.1.2"
  * display = "Apotheke 'Zum frühen Vogel'"



Instance: Ex0203-instance-US003-Item1
InstanceOf: LINCAProposalMedicationRequest
Title: "Ex0203 US003 LINCAProposalMedicationRequest: Systeminstance 01"
Description: "The proposal was successfully posted to the Linked Care FHIR server and an instance of the inline LINCAProposalMedicationRequest was created."
Usage: #example
* id = "4ca9d9bf9936427c926118e9c627fc3a"
* meta
  * versionId = "1"
  * lastUpdated = "2023-10-12T10:25:51.1513486+00:00"
* status = #active
* intent = #proposal
* medication.concept = $asp-liste#0018589 "Effortil 7,5 mg/ml - Tropfen"
* subject = Reference(Registered-Patient-Guenter) 
* informationSource
  * identifier
    * system = "urn:oid:1.2.40.0.34.5.2"
    * value = "2.999.40.0.34.1.1.1"
  * display = "Haus Vogelsang"
* supportingInformation[listref] = Reference(Ex0200-LINCARequestOrchestration-US003)
* requester
  * identifier
    * system = "urn:oid:2.999.40.0.34.1.1.1"
    * value = "ECHT_SPECHT"
  * display = "DGKP Walter Specht"
* performer
  * identifier
    * system = "urn:oid:1.2.40.0.34.5.2"
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
    * system = "urn:oid:1.2.40.0.34.5.2"
    * value = "2.999.40.0.34.5.1.2"
  * display = "Apotheke 'Zum frühen Vogel'"

Instance: Ex0202-inline-LINCAProposalItem-US003-Item2
InstanceOf: LINCAProposalMedicationRequest
Title: "Ex0202 US003 LINCAProposalMedicationRequest: Inline 02"
Description: "Second item that DGKP Walter Specht proposes for a second patient in inpatient care. One medication request per patient and medication."
Usage: #inline
* status = #unknown
* intent = #proposal
* medication.concept = $asp-liste#0028903 "Isoptin 80 mg - Dragees"
* subject = Reference(Registered-Patient-Patrizia)
* informationSource
  * identifier
    * system = "urn:oid:1.2.40.0.34.5.2"
    * value = "2.999.40.0.34.1.1.1"
  * display = "Haus Vogelsang"
* requester
  * identifier
    * system = "urn:oid:2.999.40.0.34.1.1.1"
    * value = "ECHT_SPECHT"
  * display = "DGKP Walter Specht"
* performer
  * identifier
    * system = "urn:oid:1.2.40.0.34.5.2"
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
    * system = "urn:oid:1.2.40.0.34.5.2"
    * value = "2.999.40.0.34.5.1.2"
  * display = "Apotheke 'Zum frühen Vogel'"

Instance: Ex0204-instance-US003-Item2
InstanceOf: LINCAProposalMedicationRequest
Title: "Ex0204 US003 LINCAProposalMedicationRequest: Systeminstance 02"
Description: "Second proposal item of DGKP Walte Specht's proposal. Instance is for another patient in 'Haus Vogelsang'"
Usage: #example
* id = "1762e9b8e2c84b01824f101db887593c"
* meta
  * versionId = "1"
  * lastUpdated = "2023-10-12T10:25:51.1518211+00:00"
* status = #active
* intent = #proposal
* medication.concept = $asp-liste#0028903 "Isoptin 80 mg - Dragees"
* subject = Reference(Registered-Patient-Patrizia)
  * identifier
    * system = "urn:oid:1.2.40.0.10.1.4.3.1"
    * value = "1148070771"
* informationSource
  * identifier
    * system = "urn:oid:1.2.40.0.34.5.2"
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
    * system = "urn:oid:1.2.40.0.34.5.2"
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
    * system = "urn:oid:1.2.40.0.34.5.2"
    * value = "2.999.40.0.34.5.1.2"
  * display = "Apotheke 'Zum frühen Vogel'"

Instance: Ex0205-US004-Update-basedOn
InstanceOf: LINCAProposalMedicationRequest
Title: "Ex0205 US004 LINCAProposalMedicationRequest: Update basedOn"
Description: "DGKP Walter Specht needs to modify details of his proposal. He wants to update one individual proposal item for his client Günter Gürtelthier."
Usage: #example
* id = "3249246cd3774134abeafdfe6189e8e7"
* meta
  * versionId = "1"
  * lastUpdated = "2023-10-12T11:38:22.7547743+00:00"
* basedOn = Reference(Ex0203-instance-US003-Item1)
* status = #active
* intent = #proposal
* medication.concept.coding.display = "Creme mixed at pharmacy"
* subject = Reference(Registered-Patient-Guenter)
* informationSource
  * identifier
    * system = "urn:oid:1.2.40.0.34.5.2"
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
    * system = "urn:oid:1.2.40.0.34.5.2"
    * value = "2.999.40.0.34.3.1.3"
  * display = "Dr. Silvia Spitzmaus"
* dispenseRequest.dispenser
  * identifier
    * system = "urn:oid:1.2.40.0.34.5.2"
    * value = "2.999.40.0.34.5.1.2"
  * display = "Apotheke 'Zum frühen Vogel'"

Instance: Ex0206-US005-Cancel-basedOn
InstanceOf: LINCAProposalMedicationRequest
Title: "Ex0206 US005 LINCAProposalMedicationRequest: Cancel basedOn"
Description: "DGKP Walter Specht needs to cancel individual proposal positions for his client Patrizia Platypus. He submits updates on those positions, providing a reason for cancellation, such as a medical reason, and sets their status to 'cancelled'."
Usage: #example
* id = "ab0ad2904cd14d36af23de4edc332ea3"
* meta
  * versionId = "1"
  * lastUpdated = "2023-10-12T11:55:45.1715568+00:00"
* basedOn = Reference(Ex0204-instance-US003-Item2)
* status = #cancelled
* intent = #proposal
* medication.concept = $asp-liste#0028903 "Isoptin 80 mg - Dragees"
* subject = Reference(Registered-Patient-Patrizia)
  * identifier
    * system = "urn:oid:1.2.40.0.10.1.4.3.1"
    * value = "1148070771"
* informationSource
  * identifier
    * system = "urn:oid:1.2.40.0.34.5.2"
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
    * system = "urn:oid:1.2.40.0.34.5.2"
    * value = "2.999.40.0.34.3.1.2"
  * display = "Dr. Kunibert Kreuzotter"
* dispenseRequest.dispenser
  * identifier
    * system = "urn:oid:1.2.40.0.34.5.2"
    * value = "2.999.40.0.34.5.1.2"
  * display = "Apotheke 'Zum frühen Vogel'"