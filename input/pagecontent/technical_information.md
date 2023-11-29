### Endpoints

<table class="table table-striped">
    <thead>
        <tr class="active">
            <th scope="col">Hostname</th>
            <th scope="col">Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>fhir5-d.linkedcare.at</td>
            <td>Development cluster gateway</td>
        </tr>
        <tr>
            <td>fhir5-q.linkedcare.at</td>
            <td>Q/A cluster gateway</td>
        </tr>
        <tr>
            <td><em>(to be defined)</em></td>
            <td>Production cluster gateway</td>
        </tr>
    </tbody>
</table>

### Validation Messages
All REST endpoints will return the usual range of <a target="_blank" href="https://http.cat/">http status codes</a> back to the client. Implementations <em>should</em> guarantee, that in case of http status code <a target="_blank" href="https://www.rfc-editor.org/rfc/rfc9110.html#name-400-bad-request">400 Bad Request</a> and also in case of http status code <a target="_blank" href="https://www.rfc-editor.org/rfc/rfc9110.html#name-409-conflict">Conflict</a>, the response body will contain an <a target="_blank" href="https://www.hl7.org/fhir/operationoutcome.html">OperationOutcome</a> resource with details about the error. There is also one case where the response body will contain an OperationOutcome even though the http status code is <a target="_blank" href="https://www.rfc-editor.org/rfc/rfc9110.html#status.200">200 OK</a>: Partially successful cancellation of order.

The LINCA implementation defines the following operation outcomes:

