
Profile: LINCAPrescriptionMedicationRequest
Parent: LINCAOrderMedicationRequest
Id: licaprescription-medication-request
Title: "Prescription Medication Request"
Description: "FHIR Base Profile for Medication Data after practicioner filled order in LICA system"
* basedOn only Reference(LINCAOrderMedicationRequest)   
//* subject only Reference(HL7ATCorePatient)
* informationSource 1..1 //GDA -> wer sendet den request 
* medication only Reference(LINCAMeds)
* performer 1..1 
* performer only Reference(Practitioner) 