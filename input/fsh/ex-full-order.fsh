Instance: RequestOrchestrationExample
InstanceOf: RequestOrchestration
Usage: #example
* intent = #order
* status = #active 
* contained[0] = temp-inline-medrequest-01
* contained[+] = temp-inline-medrequest-02
* contained[+] = temp-inline-medrequest-03
* subject = Reference(1.2.40.0.34.3.1.10193) "Caritas Seniorenwohnhaus Wies"

Instance: temp-inline-medrequest-01
InstanceOf: LINCAOrderMedicationRequest
Usage: #inline
* status = #unknown
* intent = #proposal
* medication.concept = $MedCode#981417
* performer = Reference(ExamplePractitioner-01)
* subject = Reference(Patient-01) 
* informationSource = Reference(1.2.40.0.34.3.1.10193) "Caritas Seniorenwohnhaus Wies"
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

Instance: temp-inline-medrequest-02
InstanceOf: LINCAOrderMedicationRequest
Usage: #inline
* status = #unknown
* intent = #proposal
* medication.concept = $MedCode#981417
* subject = Reference(Patient-03) 
* performer = Reference(ExamplePractitioner-01)
* informationSource = Reference(1.2.40.0.34.3.1.10193) "Caritas Seniorenwohnhaus Wies"
* note[0].text = "Pharmacy Logisitic Label"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].text = "Take 2 pills daily" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].timing.repeat.boundsDuration = 14 #d
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 2 #100000073665 

Instance: temp-inline-medrequest-03
InstanceOf: LINCAOrderMedicationRequest
Usage: #inline
* status = #unknown
* intent = #proposal
* medication.concept = $MedCode#981417
* subject = Reference(Patient-04) 
* performer = Reference(ExamplePractitioner-01)
* informationSource = Reference(1.2.40.0.34.3.1.10193) "Caritas Seniorenwohnhaus Wies"
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