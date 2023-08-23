Instance: temp-dispense-ex
InstanceOf: LINCAMedicationDispense
Usage: #example
* authorizingPrescription = Reference(temp-presc-ex)
* medication.concept = $MedCode#981417
* performer.actor = Reference(Organization/pharmacy-01) "Einhornapotheke"
* subject = Reference(Patient-02) 
* dosageInstruction[0].text = "Take 2 pills daily"
