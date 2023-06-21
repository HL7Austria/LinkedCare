Profile: LINCAOrderMedicationRequest
Parent: MedicationRequest
Id: lincaorder-medication-request
Title: "Order Medication Request"
Description: "FHIR Base Profile for Medication Data when ordering in LICA system"
* subject only Reference(Patient)
* informationSource 1..1 //GDA -> wer sendet den request 
* medication only Reference(LINCAMeds)
//* requester 0..1 //author -> wer hat den request inhaltlich verfast
//* reason only ValueSet(LINCAReasonCode)
//* notes ^slicing.rules = #open
//* notes ^slicing.discriminator.type = #order
//* notes ^short = "Logistic label for the dispensing pharmacy"
//* medication -> only cod efrom PHZ https://termgit.elga.gv.at/CodeSystem-asp-liste.html, doseForm https://termgit.elga.gv.at/ValueSet-elga-medikationdarreichungsform.html

Alias: ELGAMedCode = https://termgit.elga.gv.at/CodeSystem-asp-liste.html
Alias: ELGADoseForm = https://termgit.elga.gv.at/ValueSet-elga-medikationdarreichungsform.html


Alias: $MedCode = https://termgit.elga.gv.at/CodeSystem-asp-liste.html
Alias: $DoseForm = https://termgit.elga.gv.at/ValueSet-elga-medikationdarreichungsform.html


Profile: LINCAMeds 
Parent: Medication
Id: linca-medication 
Title: "ELGA complient Medication"
Description: "Profile restricting the medication code and doseForm to ELGA defined Sets"
* code from $MedCode
* doseForm from $DoseForm

Alias: $dose-rate-type = http://terminology.hl7.org/CodeSystem/dose-rate-type

Instance: ExampleRequest2010
InstanceOf: LINCAOrderMedicationRequest
Title: "Example Dosage Splitting 2-0-1-0"
Usage: #example
* contained = ExampleMedication
* identifier.use = #official
* identifier.system = "http://www.bmc.nl/portal/prescriptions"
* identifier.value = "12345689"
* status = #active
* intent = #order
* medication.reference.reference = "#ExampleMedication"
* subject = Reference(Patient/pat1) "Max Mustermensch"
* informationSource = Reference(CareTeam/SP1234)
* note[0].text = "Pharmacy Logisitic Label"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].text = "Every Thursday morning 2 pills" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].timing.repeat.dayOfWeek = #thu
* dosageInstruction[=].timing.repeat.when = #MORN
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 2 http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm#TAB "TAB"
* dosageInstruction[1].sequence = 2
* dosageInstruction[=].text = "Every Thursday Evening 1 pill" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].timing.repeat.dayOfWeek = #thu
* dosageInstruction[=].timing.repeat.when = #EVE
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 1 http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm#TAB "TAB"

Instance: ExampleRequest2000
InstanceOf: LINCAOrderMedicationRequest
Title: "Example Daily Dosage"
Usage: #example
* contained = ExampleMedication
* identifier.use = #official
* identifier.system = "http://www.bmc.nl/portal/prescriptions"
* identifier.value = "12345689"
* status = #active
* intent = #order
* medication.reference.reference = "#ExampleMedication"
* subject = Reference(Patient/pat1) "Max Mustermensch"
* informationSource = Reference(CareTeam/SP1234)
* note[0].text = "Pharmacy Logisitic Label"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].text = "Take 2 pills daily" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].timing.repeat.boundsDuration = 14 #d
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 2 http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm#TAB "TAB"


Instance: ExampleRequest2000Monday
InstanceOf: LINCAOrderMedicationRequest
Title: "Example One Dosage On Monday"
Usage: #example
* contained = ExampleMedication
* identifier.use = #official
* identifier.system = "http://www.bmc.nl/portal/prescriptions"
* identifier.value = "12345689"
* status = #active
* intent = #order
* medication.reference.reference = "#ExampleMedication"
* subject = Reference(Patient/pat1) "Max Mustermensch"
* informationSource = Reference(CareTeam/SP1234)
* note[0].text = "Pharmacy Logisitic Label"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].text = "Take 2 pills on monday" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #wk
* dosageInstruction[=].timing.repeat.dayOfWeek = #mon
* dosageInstruction[=].timing.repeat.boundsDuration = 14 #d
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 2 http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm#TAB "TAB"



Instance: ExampleMedication
InstanceOf: LINCAMeds
Usage: #inline
* code = $MedCode#981417 "CIPROXIN FTBL 500MG"
* doseForm = $DoseForm#100000073665 "Filmtablette"
