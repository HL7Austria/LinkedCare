


Profile: LINCARequestOrchestration
Parent: RequestOrchestration
Id: lincaorder-order-request
Title: "Order Request"
Description: "FHIR Base Profile for Medication List when ordering in LINCA system. Each medication is a contained resource without an ID. On the LICA Server the contained resources are transformed individual LINCAOrderMedicationRequests with an ID."
* contained 1..* 
* groupIdentifier ^short = "Identifier assigned by LINCA platform that is propagated to each medication request to maintain order encapsulation."
* intent = #order
* subject 1..1  

