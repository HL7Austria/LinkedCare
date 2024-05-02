Profile: LINCAMedicationDispense
Parent: MedicationDispense
Id: linca-dipsense-documentation
Title: "LINCA Dispense (LINCAMedicationDispense)"
Description: "Linked Care  Profile for dispense documentation. The dispense must be documented by the dispensing pharmacist and specify if an order was fulfilled completly or partially. The LINCA Dispense must have an LINCA Prescription as authorizingPrescription. All fields that are mentioned in the Differential Table are validated and processed by the Linked Care FHIR server. Other fields of the basic resource might be filled by the sender, but those will neither be validated, nor we ensure that those fields will be read or processed at any time."
* id ^short = "LinkedCare Dispense Id, assigned by the Linked Care Fhir server"
* meta ^short = "Metadata about the resource, assigned by the Linked Care Fhir server"
* medication 1..1 
* medication only CodeableReference(LINCAMeds)
* medication from $asp-liste
* medication ^short = "Medication that was dispensed, in conformance with ELGA CodeSystems (text-only, or text and number referencing one of the supported catalogs, as for example the PZN of the Austrian ASP list)."
* status = #completed
* status ^short = "A dispense ends the chain of the workflow. Therefore the status is fixed to 'completed'"
* authorizingPrescription 1..1
* authorizingPrescription only Reference(LINCAPrescriptionMedicationRequest)
* authorizingPrescription ^short = "Prescription that authorized dispense of this medication"
* performer.actor 1..1
* performer.actor only Reference(Organization)
* performer.actor ^short = "Reference to dispensing pharmacy (GDA index)"
* subject 1..1
* subject only Reference(HL7ATCorePatient)
* subject ^short = "Patient conform HL7 AT. Make sure the patient is identifiable somehow"
* supportingInformation ^short = "One element is reserved for reference to origin (LINCARequestOrchestration) assigned on LinkedCare Platform. Used to link prescription items back to the proposal header (LINCARequestOrchestration), filled-in by the Linked Care FHIR server if available."
* type ^short = "Possible values: FFC (First-fill complete for completly fulfilled orders), FFP (first-fill part fill, for partially fulfilled orders), RFP (re-fill partial, dispense is still not complete), RFC (re-fill complete, used to complete a partial (FFP, RFP) dispense)"
* dosageInstruction ^short = "Usually the dosage instructions are taken over from the authorizing prescription"
* dosageInstruction.doseAndRate.doseQuantity.code from $DoseForm
* dosageInstruction.text ^short = "In case of missing structured dosage instructions, at least free text instructions should be provided"
* note ^short = "Additional information for the receiver (e.g., caregiver, patient), e.g., differing dosage instructions if a replacement medication was dispensed"