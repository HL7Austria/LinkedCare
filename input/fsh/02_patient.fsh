/*
    Type: Profile for a new Resource
    About: Profile to create patient
    Created by: Lilly @ Arsonists Workshop
    May need this command more than once: Set-ExecutionPolicy Bypass -Scope Process -Force;
*/

Profile: HL7APatient
Parent: Patient
Id:     hl7at-patient-new //there exits naming conventions -> check website
Title: "Patient Profile" //do not do this in release.. title is human readable id for profile
Description: "Profile for a patient in AT; Based on FHIR Patient Resource; Desigend to store all necessary info" 
* identifier 3..* //change min value to 3
* photo 0..0 // remove foto from patient -> no pics allowed
* gender = AdministrativeGender#female (exactly) 

//invariants: constraints to profile; severity :declaration of how bad the error is if you violate the constriant
* birthDate obeys inv1

//slicing the identifier
* identifier ^slicing.rules = #openAtEnd
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.assigner.reference"


* identifier contains svnr 1..1

//define what svnr looks like
* identifier[svnr].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[svnr].type.coding.code = HL7V2#SS (exactly)
* identifier[svnr].type.coding.display = "Social Security Number" (exactly)
* identifier[svnr].system 1..1
* identifier[svnr].system = "urn:oid:123.456.789" (exactly)
* identifier[svnr].system ^short =  "Random filler for svn in austria"
* identifier[svnr].assigner.display = "Dachverband der Ö Sozialversicherungsträger" (exactly)
* identifier[svnr].assigner.reference = "https://www.gesundheit.gv.at" //link to oid

//extinsions: only way to expand a resource - everytihng else restricts
* extension contains PatientNationality named nationality 0..1
* extension[nationality] ^short = "Nationality of a patient"