Profile: LINCAOrderMedicationRequest
Parent: MedicationRequest
Id: linca-order-medication-request
Title: "LINCA Order Item (LINCAOrderMedicationRequest)"
Description: "Linked Care profile for individual order positions. A list of order positions is first received as contained resources in a LINCA Order. Then the Linked Care FHIR server creates an instance for each contained item. These instances are send to the assigned practicioner(s) for authorization."
* status ^short = "In new orders, the status must be set to unknown. The Linked Care server will set it to active in the instantiated copies of the positions. Possible values: active, cancelled (end-of-chain), unknown"
* intent ^short = "Possible values: proposal (default in contained), order (default in instances), reflex-order (automatically created orders due to an ad-hoc prescription)"
* contained 0..0
* id ^short = "LinkedCare Order Id, assigned by the Linked Care Fhir Server. Any initial value will be overwritten"
* identifier ^short = "external ID(s), e.g.: can be used to refer to a care software database record"
* basedOn 0..1
* basedOn ^short = "If this item is a correction of a previous element in the chain, set to a reference to that previous element"
* subject only Reference(HL7ATCorePatient)
* subject ^short = "Each LINCAOrderMedicationRequest is associated with one patient. The patient data is conformant to the HL7 Austria patient and must be clearly identifiable."
* informationSource 1..1 
* informationSource ^short = "This contains the identity of the order placer (OID in case of organizations, eID in case of individuals)"
* requester 1..1 
* requester ^short = "Username/account name as specified by placer"
* medication only CodeableReference(LINCAMeds) 
* medication from $asp-liste
* medication ^short = "Medication in conformance with ELGA CodeSystems (text-only, or text and number referencing one of the supported catalogs, as for example the PZN of the Austrian ASP)."
* performer 1..1 
* performer only Reference(Practitioner) 
* performer ^short = "The authorizing practitioner for this order item (identified by their OID according to GDA Index)"
* supportingInformation ^slicing.rules = #open
* supportingInformation ^slicing.discriminator.type = #value
* supportingInformation ^slicing.discriminator.path = "text"
* supportingInformation ^slicing.ordered = false
* supportingInformation contains orderref 0..1
* supportingInformation[orderref] ^short = "Reference to origin (LINCARequestOrchestration) assigned on LinkedCare Platform. Used to link instantiated order items back to the order header (LINCARequestOrchestration)."
* dosageInstruction.doseAndRate.doseQuantity.code from $DoseForm
* dispenseRequest.dispenser ^short = "Reference to preferred pharmacy for pickup (OID according to GDA Index)"