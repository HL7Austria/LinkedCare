
Profile: LINCARequestOrchestration
Parent: RequestOrchestration
Id: linca-full-order-list
Title: "LINCA Order (LINCARequestOrchestration)"
Description: "Linked Care Profile for the overall order. The LINCA Order serves as container for the individual placements. The placer's software creates the RequestOrchestration when (re)ordering medication."
* id ^short = "LinkedCare order ID, assigned by Linked Care FHIR server"
* status ^short = "Must be set to \"active\" when posting a new order. Assigned by Linked Care FHIR server in the other cases. Possible values: active (default), revoked (if the RequestOrchestration has been deleted in its entirety), completed (when all chains of associated OrderMedicationRequests have entered terminal state)"
* contained 1..*
* contained ^short = "Individual order items (LINCAOrderMedicationRequest). Will be instantiated on the Linked Care Platform."
* contained only LINCAOrderMedicationRequest
//* status #active or #revoked or #completed
* intent = #order
* intent ^short = "The intent of a LINCARequestOrchestration is always to order medications."
* subject 1..1
* subject ^short = "Who created the order"
* subject only Reference(CareTeam or Organization or Patient or Practitioner or RelatedPerson)

