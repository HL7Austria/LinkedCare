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
