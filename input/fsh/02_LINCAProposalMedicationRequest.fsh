Profile: LINCAProposalMedicationRequest
Parent: MedicationRequest
Id: linca-proposal-medication-request
Title: "LINCA Proposal Item (LINCAProposalMedicationRequest)"
Description: "Linked Care profile for individual proposal positions. A list of proposal positions is first received as contained resources in a LINCA Proposal (LINCARequestOrchestration). Then the Linked Care FHIR server creates an instance for each contained item. These instances are send to the assigned practicioner(s) for authorization. 
All fields that are mentioned in the Differential Table are validated and processed by the Linked Care FHIR server. Other fields of the basic resource might be filled by the placer/sender, but those will neither be validated, nor we ensure that those fields will be read or processed at any time."
* . ^short = "Ordering of medication for patient"
* status ^short = "In new proposals, the status must be set to unknown. The Linked Care server will set it to active in the instantiated copies of the positions. Possible values: active, cancelled (end-of-chain), unknown"
* intent ^short = "Possible values: proposal (default in contained and instance of proposal), order (default in prescriptions), reflex-order (automatically created orders due to an ad-hoc prescription)"
* contained 0..0
* id ^short = "LinkedCare Proposal Id, assigned by the Linked Care Fhir server. Any initial value will be overwritten"
* meta ^short = "Metadata about the resource, assigned by the Linked Care Fhir server"
* identifier ^short = "external ID(s), e.g.: can be used to refer to a care software database record"
* basedOn 0..1
* basedOn ^short = "If this item is a correction of a previous element in the chain, set to a reference to that previous element"
* subject only Reference(HL7ATCorePatient)
* subject ^short = "Each LINCAProposalMedicationRequest is associated with one patient. The patient data is conformant to the HL7 Austria patient and must be clearly identifiable."
* informationSource 1..1 
* informationSource ^short = "This contains the identity of the proposal placer (OID in case of organizations, eID in case of individuals)"
* requester 1..1 
* requester ^short = "Username/account name as specified by placer"
* medication only CodeableReference(LINCAMeds) 
* medication from $asp-liste
* medication ^short = "Medication in conformance with ELGA CodeSystems (text-only, or text and number referencing one of the supported catalogs, as for example the PZN of the Austrian ASP list)."
* performer 1..1 
* performer only Reference(Practitioner) 
* performer ^short = "The authorizing practitioner for this proposal item (identified by their OID according to GDA Index)"
* supportingInformation ^short = "One element is reserved for reference to origin (LINCARequestOrchestration) assigned on LinkedCare Platform. Used to link instantiated proposal items back to the proposal header (LINCARequestOrchestration)."
* dosageInstruction.doseAndRate.doseQuantity.code from $DoseForm
* dosageInstruction.text ^short = "Used to provide free text dosage instructions, e.g., dosage instructions from the previous prescription"
* dispenseRequest.dispenser ^short = "Reference to preferred pharmacy for pickup (OID according to GDA Index). Allows the referenced pharmacy to fetch assigned prescriptions from the server for preparation before pickup"
* dispenseRequest.quantity ^short = "Amount of medication to supply for dispense as proposed by the placer"
* note ^short = "Information for the dispensing pharmacy, provided by the proposal placer, e.g., pharmacy logistic label"
* groupIdentifier ^short = "Reserved for LINCAPrescriptionMedicationRequest, shall be empty in LINCAProposalMedicationRequest"
* priorPrescription ^short = "Reserved for LINCAPrescriptionMedicationRequest, shall be empty in LINCAProposalMedicationRequest"