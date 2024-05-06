Instance: LINCACapabilityStatement
InstanceOf: CapabilityStatement
Title: "LinkedCare Capability Statement"
Usage: #definition
* version = "1.3.0"
* name = "LinkedCare_FHIRCAAT_CapabilityStatement"
* status = #active
* experimental = true
* date = "2023-11-01"
* description = "LOIDL Consulting HL7/FHIR R5 Gateway"
* kind = #requirements
* fhirVersion = #5.0.0
* format[0] = #xml
* format[+] = #json
* rest.mode = #server
* rest.resource[0].type = #Patient
* rest.resource[=].profile = "http://fhir.hl7.at/linkedcare/StructureDefinition/at-core-patient"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].versioning = #versioned
* rest.resource[=].readHistory = true
* rest.resource[=].updateCreate = true
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[+].type = #RequestOrchestration
* rest.resource[=].profile = "http://fhir.hl7.at/linkedcare/StructureDefinition/linca-full-proposal-list"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].versioning = #versioned
* rest.resource[=].readHistory = true
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[+].type = #MedicationRequest
* rest.resource[=].supportedProfile[0] = "http://fhir.hl7.at/linkedcare/StructureDefinition/linca-proposal-medication-request"
* rest.resource[=].supportedProfile[+] = "http://fhir.hl7.at/linkedcare/StructureDefinition/linca-prescription-medication-request"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].versioning = #no-version
* rest.resource[=].readHistory = true
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[+].type = #MedicationDispense
* rest.resource[=].profile = "http://fhir.hl7.at/linkedcare/StructureDefinition/linca-dipsense-documentation"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].versioning = #no-version
* rest.resource[=].readHistory = true
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.operation[0].name = "proposal_status"
* rest.operation[=].definition = "proposalStatusOperation"
* rest.operation[+].name = "proposals_to_prescribe"
* rest.operation[=].definition = "proposalsToPrescribeOperation"
* rest.operation[+].name = "prescription"
* rest.operation[=].definition = "prescriptionOperation"
* rest.operation[+].name = "prescriptions_to_dispense"
* rest.operation[=].definition = "prescriptionsToDispenseOperation"
* rest.operation[+].name = "prescription_to_dispense"
* rest.operation[=].definition = "prescriptionToDispenseOperation"
* rest.operation[+].name = "patient_initial_prescriptions"
* rest.operation[=].definition = "patientInitialPrescriptionsOperation"

Instance: proposalStatusOperation
InstanceOf: OperationDefinition
Title: "proposal-status"
Description: "Invoke this operation with GET. It returns a Bundle containing all original proposals for the given lc_id and the linked resource chains (LINCAProposalMedicationRequest, LINCAPrescriptionMedicationRequest, LINCAMedicationDispense)" 
Usage: #definition
* name = "proposal_status"
* status = #active
* kind = #operation
* code = #proposal-status
* system = true
* type = false
* instance = false
* parameter[0].name = #lc_id
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The id (Guid) of the LINCA proposal list (LINCARequestOrchestration)" 
* parameter[=].type = #id


Instance: proposalsToPrescribeOperation
InstanceOf: OperationDefinition
Title: "proposals-to-prescribe"
Description: "Invoke this operation with GET. It returns a Bundle containing all (active/not cancelled) proposals from the last 90 days assigned to the requesting doctor and the linked resource chains (LINCAProposalMedicationRequest, LINCAPrescriptionMedicationRequest, LINCAMedicationDispense)" 
Usage: #definition
* name = "proposals_to_prescribe"
* status = #active
* kind = #operation
* code = #proposals-to-prescribe
* system = true
* type = false
* instance = false

Instance: prescriptionOperation
InstanceOf: OperationDefinition
Title: "prescription"
Description: "Invoke this operation with POST. As request body provide a Bundle containing one or more LINCAPrescriptionMedicationRequest resources with equal groupIdentifier for the same patient." 
Usage: #definition
* name = "prescription"
* status = #active
* kind = #operation
* code = #prescription
* system = false
* type = true
* instance = false

Instance: prescriptionsToDispenseOperation
InstanceOf: OperationDefinition
Title: "prescriptions-to-dispense"
Description: "Invoke this operation with GET. It returns a Bundle containing all (active/not cancelled) prescriptions from the last 90 days assigned to the requesting pharmacy and the linked resource chains (LINCAProposalMedicationRequest, LINCAPrescriptionMedicationRequest, LINCAMedicationDispense)" 
Usage: #definition
* name = "prescriptions_to_dispense"
* status = #active
* kind = #operation
* code = #prescriptions-to-dispense
* system = true
* type = false
* instance = false

Instance: prescriptionToDispenseOperation
InstanceOf: OperationDefinition
Title: "prescription-to-dispense"
Description: "Invoke this operation with GET. It returns a Bundle of all prescriptions that contain the given id in the groupIdentifier field and the linked resource chains (LINCAProposalMedicationRequest, LINCAPrescriptionMedicationRequest, LINCAMedicationDispense)" 
Usage: #definition
* name = "prescription_to_dispense"
* status = #active
* kind = #operation
* code = #prescription-to-dispense
* system = true
* type = false
* instance = false
* parameter.name = #id
* parameter.use = #in
* parameter.min = 1
* parameter.max = "1"
* parameter.documentation = "The LinkedCare prescription-id or eRezept-Id, extracted from the scanned Datamatrix-code"
* parameter.type = #string

Instance: patientInitialPrescriptionsOperation
InstanceOf: OperationDefinition
Title: "patient-initial-prescriptions"
Description: "Invoke this operation with GET. It returns a Bundle of all initial prescriptions issued within the last 90 days for the patient identified by the parameter svnr (social insurance number) and the linked resource chains (LINCAPrescriptionMedicationRequest, LINCAMedicationDispense)"
Usage: #definition
* name = "patient_initial_prescriptions"
* status = #active
* kind = #operation
* code = #patient-initial-prescriptions
* system = true
* type = false
* instance = false
* parameter.name = #svnr
* parameter.use = #in
* parameter.min = 1
* parameter.max = "1"
* parameter.documentation = "The social insurance number of the patient" 
* parameter.type = #string