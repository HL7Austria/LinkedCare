Instance: Registered-Patient-Guenter
InstanceOf: HL7ATCorePatient
Title: "Registered Patient 01: 'Günter Gürtelthier'"
Description: "Instance of fictitious patient, who is an inpatient at Haus Vogelsang"
Usage: #example
* id = "6800bda462034a9a8123e3dc48c61d53"
* identifier.system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier.value = "2410011234"
* active = true
* name.use = #official
* name.text = "Günter Gürtelthier"
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
* managingOrganization
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.1.1.1"
  * display = "Haus Vogelsang"

Instance: Registered-Patient-Patrizia
InstanceOf: HL7ATCorePatient
Title: "Registered Patient 02: 'Patrizia Platypus' "
Description: "Instance of fictitious patient, who is inpatient at Haus Vogelsang"
Usage: #example
* id = "d14e6251b3c545828f7e44cdc6faf2fb"
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
* gender = #female
* birthDate = "1971-07-07"
* address.use = #home
* address.type = #both
* address.line = "Musterstrasse 123/4"
* address.city = "Vienna"
* address.postalCode = "1100"
* address.country = "AT"
* managingOrganization
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.1.1.1"
  * display = "Haus Vogelsang"

Instance: Registered-Patient-Renate
InstanceOf: HL7ATCorePatient
Title: "Registered Patient 03: Renate Rüssel-Olifant"
Description: "Instance of fictitious patient, who is a client at Pflegedienst Immerdar"
Usage: #example
* id = "ee8d340312484aaca84774b2a0d53533"
* identifier.system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier.value = "1238100866"
* active = true
* name.use = #official
* name.text = "Renate Rüssel-Olifant"
* name.family = "Rüssel-Olifant"
* name.given = "Renate"
* telecom.system = #phone
* telecom.value = "00436641234568"
* telecom.use = #mobile
* gender = #female
* birthDate = "1966-08-10"
* address.use = #home
* address.type = #both
* address.line = "Höchstädtplatz 6"
* address.city = "Vienna"
* address.postalCode = "1200"
* address.country = "AT"
* managingOrganization 
  * identifier
    * system = "urn:oid:1.2.40.0.34"
    * value = "2.999.40.0.34.1.1.3"
  * display = "Pflegedienst Immerdar"