<table class="table table-striped">
  <thead>
    <tr class="danger">
        <th scope="col">Code</th>
        <th scope="col">Message</th>
        <th scope="col">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
        <th scope="row">LCVAL01</th> 
        <td>Name of patient (in field <em>name.text</em>) cannot be null</td>
        <td>Enter a string into the <em>name.text</em> field of the patient resource</td>
    </tr>
    <tr>
        <th scope="row">LCVAL02</th>
        <td>'value' is no valid social security number</td>
        <td>Provide a social security number which is valid according to the checksum rules of the national implementation</td>
    </tr>
    <tr>
        <th scope="row">LCVAL03</th>
        <td>A patient can have at most one social security number</td>
        <td>Provide at most one social security number in a patient record</td>
    </tr>
    <tr>
        <th scope="row">LCVAL04</th>
        <td><em>birthDate</em> is required when the social security number is missing</td>
        <td>Enter a value into the field <em>birthDate</em></td>
    </tr>
    <tr>
        <th scope="row">LCVAL05</th>
        <td>The <em>gender</em> field must not be empty</td>
        <td>Enter a value into the <em>gender</em> field</td>
    </tr>
    <tr>
        <th scope="row">LCVAL06</th>
        <td>Cast of transmitted resource to Patient resource failed</td>
        <td>Make sure the resource is well-formed and matches the profile of the national implementation</td>
    </tr>
     <tr>
        <th scope="row">LCVAL07</th>
        <td>The <em>intent</em> field must not be empty</td>
        <td>Enter a value into the <em>intent</em> field</td>
    </tr>
     <tr>
        <th scope="row">LCVAL08</th>
        <td>The <em>status</em> field must not be empty</td>
        <td>Enter a value into the <em>status</em> field</td>
    </tr>
     <tr>
        <th scope="row">LCVAL09</th>
        <td>The <em>subject</em> field must not be empty</td>
        <td>Enter a value (reference) into the <em>subject</em> field</td>
    </tr>
     <tr>
        <th scope="row">LCVAL10</th>
        <td>'value' in field <em>intent</em> is not valid in LINCARequestOrchestration</td>
        <td>Enter a value that matches the rules of the present resource profile (e.g., 'proposal')</td>
    </tr>
     <tr>
        <th scope="row">LCVAL11</th>
        <td>'value' in field <em>status</em> is not valid in new LINCARequestOrchestration</td>
        <td>Enter a value that matches the rules of the present resource profile (e.g., 'active')</td>
    </tr>
     <tr>
        <th scope="row">LCVAL12</th>
        <td>The OID in field <em>subject</em> is not valid</td>
        <td>Enter a value that is consistent with the OID in your authentication certificate</td>
    </tr>
     <tr>
        <th scope="row">LCVAL13</th>
        <td>Cardinality violation in field <em>contained</em>: minimum is 1 inline resource</td>
        <td>Add at least one inline MedicationRequest resource into the <em>contained</em> field</td>
    </tr>
     <tr>
        <th scope="row">LCVAL14</th>
        <td>Cast of transmitted resource to RequestOrchestration resource failed</td>
        <td>Make sure the resource is well-formed and matches the profile of the national implementation</td>
    </tr>
     <tr>
        <th scope="row">LCVAL15</th>
        <td>The field <em>id</em> must be empty in contained resources</td>
        <td>Remove the value from the field <em>id</em>. You can add your internal ids into the <em>identifier</em> field</td>
    </tr>
     <tr>
        <th scope="row">LCVAL16</th>
        <td>The field <em>basedOn</em> must be empty contained resources</td>
        <td>Remove any references from the field <em>basedOn</em> in contained MedicationRequest resources</td>
    </tr>
     <tr>
        <th scope="row">LCVAL17</th>
        <td><em>value</em> in field <em>status</em> is not valid in contained LINCAProposalMedicationRequest</td>
        <td>Enter a value that matches the rules of the present resource profile (e.g., 'unknown')</td>
    </tr>
     <tr>
        <th scope="row">LCVAL18</th>
        <td>The field <em>basedOn</em> must contain exactly one reference</td>
        <td>Enter exactly one reference to an existing LINCA resource into the field <em>basedOn</em></td>
    </tr>
     <tr>
        <th scope="row">LCVAL19</th>
        <td>'value' in field <em>intent</em> is not valid in LINCAProposalMedicationRequest</td>
        <td>Enter a value that matches the rules of the present resource profile (e.g., 'proposal')</td>
    </tr>
     <tr>
        <th scope="row">LCVAL20</th>
        <td>'value' in field <em>status</em> is not valid in LINCAProposalMedicationRequest</td>
        <td>Enter a value that matches the rules of the present resource profile (e.g., 'active')</td>
    </tr>
     <tr>
        <th scope="row">LCVAL21</th>
        <td>The field <em>priorPrescription</em> must be empty in LINCAProposalMedicationRequest</td>
        <td>The field <em>priorPrescription</em> shall only be filled by prescribing practitioners</td>
    </tr>
     <tr>
        <th scope="row">LCVAL22</th>
        <td>The field <em>groupIdentifier</em> must be empty in LINCAProposalMedicationRequest</td>
        <td>The field <em>groupIdentifier</em> is reserved for the eRezept-Id</td>
    </tr>
     <tr>
        <th scope="row">LCVAL23</th>
        <td>The field <em>informationSource</em> must not be empty</td>
        <td>Enter exactly one reference into the <em>informationSource</em> field</td>
    </tr>
    <tr>
        <th scope="row">LCVAL24</th>
        <td>The OID in <em>informationSource</em> is not valid</td>
        <td>Enter a value that is consistent with the OID in your authentication certificate</td>
    </tr>
    <tr>
        <th scope="row">LCVAL25</th>
        <td>The field <em>requester</em> must not be empty</td>
        <td>Enter a value into the field <em>requester</em></td>
    </tr>
    <tr>
        <th scope="row">LCVAL26</th>
        <td>The field <em>medication</em> must not be empty</td>
        <td>Enter a value in the <em>medication</em> field</td>
    </tr>
    <tr>        
        <th scope="row">LCVAL27</th>
        <td>The provided refstring 'value' in field <em>subject</em> is no valid refstring</td>
        <td>Enter a valid reference string in the field <em>subject</em>, e.g., 'HL7ATCorePatient/FhirIdOfPatient'</td>
    </tr>
    <tr>
        <th scope="row">LCVAL28</th>
        <td>Patient reference in field <em>subject</em> not found</td>
        <td>Enter the Fhir-Id of an existing HL7ATCorePatient resource</td>
    </tr>
    <tr>
        <th scope="row">LCVAL29</th>
        <td>The field <em>performer</em> must not be empty</td>
        <td>Enter a value in the <em>performer</em> field (the OID of the practitioner)</td>
    </tr>
    <tr>
        <th scope="row">LCVAL30</th>
        <td>The OID in field <em>performer</em> is not valid</td>
        <td>Enter a syntactically correct OID of an active and eligible physician</td>
    </tr>
    <tr>
        <th scope="row">LCVAL31</th>
        <td>The reference in field <em>basedOn</em> is no valid refstring</td>
        <td>Enter a valid reference string in the field <em>basedOn</em>, e.g., 'LINCAResource/FhirIdOfResource'</td>
    </tr>
    <tr>
        <th scope="row">LCVAL32</th>
        <td>Referenced resource in field <em>basedOn</em> not found</td>
        <td>Enter the Fhir-Id of an existing LINCA resource</td>
    </tr>
    <tr>
        <th scope="row">LCVAL33</th>
        <td>Referenced resource in field <em>basedOn</em> is not the latest chain link</td>
        <td>Always refer to the youngest link in a resource chain</td>
    </tr>
    <tr>
        <th scope="row">LCVAL34</th>
        <td>The field <em>informationSource</em> must contain exactly one element</td>
        <td>Enter exactly one reference into the <em>informationSource</em> field</td>
    </tr>
    <tr>
        <th scope="row">LCVAL35</th>
        <td>Cast of transmitted resource to MedicationRequest resource failed</td>
        <td>Make sure the resource is well-formed and matches the profile of the national implementation</td>
    </tr>
    <tr>
        <th scope="row">LCVAL36</th>
        <td>Field <em>supportingInformation</em> cannot differ from referenced resource in field <em>basedOn</em>, <em>priorPrescription</em>, or <em>	authorizingPrescription</em></td>
        <td>Remove the reference to LINCARequestOrchestration in field <em>supportingInformation</em> or copy it correctly from the referenced resource</td>
    </tr>
    <tr>
        <th scope="row">LCVAL37</th>
        <td>Cardinality violation: field <em>basedOn</em> must contain at most one reference</td>
        <td>Remove redundant references from the field <em>basedOn</em></td>
    </tr>
    <tr>
        <th scope="row">LCVAL38</th>
        <td>Reference required, either in field <em>basedOn</em> or in <em>priorPrescription</em></td>
        <td>Enter references correspondig to the rules of the present resource profile</td>
    </tr>
    <tr>
        <th scope="row">LCVAL39</th>
        <td>The reference in field <em>priorPrescription</em> is no valid refstring</td>
        <td>Enter a valid reference string in the field <em>priorPrescription</em>, e.g., 'LINCAResource/FhirIdOfResource'</td>
    </tr>
    <tr>
        <th scope="row">LCVAL40</th>
        <td>Reference in field <em>priorPrescription</em> not found</td>
        <td>Enter the Fhir-Id of an existing LINCA resource</td>
    </tr>
    <tr>
        <th scope="row">LCVAL41</th>
        <td>Referenced resource in field <em>priorPrescription</em> is not the latest chain link</td>
        <td>Always refer to the latest link in a resource chain</td>
    </tr>
    <tr>
        <th scope="row">LCVAL42</th>
        <td>Field <em>informationSource</em> cannot differ from the referenced resource in <em>basedOn</em> or <em>priorPrescription</em></td>
        <td>Remove the reference from field <em>informationSource</em> or copy it correctly from the referenced resource</td>
    </tr>
    <tr>
        <th scope="row">LCVAL43</th>
        <td>Field <em>requester</em> cannot differ from the referenced resource in <em>basedOn</em> or <em>priorPrescription</em></td>
        <td>Remove the reference from field <em>requester</em> or copy it correctly from the referenced resource</td>
    </tr>
    <tr>
        <th scope="row">LCVAL44</th>
        <td>Field <em>dispenser</em> cannot differ from the referenced resource in <em>basedOn</em> or <em>priorPrescription</em></td>
        <td>Remove the reference from field <em>dispenser</em> or copy it correctly from the referenced resource</td>
    </tr>
    <tr>
        <th scope="row">LCVAL45</th>
        <td>Field <em>subject</em> cannot differ from the referenced resource in <em>basedOn</em> or <em>priorPrescription</em></td>
        <td>Copy the patient reference correctly from the referenced resource</td>
    </tr>
    <tr>
        <th scope="row">LCVAL46</th>
        <td>Field <em>performer</em> cannot differ from the referenced resource in <em>basedOn</em> or <em>priorPrescription</em></td>
        <td>Enter the correct performer OID into the field <em>performer</em></td>
    </tr>
    <tr>
        <th scope="row">LCVAL47</th>
        <td>The field <em>intent</em> shall be 'order' in this use case</td>
        <td>Enter the proposed value in the field intent</td>
    </tr>
    <tr>
        <th scope="row">LCVAL48</th>
        <td>Value in field <em>status</em> is not supported on this Fhir server</td>
        <td>Enter a value that matches the rules of the present resource profile</td>
    </tr>
    <tr>
        <th scope="row">LCVAL49</th>
        <td>Cast of transmitted resource to MedicationDispense resource failed</td>
        <td>Make sure the resource is well-formed and matches the profile of the national implementation</td>
    </tr>
    <tr>
        <th scope="row">LCVAL50</th>
        <td>Cardinality violation: field <em>authorizingPrescription</em> must contain exactly one reference</td>
        <td>Enter a reference to a LINCAPrescriptionMedicationResource into the field <em>authorizingPrescription</em></td>
    </tr>
    <tr>
        <th scope="row">LCVAL51</th>
        <td>The reference in field <em>authorizingPrescription</em> is no valid refstring</td>
        <td>Enter a valid reference string in the field <em>authorizingPrescription</em>, e.g., 'LINCAResource/FhirIdOfResource'</td>
    </tr>
    <tr>
        <th scope="row">LCVAL52</th>
        <td>Reference in field <em>authorizingPrescription</em> not found</td>
        <td>Enter the reference of an existing LINCA resource</td>
    </tr>
    <tr>
        <th scope="row">LCVAL53</th>
        <td>Referenced resource in field <em>authorizingPrescription</em> is not the latest chain link</td>
        <td>Always refer to the latest link in a resource chain</td>
    </tr>
    <tr>
        <th scope="row">LCVAL54</th>
        <td>Value in field <em>status</em> must be 'completed'</td>
        <td>Enter the required value into the <em>status</em> field</td>
    </tr>
    <tr>
        <th scope="row">LCVAL55</th>
        <td>Exactly one performer is required and the field <em>performer.identifier.value</em> must contain the performers OID</td>
        <td>Enter the required value into the <em>field performer.identifier.value</em></td>
    </tr>
    <tr>
        <th scope="row">LCVAL56</th>
        <td>The dispensers OID must be provided in <em>dispenseRequest.dispenser.identifier.value</em></td>
        <td>Enter the value into the field <em>dispenseRequest.dispenser.identifier.value</em></td>
    </tr>
    <tr>
        <th scope="row">LCVAL57</th>
        <td>The field <em>performer.actor.identifier.value</em> must contain the OID of the dispensing pharmacy</td>
        <td>Enter the required value into the field <em>performer.actor.identifier.value</em></td>
    </tr>
    <tr>
        <th scope="row">LCVAL58</th>
        <td>Value 'value' in field <em>intent</em> is not supported on this Fhir server</td>
        <td>Check the Linked Care Implementation Guide for allowed values of field <em>intent</em></td>
    </tr>
    <tr>
        <th scope="row">LCVAL59</th>
        <td>In field <em>status</em> the value 'active' is required in this use case</td>
        <td>Enter the value 'active' into the field <em>status</em></td>
    </tr>
    <tr>
        <th scope="row">LCVAL60</th>
        <td>The field <em>supportingInformation</em> must contain a reference to the lc_id in adhoc prescriptions</td>
        <td>Add the required reference to <em>supportingInformation</em></td>
    </tr>
    <tr>
        <th scope="row">LCVAL61</th>
        <td>Ad hoc prescriptions must refer to an existing proposal for the patient concerned</td>
        <td>Make sure to enter an existing combination of patient reference and lc_id</td>
    </tr>
    <tr>
        <th scope="row">LCVAL62</th>
        <td>Cancellation of proposal id 'value' failed</td>
	    <td>It has already been processed.</td>
    </tr>
    <tr>
        <th scope="row">LCVAL63</th>
        <td>Cancellation of RequestOrchestration lc_id 'value' failed</td> 
    	<td>It has already been revoked or completed</td>
    </tr>
    <tr>
        <th scope="row">LCVAL64</th>
        <td>Contained resources must be referenced in field <em>action.resource</em></td> 
    	<td>Add a reference to the internal id of the contained resource</td>
    </tr>
    <tr>
        <th scope="row">LCVAL65</th>
        <td>The OID in field <em>dispenseRequest.dispenser</em> is not valid</td> 
	    <td>Enter a syntactically correct OID of an active pharmacy</td>
    </tr>
    <tr>
        <th scope="row">LCVAL66</th>
        <td>The OID in field <em>performer</em> cannot differ from the OID in the sender's certificate</td> 
    	<td>Enter the correct OID in field <em>performer</em></td>
    </tr>
    <tr>
        <th scope="row">LCVAL67</th>
        <td>The field <em>priorPrescription</em> must be empty when intent is set to 'originalOrder'</td> 
	    <td>Either remove the reference in <em>priorPrescription</em>, or set the intent to 'order'</td>
    </tr>
    <tr>
        <th scope="row">LCVAL68</th>
        <td>In a Bundle of LINCAPrescriptionMedicationRequests, all of them must refer to the same <em>subject</em></td> 
	    <td>Remove LINCAPrescriptionMedicationRequests with differing <em>subject</em></td>
    </tr>
    <tr>
        <th scope="row">LCVAL69</th>
        <td>In a Bundle of LINCAPrescriptionMedicationRequests, all of them must have the same <em>groupIdentifier</em></td> 
    	<td>Remove LINCAPrescriptionMedicationRequests with differing <em>groupIdentifier</em></td>
    </tr>
    <tr>
        <th scope="row">LCVAL70</th>
        <td>Genuine initial prescriptions cannot be connected to existing orders/lc_id</td> 
	    <td>Remove the reference from <em>supportingInformation</em></td>
    </tr>
    <tr>
        <th scope="row">LCVAL71</th>
        <td>New and active prescriptions must be sent with [POST $prescription Bundle]</td> 
    	<td>Check the Linked Care Implementation Guide, User Stories for Actor Doctor</td>
    </tr>
  </tbody>
