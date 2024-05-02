Instance: LINCACapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition
* contained[0] = proposalStatusOperation
* contained[+] = proposalsToPrescribeOperation
* contained[+] = prescriptionOperation
* contained[+] = prescriptionsToDispenseOperation
* contained[+] = prescriptionToDispenseOperation
* contained[+] = patientInitialPrescriptionsOperation
* version = "1.3.0"
* name = "Linked Care FHIRCAAT Capability Statement"
* status = #active
* experimental = true
* date = "2023-11-01"
* description = "LOIDL Consulting HL7/FHIR R5 Gateway"
* kind = #instance
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
* rest.resource[=].profile = "http://fhir.hl7.at/linkedcare/StructureDefinition/linca-proposal-medication-request"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].versioning = #no-version
* rest.resource[=].readHistory = true
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[+].type = #MedicationRequest
* rest.resource[=].profile = "http://fhir.hl7.at/linkedcare/StructureDefinition/linca-prescription-medication-request"
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
* rest.operation[0].name = "proposal-status"
* rest.operation[=].definition = "#proposalStatusOperation"
* rest.operation[+].name = "proposals-to-prescribe"
* rest.operation[=].definition = "#proposalsToPrescribeOperation"
* rest.operation[+].name = "prescription"
* rest.operation[=].definition = "#prescriptionOperation"
* rest.operation[+].name = "prescriptions-to-dispense"
* rest.operation[=].definition = "#prescriptionsToDispenseOperation"
* rest.operation[+].name = "prescription-to-dispense"
* rest.operation[=].definition = "#prescriptionToDispenseOperation"
* rest.operation[+].name = "patient-initial-prescriptions"
* rest.operation[=].definition = "#patientInitialPrescriptionsOperation"

Instance: proposalStatusOperation
InstanceOf: OperationDefinition
Usage: #inline
* name = "proposal-status"
* status = #active
* kind = #query
* code = #proposal-status
* system = true
* type = false
* instance = false
* parameter.name = #lc_id
* parameter.use = #in
* parameter.min = 1
* parameter.max = "1"
* parameter.type = #id

Instance: proposalsToPrescribeOperation
InstanceOf: OperationDefinition
Usage: #inline
* name = "proposals-to-prescribe"
* status = #active
* kind = #operation
* code = #proposals-to-prescribe
* system = true
* type = false
* instance = false

Instance: prescriptionOperation
InstanceOf: OperationDefinition
Usage: #inline
* name = "prescription"
* status = #active
* kind = #operation
* code = #prescription
* system = false
* type = true
* instance = false

Instance: prescriptionsToDispenseOperation
InstanceOf: OperationDefinition
Usage: #inline
* name = "prescriptions-to-dispense"
* status = #active
* kind = #operation
* code = #prescriptions-to-dispense
* system = true
* type = false
* instance = false

Instance: prescriptionToDispenseOperation
InstanceOf: OperationDefinition
Usage: #inline
* name = "prescription-to-dispense"
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
* parameter.type = #string

Instance: patientInitialPrescriptionsOperation
InstanceOf: OperationDefinition
Usage: #inline
* name = "patient-initial-prescriptions"
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
* parameter.type = #string