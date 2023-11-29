Instance: RequestOrchestration-Dosage-Example
InstanceOf: LINCARequestOrchestration
Title: "Example LINCARequestOrchestration: Dosage Variation"
Description: "LINCA Proposal with different dummy data as in the user stories. Shows all ELGA conform encodeing of dosage instructions used by the other examples."
Usage: #example
* intent = #proposal
* status = #active 
* contained[0] = example-2-0-0-1
* contained[+] = example-daily-2
* contained[+] = example-mon-2
* subject
  * identifier
    * system = "urn:oid:1.2.40.0.34.5.2"
    * value = "2.999.40.0.34.1.1.3"
  * display = "Pflegedienst Immerdar"
* action[0].type = #create
* action[=].resource = Reference(dd3dc150a0cf4edf8b8cd577191a1000)
* action[+].type = #create
* action[=].resource = Reference(d2359858cb6640faa9d1f8a12345bada)
* action[+].type = #create
* action[=].resource = Reference(c42a921b95004b87a7d19fa59cf64c99)

Instance: example-2-0-0-1
InstanceOf: LINCAProposalMedicationRequest
Title: "Additional Example: LINCA Proposal Item dosage 01"
Description: "Example of inline LINCA Proposal Item with dosage instruction 2-0-0-1 every Thursday"
Usage: #inline
* id = "dd3dc150a0cf4edf8b8cd577191a1000"
* status = #unknown
* intent = #proposal
* medication.concept = $asp-liste#981417
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
* subject = Reference(Registered-Patient-Guenter)
* informationSource
  * identifier
    * system = "urn:oid:1.2.40.0.34.5.2"
    * value = "2.999.40.0.34.1.1.3"
  * display = "Pflegedienst Immerdar"
* note[0].text = "Pharmacy Logisitic Label"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].text = "Every Thursday morning 2 pills" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].timing.repeat.dayOfWeek = #thu
* dosageInstruction[=].timing.repeat.when = #MORN
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 2 #100000073665 
* dosageInstruction[1].sequence = 2
* dosageInstruction[=].text = "Every Thursday Evening 1 pill" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].timing.repeat.dayOfWeek = #thu
* dosageInstruction[=].timing.repeat.when = #EVE
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 1 $DoseForm#100000073665 

Instance: example-daily-2
InstanceOf: LINCAProposalMedicationRequest
Title: "Additional Example: LINCA Proposal Item dosage 02"
Description: "Example of inline LINCA Proposal Item with dosage instruction 2 daily"
Usage: #inline
* id = "d2359858cb6640faa9d1f8a12345bada"
* status = #unknown
* intent = #proposal
* medication.concept = $asp-liste#981417
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
* subject = Reference(Registered-Patient-Guenter)
* informationSource
  * identifier
    * system = "urn:oid:1.2.40.0.34.5.2"
    * value = "2.999.40.0.34.1.1.3"
  * display = "Pflegedienst Immerdar"
* note[0].text = "Pharmacy Logisitic Label"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].text = "Take 2 pills daily" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 2 $DoseForm#100000073665 

Instance: example-mon-2
InstanceOf: LINCAProposalMedicationRequest
Title: "Additional Example: LINCA Proposal Item dosage 03"
Description: "Example of inline LINCA Proposal Item with dosage instruction 2 every Monday"
Usage: #inline
* id = "c42a921b95004b87a7d19fa59cf64c99"
* status = #unknown
* intent = #proposal
* requester
  * identifier
    * system = "urn:oid:2.999.40.0.34.1.1.1"
    * value = "ECHT_SPECHT"
  * display = "DGKP Walter Specht"
* medication.concept = $asp-liste#981417
* performer
  * identifier
    * system = "urn:oid:1.2.40.0.34.5.2"
    * value = "2.999.40.0.34.3.1.3"
  * display = "Dr. Silvia Spitzmaus"
* subject = Reference(Registered-Patient-Guenter)
* informationSource
  * identifier
    * system = "urn:oid:1.2.40.0.34.5.2"
    * value = "2.999.40.0.34.1.1.3"
  * display = "Pflegedienst Immerdar"
* note[0].text = "Pharmacy Logisitic Label"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].text = "Take 2 pills on monday" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #wk
* dosageInstruction[=].timing.repeat.dayOfWeek = #mon
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 2 $DoseForm#100000073665 