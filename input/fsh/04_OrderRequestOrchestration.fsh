
Profile: LINCARequestOrchestration
Parent: RequestOrchestration
Id: linca-full-order-list
Title: "LINCA Order (LINCARequestOrchestration)"
Description: "Linked Care Profile for the overall order. The LINCA Order serves as container for the individual placements. The placer's software creates the RequestOrchestration when (re)ordering medication."
* id ^short = "LinkedCare order ID, assigned by Linked Care FHIR server"
* status ^short = "Assigned by Linked Care FHIR server. Possible vlaues: active (default), revoked (if complete RequestOrchestration is deleted), completed (when all chains linking to a contained OrderMedicationRequest entered terminal state)  "
* contained 1..* 
* contained ^short = "Individual order items (LINCAOrderMedicationRequest). Will be instantiated on the Linked Care Platform."
* contained only LINCAOrderMedicationRequest
//* status #active or #revoked or #completed
* intent = #order
* intent ^short = "Intent of a LINCARequestOrchestration is always to oder medications."
* subject 1..1  
* subject ^short = "Who created the order"
* subject only Reference(CareTeam or Organization or Patient or Practitioner or RelatedPerson)

