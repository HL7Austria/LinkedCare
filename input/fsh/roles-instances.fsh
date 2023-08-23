Instance: ExamplePractitioner-01
InstanceOf: Practitioner
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-08-01T18:23:34.0949615+02:00"
* identifier.system = "urn:oid:1.2.40.0.34.5.2"
* identifier.value = "1.2.40.0.34.3.2.49960"
* active = true
* name.family = "TRAXLER"
* name.given = "HANNES"
* name.prefix = "Ass.-Prof. Dr."
* gender = #unknown
* address.line = "Neue-Welt-Gasse 19/5"
* address.city = "Wien"
* address.state = "Wien"
* address.postalCode = "1130"
* address.country = "AT"

Instance: Patient-01
InstanceOf: HL7ATCorePatient
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-08-02T15:37:52.7253728+02:00"
* name.text = "Hubermeier Hermann"
* name.family = "Hubermeier"
* name.given[0] = "Hermann"
* name.given[+] = "Alois"
* name.given[+] = "Josef"
* birthDate = "1940-05-01"
* gender = #unknown
* managingOrganization = Reference(1.2.40.0.34.3.1.10193) "Caritas Seniorenwohnhaus Wies"

Instance: Patient-02
InstanceOf: HL7ATCorePatient
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-08-02T15:37:52.6077632+02:00"
* identifier.system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier.value = "1122010350"
* active = true
* name.use = #official
* name.text = "MSc Walter Musterpatient"
* name.family = "Musterpatient"
* name.given[0] = "Walter"
* name.given[+] = "Maximilian"
* name.prefix = "MSc"
* name.suffix = "BSc"
* telecom.system = #phone
* telecom.value = "00436641234567"
* telecom.use = #mobile
* gender = #male
* birthDate = "1950-03-01"
* address.use = #home
* address.type = #both
* address.line = "Musterstrasse 123/4"
* address.city = "Vienna"
* address.postalCode = "1100"
* address.country = "AT"
* managingOrganization = Reference(Organization/1) "Demo Org"

Instance: Patient-03
InstanceOf: HL7ATCorePatient
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-08-02T15:37:52.7185006+02:00"
* identifier.system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier.value = "1122010440"
* active = true
* name.text = "Ingeborg Musterpatientin"
* name.family = "Musterpatientin"
* name.given = "Ingeborg"
* gender = #female
* birthDate = "1940-04-01"
* managingOrganization = Reference(1.2.40.0.34.3.1.10193) "Caritas Seniorenwohnhaus Wies"

Instance: Patient-04
InstanceOf: HL7ATCorePatient
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-08-02T15:37:52.7324478+02:00"
* identifier.system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier.value = "2233010649"
* name.family = "Guiliani"
* name.given = "Francesco"
* birthDate = "1949-06-01"
* gender = #unknown
* managingOrganization = Reference(1.2.40.0.34.3.1.10193) "Caritas Seniorenwohnhaus Wies"