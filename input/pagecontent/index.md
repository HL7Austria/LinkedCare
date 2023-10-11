Linked Care simplifies the flow of information and networks all parties involved with the aim of enabling people in the health care professions to work together with the patients themselves, their relatives, as well as doctors, therapists and pharmacies online in an efficient, secure and low-threshold manner directly with optimal IT support. Operation should be simple and save time due to a high degree of automation; for the clients and their relatives, this results in additional security for mobile care and assistance.

### Use Cases
- Order Prescription (mobile care team, inpatient care, blister pharmacy, practicioner) via PostRequest
- Notify filler that presciption was ordered 
- View list of medication (for dispense) per  client (Hier muss die Anordung für Übernahme der Dispension)
- View list of orders 
- Edit orders
- Approvial of order (validity) - ideally this triggers an automatic update of the medication list (each medication is signed)
- Order Medication based on validated order from practicioner from pharmacy (PostEvent)
- Pharmacy gets "shopping cart" with validated orders 
- Pharmacy can check with practicioners regarding changes (i.e. generics) - changes trigger 4 and 5. 
- Pharmacy prepares medication for dispense 
- Medications can be picked up from pharmacy by either the care team, the client, a relative or similar (QR-Code, eCard or alternative) 
- Request of correction of medication

Open Issues: Individual medication, missing dosage, authorization by chief of medicine

### Medication Order CareTeam Example
<a href="LINCA_resources_details.svg" target="_blank" style="border:none"><img src="LINCA_resources_details.svg" alt="LINCA Resources, detailed" width ="90%" style="display:block;margin-left:auto;margin-right:auto" /></a>