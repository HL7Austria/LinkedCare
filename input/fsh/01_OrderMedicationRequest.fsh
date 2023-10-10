Profile: LINCAOrderMedicationRequest
Parent: MedicationRequest
Id: linca-order-medication-request
Title: "LINCA Order Item (LINCAOrderMedicationRequest)"
Description: "Linked Care profile for individual order items. A list of order items is first received as contained resources in a LINCA Order. Then the Linked Care FHIR server creates an instance for each contained item. These instances are send to the assigned practicioner(s) for authorization."
* status ^short = "Managed by Linked Care FHIR server. Possible values: active (default in resource instances), cancelled (chain link overwrites this order), unkown (default in contained resources)"
* intent ^short = "Possible values: proposal (default in contained), order (default in instances), reflex-order (automatically created orders due to a ad-hoc prescription)"
* contained 0..0
* id ^short = "LinkedCare Order Id, assigned by the Linked Care Fhir Server. Any initial value will be overwritten."
* identifier ^short = "externaal ID(s), e.g.: assiigned by care organization"
* subject only Reference(HL7ATCorePatient)
* subject ^short = "Each LINCAOrderMedicationRequest is affiliated with one patient. The patient data is conform to the HL7 Austria patient and must be clearly identifieable."
* informationSource 1..1 
* informationSource ^short = "Who ordered this"
* requester 1..1 
* requester ^short = "Username/account name in software of placer"
* medication only CodeableReference(LINCAMeds) 
* medication from $MedCode
* medication ^short = "Medication conforming ELGA CodingSystems. At least the central pharma number must be given"
* performer 1..1 
* performer only Reference(Practitioner) 
* performer ^short = "The authorizing practicioner for this order item."
* priorPrescription ^short = "Contains Reference to invalid/incorrect order that has been repalced by current."
* supportingInformation ^slicing.rules = #open
* supportingInformation ^slicing.discriminator.type = #value
* supportingInformation ^slicing.discriminator.path = "text"
* supportingInformation ^slicing.ordered = false
* supportingInformation contains orderref 0..1
* supportingInformation[orderref] ^short = "Reference to origin (LINCARequestOrchestration) assigned on LinkedCare Platform. Used to link instantiated order items back to their order (LINCARequestOrchestration)."
* dosageInstruction.doseAndRate.doseQuantity.code from $DoseForm
* dispenseRequest.dispenser ^short = "Reference to preferred pharmacy for pickup (GDA index)"