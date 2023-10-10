Profile: LINCAMedicationDispense
Parent: MedicationDispense
Id: linca-dipsense-documentation
Title: "LINCA Dispense (LINCAMedicationDispense)"
Description: "Linked Care  Profile for dispense documentation. The dispense must be documented by the dispensing pharmacist and specify if an order was fulfilled completly or partially. The LINCA Dispense must have an LINCA Prescription as authorizingPrescription. "
* medication 1..1 
* medication only CodeableReference(LINCAMeds)
* medication ^short = "Medication that was dispensed"
* status = #completed
* status ^short = "A dispense ends the chain of the order item. Therefore the status is fixed to 'completed'"
* authorizingPrescription 1..1
* authorizingPrescription only Reference(LINCAPrescriptionMedicationRequest)
* authorizingPrescription ^short = "Prescription that authorized dispense of this medication"
* performer.actor 1..1
* performer.actor only Reference(Organization)
* performer.actor ^short = "Reference to dispensing pharmacy (GDA index)"
* subject 1..1
* subject only Reference(HL7ATCorePatient)
* subject ^short = "Patient conform HL7 AT. Make sure the patient is identifiable somehow"
* type ^short = "Possible values: FFC (First-fill complete for completly fulfilled orders), FFP (first-fill part fill, for pratially fulfilled orders)"
//* dosageInstruction 1..*
//* dosageInstruction ^short = "At least a textual instruction should be given"

