


Profile: LINCARequestOrchestration
Parent: RequestOrchestration
Id: lincaorder-order-request
Title: "Order Request"
Description: "FHIR Base Profile for Medication List when ordering in LINCA system"
* contained 1..* 
//* contained only Reference(LINCAOrderMedicationRequest)
// needs to be url * instantiatesCanonical only LINCAOrderActivity
* intent = #order
* subject 1..1  
/*



Instance: OrderTaskExample
InstanceOf: Task
Usage: #example
* status = #draft
* intent = #order
* code.text = "Medication Order"
* focus = Reference(LICAOrderMedicationRequest/medX)
* for = Reference(Patient/1234010123)
* authoredOn = "2016-03-10T22:39:32-04:00"
* lastModified = "2016-03-10T22:39:32-04:00"
* requester = Reference(CareTeam/example)
* output = Reference(LICAPrescriptionMedicationRequest/medX)
*/

