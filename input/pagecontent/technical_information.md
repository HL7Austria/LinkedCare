<div xmlns="http://www.w3.org/1999/xhtml"> 
    Narrativ zu den Technical Info    
    <h3>Linked Care Technical Information for Implementers</h3>
    <div id="table-endpoints" class="tab-pane fade in active">
        <h4>Endpoints</h4>
        <table class="table">
            <thead>
                <tr>
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
    </div>
    <div id="table-validation-messages" class="tab-pane fade in active">
        <h4>Validation Messages</h4>
        <p>All REST endpoints will return the usual range of <a target="_blank" href="https://http.cat/">http status codes</a> back to the client. Implementations <em>should</em> guarantee, that in case of http status code <a target="_blank" href="https://www.rfc-editor.org/rfc/rfc9110.html#name-400-bad-request">400 Bad Request</a> and also in case of http status code <a target="_blank" href="https://www.rfc-editor.org/rfc/rfc9110.html#name-409-conflict">Conflict</a>, the response body will contain an <a target="_blank" href="https://www.hl7.org/fhir/operationoutcome.html">OperationOutcome</a> resource with details about the error. There is also one case where the response body will contain an OperationOutcome even though the http status code is <a target="_blank" href="https://www.rfc-editor.org/rfc/rfc9110.html#status.200">200 OK</a>: Partially successful cancellation of order.
        </p>
        <p>The LINCA implementation defines the following operation outcomes:</p>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Code</th>
                    <th scope="col">Message</th>
                    <th scope="col">Description</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td scope="row">LCVAL01</td>
                    <td>Name of patient (in name.text) cannot be null</td>
                    <td>Enter a string into the name.text field of the patient resource</td>
                </tr>
                <tr>
                    <td scope="row">LCVAL02</td>
                    <td><em>value</em> is no valid Social Security Number</td>
                    <td>Provide a social security number which is valid according to the checksum rules of the national implementation</td>
                </tr>
                <tr>
                    <td scope="row">LCVAL03</td>
                    <td>Birthdate is required when the social security number is missing</td>
                    <td>Enter a value into the date of birth field</td>
                </tr>
                <tr>
                    <td scope="row">LCVAL04</td>
                    <td>The gender field must not be empty</td>
                    <td>Enter a value into the gender field</td>
                </tr>
                <tr>
                    <td scope="row">LCVAL05</td>
                    <td>Cast of transmitted resource to patient resource failed</td>
                    <td>Make sure the resource is well-formed and matches the profile of the national implementation</td>
                </tr>
            </tbody>
        </table>
    </div>
    <div id="table-validation-messages" class="tab-pane fade in active">
        <h4>System Messages</h4>
        <p>In addition to that, the base implementation defines standard validation outcomes as follows:</p>
    <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col">Code</th>
                <th scope="col">Message</th>
                <th scope="col">Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td scope="row">PVAL101</td>
                <td>Value is of type <em>type</em>, which is not an allowed choice</td>
                <td>Mismatch between expected content and provided content</td>
            </tr>
            <tr>
                <td scope="row">PVAL102</td>
                <td>Element has <em>count</em> elements, but minium cardinality is <em>cardinality</em></td>
                <td>Missing input or too few elements in a set with a defined minimum size</td>
            </tr>	
            <tr>
                <td scope="row">PVAL103</td>
                <td>Element has <em>count</em> elements, but maximum cardinality is <em>cardinality</em></td>
                <td>Input into a non-writable field or too many elements in a set with a defined maximum size</td>
            </tr>	
            <tr>
                <td scope="row">PVAL104</td>
                <td>Repeating elements should not contain a null value</td>
                <td>A field which contains a set of elements, should be contiguous</td>
            </tr>	
            <tr>
                <td scope="row">PVAL105</td>
                <td>Element with minimum cardinality <em>cardinality</em> cannot be null</td>
                <td>Missing input into a mandatory field</td>
            </tr>	
            <tr>
                <td scope="row">PVAL106</td>
                <td>'<em>value</em>' is not a correct literal for a code</td>
                <td>Malformed code value</td>
            </tr>	
            <tr>
                <td scope="row">PVAL107</td>
                <td>'<em>value</em>' is not a correct literal for a date</td>
                <td>Malformed date value</td>
            </tr>	
            <tr>
                <td scope="row">PVAL108</td>
                <td>'<em>value</em>' is not a correct literal for a dateTime</td>
                <td>Malformed datetime value</td>
            </tr>		
            <tr>
                <td scope="row">PVAL109</td>
                <td>'<em>value</em>' is not a correct literal for an id</td>
                <td>Malformed FhirId value</td>
            </tr>		
            <tr>
                <td scope="row">PVAL110</td>
                <td>Value is not well-formatted Xml: <em>value</em></td>
                <td>Invalid Xml document</td>
            </tr>		
            <tr>
                <td scope="row">PVAL111</td>
                <td>Value is not well-formed Xml adhering to the FHIR schema for Narrative: <em>value</em></td>
                <td>Invalid narrative content value</td>
            </tr>		
            <tr>
                <td scope="row">PVAL112</td>
                <td>'<em>value</em>' is not a correct literal for an oid</td>
                <td>Malformed OID value</td>
            </tr>		
            <tr>
                <td scope="row">PVAL113</td>
                <td>'<em>value</em>' is not a correct literal for a time</td>
                <td>Malformed time-of-day value</td>
            </tr>		
            <tr>
                <td scope="row">PVAL114</td>
                <td>'<em>value</em>' is not a correct literal for an uri</td>
                <td>Malformed URI value</td>
            </tr>		
            <tr>
                <td scope="row">PVAL115</td>
                <td>'<em>value</em>' is not a correct literal for a uuid</td>
                <td>Malformed UUID value</td>
            </tr>		
            <tr>
                <td scope="row">PVAL116</td>
                <td>Value '<em>value</em>' is not a correct code for valueset '<em>valueset</em>'</td>
                <td>Not a valid value in the corresponding code system</td>
            </tr>		
            <tr>
                <td scope="row">PVAL117</td>
                <td>Resource has contained resources with narrative, which is not allowed</td>
                <td>Resources in the "contained" field may not come with their own narrative</td>
            </tr>		
            <tr>
                <td scope="row">PVAL118</td>
                <td>It is not allowed for a resource to contain resources which themselves contain resources</td>
                <td>There may be at most one level of "contained" nesting</td>
            </tr>		
        </tbody>
    </table>    
    </div>
</div>