Profile: LINCARequestOrchestration
Parent: RequestOrchestration
Id: linca-full-proposal-list
Title: "LINCA Proposal List (LINCARequestOrchestration)"
Description: "Linked Care Profile for the overall proposal. The LINCA Proposal List serves as container for the individual placements. The placer's software creates the RequestOrchestration when (re)ordering medication. All fields that are mentioned in the Differential Table are validated and processed by the Linked Care FHIR server. Other fields of the basic resource might be filled by the placer/sender, but those will neither be validated, nor we ensure that those fields will be read or processed at any time." 
* id ^short = "LinkedCare proposal-list ID, assigned by Linked Care FHIR server"
* meta ^short = "Metadata about the resource, assigned by Linked Care FHIR server"
* status ^short = "Must be set to \"active\" when posting a new proposal. Assigned by Linked Care FHIR server in the other cases. Possible values: active (default), revoked (if the RequestOrchestration has been deleted in its entirety), completed (when all chains of associated ProposalMedicationRequests have entered terminal state)"
* contained 1..*
* contained ^short = "Individual proposal items (LINCAProposalMedicationRequest). Will be instantiated on the Linked Care Platform."
* contained only LINCAProposalMedicationRequest
* intent = #proposal
* intent ^short = "The intent of a LINCARequestOrchestration is always to propose medications for prescription (order)."
* subject 1..1
* subject ^short = "Who created the proposal"
* subject only Reference(CareTeam or Organization or Patient or Practitioner or RelatedPerson)
* action 1..*
* action ^short = "Exactly one action has to be proposed for each contained resource"
* action.type 1..1
* action.type = #create
* action.type ^short = "The type of action proposed for a contained LINCAProposalMedicationRequest is always to \"create\" it"
* action.resource 1..1
* action.resource ^short = "A reference to the contained resource that is target of the action"
