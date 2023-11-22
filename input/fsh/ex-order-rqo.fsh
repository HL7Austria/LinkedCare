Instance: Ex0100-LINCARequestOrchestration-US001
InstanceOf: LINCARequestOrchestration
Title: "Ex0100 US001 LINCARequestOrchestration: Single medication without pharmacy"
Description: "LINCARequestOrchestration created by DGKP Susanne Allzeits. It contains the single medication proposal for her client Renate Rüssel-Olifant without a specified pharmacy for pickup."
Usage: #example
* meta
  * versionId = "1"
  * lastUpdated = "2023-10-12T10:23:18.6999576+00:00"
* id = "bfa0d45270674e0794b694f2892cb1c0"
* contained = Ex0101-inline-LINCAProposalItem-US001
* status = #active
* intent = #proposal
* subject
  * identifier
    * system = "urn:oid:1.2.40.0.34.5.2"
    * value = "2.999.40.0.34.1.1.3"
  * display = "Pflegedienst Immerdar"
* action.type = #create
* action.resource = Reference(04aa30f1bd3a415c8e5a2fb682c57b19)

Instance: Ex0200-LINCARequestOrchestration-US003
InstanceOf: LINCARequestOrchestration
Title: "Ex0200 US003 LINCARequestOrchestration: Minimalistic Inpatient"
Description: "DGKP Walter Specht submits LINCARequestOrchestration containing individual proposal items and specifies a pharmacy for pickup. Each item consists of 1 medication for a single patient. Hence, if one patient needs multiple medications, each must be an individual proposal item."
Usage: #example
* meta
  * versionId = "1"
  * lastUpdated = "2023-10-12T10:25:51.1456473+00:00"
* id = "c13972d2294549c7bd29e924cbf0ce41"
* contained[0] = Ex0201-inline-LINCAProposalItem-US003-Item1
* contained[+] = Ex0202-inline-LINCAProposalItem-US003-Item2
* status = #active
* intent = #proposal
* subject
  * identifier
    * system = "urn:oid:1.2.40.0.34.5.2"
    * value = "2.999.40.0.34.1.1.1"
  * display = "Haus Vogelsang"
* action[0].type = #create
* action[=].resource = Reference(bfa0d45270674e0794b694f2892cb1c0)
* action[+].type = #create
* action[=].resource = Reference(ef7c1f512c504a1a932c2f90ed39d5d5)

