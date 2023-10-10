Instance: Example-Full-LINCADispense
InstanceOf: LINCAMedicationDispense
Title: "Example LINCA Dispense: Completly fulfilled"
Description: "Final element in the order chain. Was completly fulfilled, order is now complete."
Usage: #example
* authorizingPrescription = Reference(Example-LINCAPrescription-ASIS)
* medication.concept = $MedCode#0004340
* performer.actor = Reference(Registered-Pharmacy-01)
* subject = Reference(Registered-Mobile-Care-Patient) 
* dosageInstruction[0].text = "Take 1 pill daily"
* type = #FFC

Instance: Example-Partial-LINCADispense
InstanceOf: LINCAMedicationDispense
Title: "Example LINCA Dispense: Partially fulfilled"
Description: "Final element in the order chain. Was only partially fulfilled, order is still open."
Usage: #example
* authorizingPrescription = Reference(Example-LINCAPrescription-MODIFIED)
* medication.concept = $MedCode#1293240
* performer.actor = Reference(Registered-Pharmacy-01)
* subject = Reference(Registered-Mobile-Care-Patient) 
* dosageInstruction[0].text = "Take 2 pill daily"
* type = #FFP
