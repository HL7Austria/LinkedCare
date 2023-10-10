Instance: Registered-Inpatient-01
InstanceOf: HL7ATCorePatient
Title: "Example Registered Patient 01: 'Walter Gürtelthier'"
Description: "Instance of dummy patient, who is inpatient at Haus Vogelsang"
Usage: #example
* identifier.system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier.value = "2410011234"
* active = true
* name.use = #official
* name.text = "Walter Gürtelthier"
* name.family = "Gürtelthier"
* name.given = "Walter"
* telecom.system = #phone
* telecom.value = "00436641234567"
* telecom.use = #mobile
* gender = #male
* birthDate = "2001-10-24"
* address.use = #home
* address.type = #both
* address.line = "Musterstrasse 123/4"
* address.city = "Vienna"
* address.postalCode = "1100"
* address.country = "AT"
* managingOrganization = Reference(PseudoeCard-Organization-Inpatient)

Instance: Registered-Inpatient-02
InstanceOf: HL7ATCorePatient
Title: "Example Registered Patient 02: 'Patrizia Platypus' "
Description: "Instance of dummy patient, who is inpatient at Haus Vogelsang"
Usage: #example
* identifier.system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier.value = "0707711234"
* active = true
* name.use = #official
* name.text = "Patrizia Platypus"
* name.family = "Platypus"
* name.given = "Patrizia"
* telecom.system = #phone
* telecom.value = "00436641234568"
* telecom.use = #mobile
* gender = #male
* birthDate = "1971-07-07"
* address.use = #home
* address.type = #both
* address.line = "Musterstrasse 123/4"
* address.city = "Vienna"
* address.postalCode = "1100"
* address.country = "AT"
* managingOrganization = Reference(PseudoeCard-Organization-Inpatient)

Instance: Registered-Mobile-Care-Patient
InstanceOf: HL7ATCorePatient
Title: "Example Registered Patient 03: Renate Rüssel-Olifant"
Description: "Instance of dummy patient, who is a client at Pflegedienst Immerdar"
Usage: #example
* identifier.system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier.value = "1008661234"
* active = true
* name.use = #official
* name.text = "Renate Rüssel-Olifant"
* name.family = "Rüssel-Olifant"
* name.given = "Renate"
* telecom.system = #phone
* telecom.value = "00436641234568"
* telecom.use = #mobile
* gender = #male
* birthDate = "1966-08-10"
* address.use = #home
* address.type = #both
* address.line = "Höchstädtplatz 6"
* address.city = "Vienna"
* address.postalCode = "1200"
* address.country = "AT"
* managingOrganization = Reference(PseudoeCard-Organization-Mobile)