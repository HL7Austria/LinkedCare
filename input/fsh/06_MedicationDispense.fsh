Profile: LINCAMedicationDispense
Parent: MedicationDispense
Id: linca-dipsense-documentation
Title: "Linked Care Dispense Profile"
Description: "Linked Care Dispense Profile"
* medication 1..1 
* medication only CodeableReference(LINCAMeds)
* medication ^short = "Medication that was dispensed"
* status = #completed
* authorizingPrescription 1..1
* authorizingPrescription only Reference(LINCAPrescriptionMedicationRequest)
* authorizingPrescription ^short = "Prescription that authorized dispense of this medication"
* performer.actor 1..1
* performer.actor only Reference(Organization)
* performer ^short = "Reference to dispensing pharmacy (GDA index)"
* subject 1..1
* subject only Reference(HL7ATCorePatient)
* subject ^short = "Patient conform HL7 AT. Make sure the patient is identifiable somehow"
//* dosageInstruction 1..*
//* dosageInstruction ^short = "At least a textual instruction should be given"

