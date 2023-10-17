Instance: Example-LINCAOrder-No-Pharmacy
InstanceOf: RequestOrchestration
Title: "Example LINCA Order: Single medication without pharmacy"
Description: "An employee of a mobile care facility ordered a single medication for a single patient."
Usage: #example
* intent = #order
* status = #active 
* contained[0] = Example-inline-LINCAOrderItem-Single
* subject = Reference(Registered-Care-Mobile) 

Instance: Example-LINCAOrder-With-Pharmacy
InstanceOf: RequestOrchestration
Title: "Example LINCA Order: Single medication with pharmacy"
Description: "An employee of a mobile care facility ordered a refill for a single medication for a single patient."
Usage: #example
* intent = #order
* status = #active 
* contained[0] = Example-inline-LINCAOrderItem-Repeat
* subject = Reference(Registered-Care-Mobile) 

Instance: Example-Inpatient-Facility-LINCAOrder
InstanceOf: RequestOrchestration
Title: "Example LINCA Order: Inpatient facility"
Description: "An employee of an inpatient care facility ordered for all their patients medications."
Usage: #example
* intent = #order
* status = #active 
* contained[0] = Example-inline-LINCAOrderItem-Inpatient-Item1
* contained[+] = Example-inline-LINCAOrderItem-Inpatient-Item2
* contained[+] = Example-inline-LINCAOrderItem-Inpatient-Item3
* subject = Reference(Registered-Care-Inpatient) 