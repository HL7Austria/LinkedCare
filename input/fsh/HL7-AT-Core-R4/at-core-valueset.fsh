/*##############################################################################
# Type:       FSH-File for an FHIR® Profile
# About:      HL7® Austria FHIR® Core Profile for ValueSet.
# Created by: HL7® Austria, TC FHIR®
##############################################################################*/

Profile:        HL7ATCoreValueSet
Parent:         ValueSet
Id:             at-core-valueset
Title:          "HL7® AT Core ValueSet Profile"
Description:    "HL7® Austria FHIR® Core Profile for valuesets in Austria.
The HL7® AT Core ValueSet is based upon the core FHIR® ValueSet Resource and defines the use of the OID extension."


* compose.include.extension contains SystemOID named systemOID 0..1
* compose.include.extension[systemOID] ^short = "OID of the system"
* compose.include.extension[systemOID] ^definition = "Alternate representation of the system of a code as OID."
* expansion.contains.extension contains SystemOID named systemOID 0..1
* expansion.contains.extension[systemOID] ^short = "OID of the system" 
* expansion.contains.extension[systemOID] ^definition = "Alternate representation of the system of a code as OID."