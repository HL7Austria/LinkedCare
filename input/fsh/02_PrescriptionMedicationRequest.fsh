
Profile: LINCAPrescriptionMedicationRequest
Parent: MedicationRequest
Id: linca-prescription-medication-request
Title: "LINCA Prescription (LINCAPrescriptionMedicationRequest)"
Description: "Linked Care Profile for prescriptions. The prescriptions are created by the practicioner software but must be basedOn an assigned LINCA Order Item. The assigned practicioners can view, modify or cancel all of their assigned order items."
* identifier ^short = "Used for eMedID (if available)"
* status ^short = "Possible values: active (default), ended (stop administering ordered medication, once current package is empty), stopped (end administering the medication immediately), entered-in-error (cancellation)"
* intent ^short = "Possible values: order (default), original-order (adhoc-prescriptions)"
* basedOn 0..1
* basedOn only Reference(LINCAOrderMedicationRequest)   
* basedOn ^short = "Order item this prescription is based on. Leave empty for ad-hoc prescriptions, or if an existing prescription is to be corrected by this item (in this case, use the priorPrescription attribute)"
* performer 1..1
* performer only Reference(Practitioner) 
* performer ^short = "The authorizing practitioner for this order item (identified by their OID according to GDA Index)"
* groupIdentifier ^short = "ID for the electric prescription (eRezeptID)"
* medication only CodeableReference(LINCAMeds) 
* medication from $asp-liste
* medication ^short = "Medication in conformance with ELGA CodeSystems (text-only, or text and number referencing one of the supported catalogs, as for example the PZN of the Austrian ASP)."
* subject only Reference(HL7ATCorePatient)
* subject ^short = "Each LINCAOrderMedicationRequest is associated with one patient. The patient data is conform to the HL7 Austria patient and must be clearly identifieable."
* supportingInformation ^slicing.rules = #open
* supportingInformation ^slicing.discriminator.type = #value
* supportingInformation ^slicing.discriminator.path = "text"
* supportingInformation ^slicing.ordered = false
* supportingInformation contains orderref 0..1
* supportingInformation[orderref] ^short = "Reference to origin (LINCARequestOrchestration) assigned on LinkedCare Platform. Used to link instantiated order items back to their order (LINCARequestOrchestration)."
* priorPrescription ^short = "In case of a modification, takes a reference to the prescription that has been replaced."
* dosageInstruction.doseAndRate.doseQuantity.code from $DoseForm