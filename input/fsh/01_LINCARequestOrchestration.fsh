
Profile: LINCARequestOrchestration
Parent: RequestOrchestration
Id: linca-full-proposal-list
Title: "LINCA Proposal List (LINCARequestOrchestration)"
Description: "Linked Care Profile for the overall proposal. The LINCA Proposal List serves as container for the individual placements. The placer's software creates the RequestOrchestration when (re)ordering medication."
* id ^short = "LinkedCare proposal ID, assigned by Linked Care FHIR server"
* status ^short = "Must be set to \"active\" when posting a new proposal. Assigned by Linked Care FHIR server in the other cases. Possible values: active (default), revoked (if the RequestOrchestration has been deleted in its entirety), completed (when all chains of associated ProposalMedicationRequests have entered terminal state)"
* contained 1..*
* contained ^short = "Individual proposal items (LINCAProposalMedicationRequest). Will be instantiated on the Linked Care Platform."
* contained only LINCAProposalMedicationRequest
* intent = #order
* intent ^short = "The intent of a LINCARequestOrchestration is always to propose medications."
* subject 1..1
* subject ^short = "Who created the proposal"
* subject only Reference(CareTeam or Organization or Patient or Practitioner or RelatedPerson)