</table>

### System Messages
In addition to that, the base implementation defines standard validation outcomes as follows:

<table class="table table-striped">
    <thead>
        <tr class="danger">
            <th scope="col">Code</th>
            <th scope="col">Message</th>
            <th scope="col">Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th scope="row">PVAL101</th>
            <td>Value is of type <em>type</em>, which is not an allowed choice</td>
            <td>Mismatch between expected content and provided content</td>
        </tr>
        <tr>
            <th scope="row">PVAL102</th>
            <td>Element has <em>count</em> elements, but minium cardinality is <em>cardinality</em></td>
            <td>Missing input or too few elements in a set with a defined minimum size</td>
        </tr>	
        <tr>
            <th scope="row">PVAL103</th>
            <td>Element has <em>count</em> elements, but maximum cardinality is <em>cardinality</em></td>
            <td>Input into a non-writable field or too many elements in a set with a defined maximum size</td>
        </tr>	
        <tr>
            <th scope="row">PVAL104</th>
            <td>Repeating elements should not contain a null value</td>
            <td>A field which contains a set of elements, should be contiguous</td>
        </tr>	
        <tr>
            <th scope="row">PVAL105</th>
            <td>Element with minimum cardinality <em>cardinality</em> cannot be null</td>
            <td>Missing input into a mandatory field</td>
        </tr>	
        <tr>
            <th scope="row">PVAL106</th>
            <td>'<em>value</em>' is not a correct literal for a code</td>
            <td>Malformed code value</td>
        </tr>	
        <tr>
            <th scope="row">PVAL107</th>
            <td>'<em>value</em>' is not a correct literal for a date</td>
            <td>Malformed date value</td>
        </tr>	
        <tr>
            <th scope="row">PVAL108</th>
            <td>'<em>value</em>' is not a correct literal for a dateTime</td>
            <td>Malformed datetime value</td>
        </tr>		
        <tr>
            <th scope="row">PVAL109</th>
            <td>'<em>value</em>' is not a correct literal for an id</td>
            <td>Malformed FhirId value</td>
        </tr>		
        <tr>
            <th scope="row">PVAL110</th>
            <td>Value is not well-formatted Xml: <em>value</em></td>
            <td>Invalid Xml document</td>
        </tr>		
        <tr>
            <th scope="row">PVAL111</th>
            <td>Value is not well-formed Xml adhering to the FHIR schema for Narrative: <em>value</em></td>
            <td>Invalid narrative content value</td>
        </tr>		
        <tr>
            <th scope="row">PVAL112</th>
            <td>'<em>value</em>' is not a correct literal for an oid</td>
            <td>Malformed OID value</td>
        </tr>		
        <tr>
            <th scope="row">PVAL113</th>
            <td>'<em>value</em>' is not a correct literal for a time</td>
            <td>Malformed time-of-day value</td>
        </tr>		
        <tr>
            <th scope="row">PVAL114</th>
            <td>'<em>value</em>' is not a correct literal for an uri</td>
            <td>Malformed URI value</td>
        </tr>		
        <tr>
            <th scope="row">PVAL115</th>
            <td>'<em>value</em>' is not a correct literal for a uuid</td>
            <td>Malformed UUID value</td>
        </tr>		
        <tr>
            <th scope="row">PVAL116</th>
            <td>Value '<em>value</em>' is not a correct code for valueset '<em>valueset</em>'</td>
            <td>Not a valid value in the corresponding code system</td>
        </tr>		
        <tr>
            <th scope="row">PVAL117</th>
            <td>Resource has contained resources with narrative, which is not allowed</td>
            <td>Resources in the "contained" field may not come with their own narrative</td>
        </tr>		
        <tr>
            <th scope="row">PVAL118</th>
            <td>It is not allowed for a resource to contain resources which themselves contain resources</td>
            <td>There may be at most one level of "contained" nesting</td>
        </tr>		
    </tbody>
</table>