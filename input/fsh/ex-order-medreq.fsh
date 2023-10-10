Instance: Example-inline-LINCAOrderItem-Single
InstanceOf: LINCAOrderMedicationRequest
Title: "Example LINCA Order Item: Contained in an LINCA Order "
Description: "Order was for a client of a mobile care facility, for a single item."
Usage: #inline
* status = #unknown
* intent = #proposal
* medication.concept = $MedCode#0004340
* requester = Reference(Practitioner/01) "Susanne Allzeit (DGKP)"
* subject = Reference(Registered-Mobile-Care-Patient) 
* performer = Reference(Registered-Practitioner-01)
* informationSource = Reference(Registered-Care-Mobile)
* note[0].text = "Pharmacy Logisitic Label"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].text = "Take 2 pills daily" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].timing.repeat.boundsDuration = 14 #d
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 2 #100000073664 

Instance: Example-Instance-Mobile-LINCAOrderItem-01
InstanceOf: LINCAOrderMedicationRequest
Title: "Example LINCA Order Item: Instance retrieved from LINCA Order "
Description: "Instance of LINCA Order Item from mobile care facility. Will be sent to practicioner to issue a prescription"
Usage: #example
* status = #active
* intent = #order
* id = "linca-id-123456"
* medication.concept = $MedCode#0004340
* supportingInformation[orderref] = Reference(Example-LINCAOrder-No-Pharmacy)
* requester = Reference(Practitioner/01) "Susanne Allzeit (DGKP)"
* subject = Reference(Registered-Mobile-Care-Patient) 
* performer = Reference(Registered-Practitioner-01)
* informationSource = Reference(Registered-Care-Mobile)
* note[0].text = "Pharmacy Logisitic Label"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].text = "Take 2 pills daily" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].timing.repeat.boundsDuration = 14 #d
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 2 #100000073664 

Instance: Example-inline-LINCAOrderItem-Repeat
InstanceOf: LINCAOrderMedicationRequest
Title: "Example LINCA Order Item: Contained in an LINCAOrder"
Description: "Order was for a client of a mobile care facility, for a repeatedly taken medication."
Usage: #inline
* status = #unknown
* intent = #proposal
* medication.concept = $MedCode#1293240
* requester = Reference(Practitioner/01) "Susanne Allzeit (DGKP)"
* subject = Reference(Registered-Mobile-Care-Patient) 
* performer = Reference(Registered-Practitioner-01)
* informationSource = Reference(Registered-Care-Mobile)
* note[0].text = "Pharmacy Logisitic Label"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].text = "Take 2 pills daily" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].timing.repeat.boundsDuration = 14 #d
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 2 #100000073664 

Instance: Example-Instance-Mobile-OrderItem-02
InstanceOf: LINCAOrderMedicationRequest
Title: "Example LINCA Order Item: Instance retrieved from LINCA Order "
Description: "Instance of a LINCA Order Item from mobile care facility. Will be sent to practicioner to issue a prescription"
Usage: #example
* status = #active
* intent = #order
* id = "linca-id-123459"
* medication.concept = $MedCode#1293240
* supportingInformation[orderref] = Reference(Example-LINCAOrder-With-Pharmacy)
* requester = Reference(Practitioner/01) "Susanne Allzeit (DGKP)"
* subject = Reference(Registered-Mobile-Care-Patient) 
* performer = Reference(Registered-Practitioner-01)
* informationSource = Reference(Registered-Care-Mobile)
* note[0].text = "Pharmacy Logisitic Label"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].text = "Take 2 pill daily" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].timing.repeat.boundsDuration = 14 #d
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 2 #100000073665 
* dispenseRequest.dispenser = Reference(Registered-Pharmacy-01)




Instance: Example-inline-LINCAOrderItem-Inpatient-Item1
InstanceOf: LINCAOrderMedicationRequest
Title: "Example LINCA Order Item: Contained in LINCA Order "
Description: "Item in a inpatient facility order. One medication request per patient and medication."
Usage: #inline
* status = #unknown
* intent = #proposal
* medication.concept = $MedCode#981417
* requester = Reference(Practitioner/02) "Walter Specht (DGKP)"
* subject = Reference(Registered-Inpatient-01) 
* performer = Reference(Registered-Practitioner-03)
* informationSource = Reference(Registered-Care-Inpatient)
* note[0].text = "Pharmacy Logisitic Label"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].text = "Take 2 pills daily" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].timing.repeat.boundsDuration = 14 #d
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 2 #100000073665 
* dispenseRequest.dispenser = Reference(Registered-Pharmacy-02)

Instance: Example-inline-LINCAOrderItem-Inpatient-Item2
InstanceOf: LINCAOrderMedicationRequest
Title: "Example LINCA Order Item: contained in LINCA Order "
Description: "Item in a inpatient facility order. One medication request per patient and medication."
Usage: #inline
* status = #unknown
* intent = #proposal
* medication.concept = $MedCode#981417
* requester = Reference(Practitioner/02) "Walter Specht (DGKP)"
* subject = Reference(Registered-Inpatient-01) 
* performer = Reference(Registered-Practitioner-03)
* informationSource = Reference(Registered-Care-Inpatient)
* note[0].text = "Pharmacy Logisitic Label"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].text = "Take 2 pills on monday" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #wk
* dosageInstruction[=].timing.repeat.dayOfWeek = #mon
* dosageInstruction[=].timing.repeat.boundsDuration = 14 #d
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 2 #100000073665 
* dispenseRequest.dispenser = Reference(Registered-Pharmacy-02)

Instance: Example-inline-LINCAOrderItem-Inpatient-Item3
InstanceOf: LINCAOrderMedicationRequest
Title: "Example LINCA Order Item: contained in an LINCA Order "
Description: "Item in a inpatient facility order. One medication request per patient and medication."
Usage: #inline
* status = #unknown
* intent = #proposal
* medication.concept = $MedCode#981417
* requester = Reference(Practitioner/02) "Walter Specht (DGKP)"
* subject = Reference(Registered-Inpatient-02) 
* performer = Reference(Registered-Practitioner-02)
* informationSource = Reference(Registered-Care-Inpatient)
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
* dosageInstruction[=].doseAndRate.doseQuantity = 1 #100000073665 
* dispenseRequest.dispenser = Reference(Registered-Pharmacy-02)

