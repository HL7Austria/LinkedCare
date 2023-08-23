
Profile: LINCARequestOrchestration
Parent: RequestOrchestration
Id: lincaorder-order-request
Title: "LINCA Order (LINCARequestOrchestration)"
Description: "The placer's software creates the RequestOrchestration when (re)ordering medication."
* contained 1..* 
* contained ^short = "Individual order items (LINCAOrderMedicationRequest). Will be instantiated on the Linked Care Platform."
* contained only LINCAOrderMedicationRequest
* intent = #order
* subject 1..1  
* subject ^short = "Who created the order"
* subject only Reference(CareTeam or Organization)

