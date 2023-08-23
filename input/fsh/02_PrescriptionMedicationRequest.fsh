
Profile: LINCAPrescriptionMedicationRequest
Parent: LINCAOrderMedicationRequest
Id: licaprescription-medication-request
Title: "Prescription Medication Request"
Description: "Prescription send by practicioner software. Is always based on order but might differ due to changes."
* basedOn only Reference(LINCAOrderMedicationRequest)   
* basedOn ^short = "Order item this prescription is based on"
* performer 1..1 
* performer only Reference(Practitioner) 
* performer ^short = "The authorizing practicioner for this order item."
* groupIdentifier ^short = "ID for the electric prescription (eRezeptID)"
* dosageInstruction 1..*
* dosageInstruction ^short = "At least textual instruction required"