Instance: temp-presc-ex
InstanceOf: LINCAPrescriptionMedicationRequest
Usage: #example
* status = #active
* intent = #order
* basedOn = Reference(temp-medreq-ex)
* requester = Reference(Practitioner/01) "Martha Stewart"
* groupIdentifier.value = "127.0.0.1 eRezeptID" 
* supportingInformation[orderref] = Reference(RequestOrchestrationExample)
* medication.concept = $MedCode#981417
* subject = Reference(Patient-02) 
* performer = Reference(ExamplePractitioner-01)
* informationSource = Reference(Organization/1) "Demo Org"
* note[0].text = "Pharmacy Logisitic Label"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].text = "Take 2 pills daily" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].timing.repeat.boundsDuration = 14 #d
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 2 #100000073665 