Profile: LINCAOrderMedicationRequest
Parent: MedicationRequest
Id: lincaorder-medication-request
Title: "Order Medication Request"
Description: "FHIR Base Profile for Medication Data when ordering in LICA system"
* subject only Reference(Patient)
* informationSource 1..1 //GDA -> wer sendet den request 
//* requester 0..1 //author -> wer hat den request inhaltlich verfast
//* reason only ValueSet(LINCAReasonCode)
//* notes ^slicing.rules = #open
//* notes ^slicing.discriminator.type = #order
//* notes ^short = "Logistic label for the dispensing pharmacy"

Alias: $sct = http://snomed.info/sct
Alias: $dose-rate-type = http://terminology.hl7.org/CodeSystem/dose-rate-type
Alias: $v3-ActReason = http://terminology.hl7.org/CodeSystem/v3-ActReason

Instance: medrx0302
InstanceOf: LINCAOrderMedicationRequest
Usage: #example
* contained = med0320
* identifier.use = #official
* identifier.system = "http://www.bmc.nl/portal/prescriptions"
* identifier.value = "12345689"
* status = #active
* intent = #order
* medication.reference.reference = "#med0320"
* subject = Reference(Patient/pat1) "Max Mustermensch"
* informationSource = Reference(CareTeam/SP1234)
* note.text = "Pharmacy Logisitic Label"


Instance: med0320
InstanceOf: Medication
Usage: #inline
* code = $sct#324252006 "Azithromycin 250mg capsule (product)"