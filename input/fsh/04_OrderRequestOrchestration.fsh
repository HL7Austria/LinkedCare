
Profile: LINCARequestOrchestration
Parent: RequestOrchestration
Id: linca-full-order-list
Title: "LINCA Order (LINCARequestOrchestration)"
Description: "The placer's software creates the RequestOrchestration when (re)ordering medication."
* contained 1..* 
* contained ^short = "Individual order items (LINCAOrderMedicationRequest). Will be instantiated on the Linked Care Platform."
* contained only LINCAOrderMedicationRequest
//* status #active or #revoked or #completed
* intent = #order
* subject 1..1  
* subject ^short = "Who created the order"
* subject only Reference(CareTeam or Organization or Patient or Practitioner or RelatedPerson)

