Linked Care is a comprehensive digital system designed to streamline information flow and accessibility in mobile care, assistance, and therapy. It addresses the growing demand for healthcare services due to demographic changes while facing fewer available health professionals. The system simplifies information exchange and connects all involved parties, including patients, caregivers, doctors, therapists, and pharmacies, in an efficient and secure online platform with optimal IT support. Linked Care aims to enhance collaboration, reduce workload, and improve care quality by standardizing documentation and promoting interoperability across diverse care settings. The system offers numerous advantages, including increased autonomy for clients, streamlined information access for caregivers, improved engagement for patients and their families, and enhanced integration of digital services for healthcare providers.

### Aims and Open Issues
#### Standard for Medication Ordering
This Implementation Guide (IG) defines a clear and consistent way to order medications through the Linked Care platform. The presented  FHIR artifacts cover the essential steps for each user (referred to as an "actor") to ensure a reliable medication ordering process.

#### Target Audience
We aimed to make this IG a practical tool for software developers implementing the platform, actors interacting with it, and anyone interested in Linked Care. Hence, to better explain the defined standard, the IG includes practical user stories that illustrate real-world workflows and detailed system information, making it easier for everyone to understand and seamlessly integrate the platform.

#### Features not included in this version
Private prescriptions, authorization by chief of medicine, notifications to order placer in case of absence of the filler

### Workflow and Resource Interaction
This IG outlines a workflow involving three key actors: Actor Care, Actor Doctor, and Actor Pharmacy. Actor Care initiates the process by ordering medication, resulting in a LINCARequestOrchestration (order header) containing one or more inline LINCAProposalMedicationRequest — one for each medication (order positions). Hence, there might be multiple for one client.
In the LINCARequestOrchestration, the "subject" attribute refers to the sending organization. In the order positions, which are of type LINCAProposalMedicationRequest, the "subject" attribute refers to the patient, and the "performer" attribute refers to the designated practitioner. 
After submitting the LINCARequestOrchestration, the Linked Care FHIR server creates instances for each contained LINCAProposalMedicationRequest. Those are linked to the original order header using the "supportingInformation" attribute. Note: The patient resource is limited to supporting only HL7ATCore Patients.

Next, the Actor Doctor, the designated practitioner, fetches all relevant LINCAProposalMedicationRequest. They can only access and modify LINCAProposalMedicationRequest designated to them. 
Amongst others, the Actor Doctor can adjust dosage/medication or prescribe an immediate stop to medication intake. 
Once the Actor Doctor authorizes an order item, they create a LINCAPrescriptionMedicationRequest. The original LINCAProposalMedicationRequest is now a reference in the "basedOn" attribute, and a back-reference to the LINCARequestOrchestration once again in the "supportingInformation" attribute. The LINCAPrescriptionMedicationRequest includes optional attributes like "groupIdentifier" (eRezept-ID) and "identifier" (eMed-ID).

If the Actor Care has specified a pharmacy (Actor Pharmacy) in the "dispenseRequest" attribute, the designated Actor Pharmacy can fetch the LINCAPrescriptionMedicationRequest and prepare the dispense.
The Actor Pharmacy must create a LINCAMedicationDispense to document the dispensing process and complete the chain. The "authorizingPrescription" attribute in LINCAMedicationDispense refers to the LINCAPrescriptionMedicationRequest, with the "performer.actor" attribute representing the dispensing Actor Pharmacy. 
Conversely, Actor Care receives a datamatrix code for pickup, if no specific pharmacy is designated. The information necessary for the LINCAMedicationDispense is retrieved from the datamatrix code using the prescription id contained therein.

We depict this in the following graph:

<a href="LINCA_resources_details.svg" target="_blank" style="border:none"><img src="LINCA_resources_details.svg" alt="LINCA Resources, detailed" width ="90%" style="display:block;margin-left:auto;margin-right:auto" /></a>