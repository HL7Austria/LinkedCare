
Profile: LINCAPrescriptionMedicationRequest
Parent: MedicationRequest
Id: linca-prescription-medication-request
Title: "LINCA Prescription (LINCAPrescriptionMedicationRequest)"
Description: "Linked Care Profile for prescriptions. The prescriptions are created by the practicioner software but must be basedOn an assigned LINCA Proposal Item. The assigned practicioners can view, modify or cancel all of their assigned proposal items."
* identifier ^short = "Used for eMedID (if available)"
* status ^short = "Possible values: active (default), ended (stop administering this medication, once current package is empty), stopped (end administering the medication immediately), entered-in-error (cancellation)"
* intent ^short = "Possible values: order (default), original-order (adhoc-prescriptions)"
* basedOn 0..1
* basedOn only Reference(LINCAProposalMedicationRequest)   
* basedOn ^short = "Proposal item this prescription is based on. Leave empty for ad-hoc prescriptions, or if an existing prescription is to be corrected by this item (in this case, use the priorPrescription attribute)"
* performer 1..1
* performer only Reference(Practitioner) 
* performer ^short = "The authorizing practitioner for this prescription (identified by their OID according to GDA Index)"
* groupIdentifier ^short = "ID for the electric prescription (eRezeptID)"
* medication only CodeableReference(LINCAMeds) 
* medication from $asp-liste
* medication ^short = "Medication in conformance with ELGA CodeSystems (text-only, or text and number referencing one of the supported catalogs, as for example the PZN of the Austrian ASP)."
* subject only Reference(HL7ATCorePatient)
* subject ^short = "Each LINCAProposalMedicationRequest is associated with one patient. The patient data is conform to the HL7 Austria patient and must be clearly identifieable."
* supportingInformation ^slicing.rules = #open
* supportingInformation ^slicing.discriminator.type = #value
* supportingInformation ^slicing.discriminator.path = "text"
* supportingInformation ^slicing.ordered = false
* supportingInformation contains listref 0..1
* supportingInformation[listref] ^short = "Reference to origin (LINCAProposalRequestOrchestration) assigned on LinkedCare Platform. Used to link instantiated items back to their proposal header (LINCARequestOrchestration)."
* priorPrescription ^short = "In case of a modification, takes a reference to the prescription that has been replaced."
* dosageInstruction.doseAndRate.doseQuantity.code from $DoseForm