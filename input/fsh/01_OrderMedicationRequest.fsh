Profile: LINCAOrderMedicationRequest
Parent: MedicationRequest
Id: lincaorder-medication-request
Title: "LINCA Order Item (LINCAOrderMedicationRequest)"
Description: "Individual order items created by the Linked Care system according to the contained items in the order. Send to practicioner for authorization."
* contained 0..0
* subject only Reference(HL7ATCorePatient)
* subject ^short = "Each LINCAOrderMedicationRequest is affiliated with one patient. The patient data is conform to the HL7 Austria patient."
* informationSource 1..1 
* informationSource ^short = "Who ordered this"
* requester ^short = "If the requester differs from the information source"
* medication only CodeableReference(LINCAMeds)
* medication ^short = "Medication conforming ELGA CodingSystems. At least the central pharma number must be given"
* performer 1..1 
* performer only Reference(Practitioner) 
* performer ^short = "The authorizing practicioner for this order item."
* supportingInformation ^slicing.rules = #open
* supportingInformation ^slicing.discriminator.type = #value
* supportingInformation ^slicing.discriminator.path = "text"
* supportingInformation ^slicing.ordered = false
* supportingInformation contains orderref 0..1
* supportingInformation[orderref] ^short = "Reference to origin (LINCARequestOrchestration) assigned on LinkedCare Platform. Used to link instantiated order items back to their order (LINCARequestOrchestration)."
* dosageInstruction.doseAndRate.doseQuantity.code from $DoseForm
