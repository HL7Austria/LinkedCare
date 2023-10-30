Instance: undefined
InstanceOf: CapabilityStatement
Usage: #definition
* meta.lastUpdated = "2023-10-25T15:39:18.7959917+02:00"
* contained[0] = proposalStatusOperation
* contained[+] = proposalsToPrescribeOperation
* contained[+] = prescriptionsToDispenseOperation
* contained[+] = prescriptionToDispenseOperation
* url = "https://localhost:8084/metadata"
* version = "1.2.0"
* name = "Linked Care FHIRCAAT Capability Statement"
* status = #active
* experimental = true
* date = "2023-05-21"
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
* rest.resource[=].updateCreate = false
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
* rest.operation[+].name = "prescriptions-to-dispense"
* rest.operation[=].definition = "#prescriptionsToDispenseOperation"
* rest.operation[+].name = "prescription-to-dispense"
* rest.operation[=].definition = "#prescriptionToDispenseOperation"

Instance: proposalStatusOperation
InstanceOf: OperationDefinition
Usage: #inline
* name = "proposal-status"
* status = #active
* kind = #query
* code = #proposal-status
* system = false
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
* kind = #query
* code = #proposals-to-prescribe
* system = false
* type = false
* instance = false

Instance: prescriptionsToDispenseOperation
InstanceOf: OperationDefinition
Usage: #inline
* name = "prescriptions-to-dispense"
* status = #active
* kind = #query
* code = #prescriptions-to-dispense
* system = false
* type = false
* instance = false

Instance: prescriptionToDispenseOperation
InstanceOf: OperationDefinition
Usage: #inline
* name = "prescription-to-dispense"
* status = #active
* kind = #query
* code = #prescription-to-dispense
* system = false
* type = false
* instance = false
* parameter.name = #id
* parameter.use = #in
* parameter.min = 1
* parameter.max = "1"
* parameter.type = #string