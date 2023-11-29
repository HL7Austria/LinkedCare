Instance: Example-US016-Full-Dispense
InstanceOf: LINCAMedicationDispense
Title: "Ex0104 US016 LINCAMedicationDispense: Full Dispense"
Description: "Pharmacist Mag. Andreas Amsel, owner of the pharmacy Apotheke 'Zum frühen Vogel' has access to and permission in a pharmacist role in the LINCA system. When he is expected to fullfil medication orders for a customer Renate Rüssel-Olifant, and he has a LINCA order Id to go with a purchase her care giver Susanne Allzeit just made for her, then Mag. Andreas Amsel submits a dispense record for the order position in question."
Usage: #example
* id = "d6a2f68cd3f74c28b9dd9fa4ec014cc4"
* meta
  * versionId = "1"
  * lastUpdated = "2023-10-12T16:38:54.0125468+00:00"
* status = #completed
* medication.concept = $asp-liste#0031130 "Lasix 40 mg Tabletten"
* subject = Reference(Registered-Patient-Renate)
* performer.actor
  * identifier
    * system = "urn:oid:1.2.40.0.34.5.2"
    * value = "2.999.40.0.34.5.1.2"
  * display = "Apotheke 'Zum frühen Vogel'"
* authorizingPrescription = Reference(Ex0103-US010-Prescribe-As-is)
* type = $v3-ActCode#FFC
* dosageInstruction
  * sequence = 1
  * text = "1 pill daily"
  * timing.repeat
    * frequency = 1
    * period = 1
    * periodUnit = #d
  * doseAndRate
    * type = $dose-rate-type#ordered "Ordered"
    * doseQuantity 
      * value = 1 
      * code = #100000073665
      * system = $DoseForm