Instance: Ex0103-US010-Prescribe-As-is
InstanceOf: LINCAPrescriptionMedicationRequest
Title: "Ex0103 US010 LINCAPrescriptionMedicationRequest: Prescribe as proposed"
Description: "Practitioner Dr. Wibke Würm is designated practicioner for Renate Rüssel-Olifant.  They decide that the received proposal is ok and issue a prescription for the medication."
Usage: #example
* id = "331c530a6377444a9e78a8a27a2ec35c"
* meta
  * versionId = "1"
  * lastUpdated = "2023-10-12T16:10:21.3817192+00:00"
* identifier
  * system = "eMed-ID"
  * value = "XYZ1 ABC2 UVW3"
* basedOn = Reference(Ex0102-Instance-LINCAProposalItem-US001)
* groupIdentifier
  * system = "eRezept-ID"
  * value = "ASDF GHJ4 KL34"
* status = #active
* intent = #order
* medication.concept = $asp-liste#0031130 "Lasix 40 mg Tabletten"
* subject = Reference(Registered-Patient-Renate)
* informationSource
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.1.1.3"
  * display = "Pflegedienst Immerdar"
* supportingInformation = Reference(Ex0100-LINCARequestOrchestration-US001)
* requester
  * identifier
    * system = "urn:oid:2.999.40.0.34.1.1.3"
    * value = "ALLZEIT_BEREIT"
  * display = "DGKP Susanne Allzeit"
* performer
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.3.1.1"
  * display = "Dr. Wibke Würm"
* dosageInstruction
  * sequence = 1
  * text = "1 pill daily"
  * timing.repeat
    * boundsDuration = 1 #d
    * frequency = 1
    * period = 1
    * periodUnit = #d
  * doseAndRate
    * type = $dose-rate-type#ordered "Ordered"
    * doseQuantity = 1 #100000073665

Instance: Ex0207-US011-Modify-Medication
InstanceOf: LINCAPrescriptionMedicationRequest
Title: "Ex0207 US011 LINCAPrescriptionMedicationRequest: Change medication in prescription"
Description: "Dr. Silvia Spitzmaus does not agree with the proposed medication for Patient Walter Gürtelthier, hence she issues a prescription for a different medication."
Usage: #example
* id = "091f1a9d0d64415c91f67caccc3f3848"
* meta
  * versionId = "1"
  * lastUpdated = "2023-10-12T13:02:58.6460419+00:00"
* identifier
  * system = "eMed-ID"
  * value = "CVF1 23ER USW1"
* basedOn = Reference(Ex0205-US004-Update-basedOn)
* groupIdentifier
  * system = "eRezept-ID"
  * value = "ABCD 1234 EFGH"
* status = #active
* intent = #order
* medication.concept = $asp-liste#0059714 "Ultralan - Salbe"
* subject = Reference(Registered-Patient-Guenter)
* informationSource
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.1.1.1"
  * display = "Haus Vogelsang"
* supportingInformation = Reference(Ex0200-LINCARequestOrchestration-US003)
* requester
  * identifier
    * system = "urn:oid:2.999.40.0.34.1.1.1"
    * value = "ECHT_SPECHT"
  * display = "DGKP Walter Specht"
* performer
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.3.1.3"
  * display = "Dr. Silvia Spitzmaus"
* dosageInstruction.text = "apply 1x daily to the inflicted area"
* dispenseRequest.dispenser
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.5.1.3"
  * display = "Apotheke 'Zum Linden Wurm'"

Instance: Example-US012-Modify-Dosage
InstanceOf: LINCAPrescriptionMedicationRequest
Title: "Ex0208 US012 LINCAPrescriptionMedicationRequest: Modify Dosage"
Description: "After issuing the prescription for Walter Gürtelthier, Dr. Silvia Spitzmaus realizes the dosage needs adjustment. ence, she submits an update to that prescription with new dosage instructions."
Usage: #example
* id = "2f9de5b899a54392b9b39c440aca0887"
* meta
  * versionId = "1"
  * lastUpdated = "2023-10-12T14:31:02.1031874+00:00"
* identifier
  * system = "eMed-ID"
  * value = "CVF1 23ER USW1"
* priorPrescription = Reference(Ex0207-US011-Modify-Medication)
* groupIdentifier
  * system = "eRezept-ID"
  * value = "ABCD 1234 EFGH"
* status = #active
* intent = #order
* medication.concept = $asp-liste#0059714 "Ultralan - Salbe"
* subject = Reference(Registered-Patient-Guenter)
* informationSource
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.1.1.1"
  * display = "Haus Vogelsang"
* performer
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.3.1.3"
  * display = "Dr. Silvia Spitzmaus"
* dosageInstruction.text = "apply twice daily to the inflicted area. once in the morning and once in the evening"