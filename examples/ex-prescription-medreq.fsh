Instance: Example-LINCAPrescription-MODIFIED
InstanceOf: LINCAPrescriptionMedicationRequest
Title: "Example LINCA Prescription : Modified dosage"
Description: "Practicioner saw it necessary to adjust dosage. LINCA Prescription  differs from LINCA Order Item."
Usage: #example
* status = #active
* intent = #order
* basedOn = Reference(Example-Instance-Mobile-LINCAOrderItem-01)
* requester = Reference(Registered-Practitioner-01)
* identifier.value = "19384028 eMedID"
* groupIdentifier.value = "098765 eRezeptID" 
* supportingInformation[orderref] = Reference(Example-LINCAOrder-No-Pharmacy)
* medication.concept = $MedCode#0004340
* requester = Reference(Practitioner/01) "Susanne Allzeit (DGKP)"
* subject = Reference(Registered-Mobile-Care-Patient) 
* performer = Reference(Registered-Practitioner-01)
* informationSource = Reference(Registered-Care-Mobile)
* note[0].text = "Pharmacy Logisitic Label"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].text = "Take 1 pills daily" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].timing.repeat.boundsDuration = 14 #d
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 1 #100000073664 

Instance: Example-LINCAPrescription-ASIS
InstanceOf: LINCAPrescriptionMedicationRequest
Title: "Example LINCA Prescription : ASIS"
Description: "Practicioner signed off on original LINCA Order Item. No modifications were made"
Usage: #example
* status = #active
* intent = #order
* basedOn = Reference(Example-Instance-Mobile-LINCAOrderItem-02)
* requester = Reference(Registered-Practitioner-01)
* identifier.value = "928739475 eMedID"
* groupIdentifier.value = "9384756 eRezeptID" 
* supportingInformation[orderref] = Reference(Example-LINCAOrder-With-Pharmacy)
* medication.concept = $MedCode#1293240
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
