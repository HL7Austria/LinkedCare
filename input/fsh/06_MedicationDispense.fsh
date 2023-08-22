Profile: LINCAMedicationDispense
Parent: MedicationDispense
Title: "Linked Care Dispense Profile"
Description: "Linkded Care Dispense Profile"
* contained 1..*
* status = #completed
* authorizingPrescription 1..1
* authorizingPrescription only Reference(LINCAPrescriptionMedicationRequest)
* performer 1..*

//Example!