
Profile: LINCAPrescriptionMedicationRequest
Parent: MedicationRequest
Id: linca-prescription-medication-request
Title: "LINCA Prescription (LINCAPrescriptionMedicationRequest)"
Description: "Linked Care Profile for prescriptions. The prescriptions are created by the practicioner software but must be basedOn an assigned LINCA Order Item. The assigned practicioners can view, modify or cancel all of their assigned order items. "
* identifier ^short = "Used for eMedID (if available)"
* status ^short = "Managed by Linked Care FHIR server. Possible values: active (default), ended (stop intake of ordered medication, once current package is empty), stopped (end the intake of the ordered medication immediately),entered-in-error (faulty prescription)"
* intent ^short = "Possible values: order (default), original-order (adhoc-prescriptions)"
* basedOn only Reference(LINCAOrderMedicationRequest)   
* basedOn ^short = "Order item this prescription is based on"
* performer 1..1 
* performer only Reference(Practitioner) 
* performer ^short = "The authorizing practicioner for this order item."
* groupIdentifier ^short = "ID for the electric prescription (eRezeptID)"
* medication only CodeableReference(LINCAMeds) 
* medication from $asp-liste
* medication ^short = "Medication conforming ELGA CodingSystems. At least the central pharma number must be given"
* subject only Reference(HL7ATCorePatient)
* subject ^short = "Each LINCAOrderMedicationRequest is affiliated with one patient. The patient data is conform to the HL7 Austria patient and must be clearly identifieable."
* informationSource 1..1 
* informationSource ^short = "Who ordered this"
* supportingInformation ^slicing.rules = #open
* supportingInformation ^slicing.discriminator.type = #value
* supportingInformation ^slicing.discriminator.path = "text"
* supportingInformation ^slicing.ordered = false
* supportingInformation contains orderref 0..1
* supportingInformation[orderref] ^short = "Reference to origin (LINCARequestOrchestration) assigned on LinkedCare Platform. Used to link instantiated order items back to their order (LINCARequestOrchestration)."
* dispenseRequest.dispenser ^short = "Reference to pharmacy preferred for pickup"
* dosageInstruction.doseAndRate.doseQuantity.code from $DoseForm

//* dosageInstruction 1..*
//* dosageInstruction ^short = "At least textual instruction required"