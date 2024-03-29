<div xmlns="http://www.w3.org/1999/xhtml" class="container">
    <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#US009">US009</a></li>
    <li><a data-toggle="pill" href="#US010">US010</a></li>
    <li><a data-toggle="pill" href="#US011">US011</a></li>
    <li><a data-toggle="pill" href="#US012">US012</a></li>
    <li><a data-toggle="pill" href="#US013">US013</a></li>
    <li><a data-toggle="pill" href="#US014">US014</a></li>
    <li><a data-toggle="pill" href="#US015">US015</a></li>
    </ul>

   <div class="tab-content">
       <div id="US009" class="tab-pane fade  in active">
            <p>
                <strong>US009</strong> Get orders to prescribe<br>
                Practitioner Dr. Kunibert Kreuzotter is responsible for the LINCA registered care giver clients Patrizia Platypus and Renate Rüssel-Olifant, who are two of his patients. 
                Dr. Kunibert Kreuzotter has access to and permission in a practitioner role in the LINCA system, 
                hence he is expected to prescribe orders via the LINCA system. 
                When he submits a read request to the LINCA system he gets all open orders where he is mentioned as the designated practitioner, 
                e.g., all open orders for Patrizia Platypus and Renate Rüssel-Olifant.
                Dr. Kreuzotters software can interpret the returned LINCA order position chains 
                and visually present the status of the order and all its positions.
                <p><a target="_blank" href="https://github.com/loidl-consulting/linca-sdk/blob/main/Lc.Linca.Sdk.Sample/Specs/ActorDoctor/US009-GetOpenOrders.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_009_diagram.svg" target="_blank">
                    <img src="UserStory_009_diagram.svg" width ="69%" />
                </a>
            </p>
        </div>
        <div id="US010" class="tab-pane fade">
	    <p>
              <strong>US010</strong> Stop medication intake<br>
              Practitioner Dr. Kunibert Kreuzotter is responsible for the LINCA registered care giver client Renate Rüssel-Olifant. 
He has received a LINCA order position requesting medication prescription for her.
He decides that Renate Rüssel-Olifant shall no longer take the medication intended by that order position. 
Hence, he submits an update on that order position with the status set to 'stopped' or 'ended',
  and his software will send that to the LINCA server,
  and the ordering care giver organization Pflegedienst Immerdar will be informed that this position will not be prescribed further on, 
  and their software system will inform Susanne Allzeit(DGKP)
                <p><a target="_blank" href="https://github.com/loidl-consulting/linca-sdk/blob/main/Lc.Linca.Sdk.Sample/Specs/ActorDoctor/US010-CancelPrescriptionPosition.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_010_diagram.svg" target="_blank">
                    <img src="UserStory_010_diagram.svg" width ="69%" />
                </a>
            </p>
        </div>
        <div id="US011" class="tab-pane fade">
              <p>
                <strong>US011</strong> Prescribe as ordered<br>
                Practitioner Dr. Wibke Würm is responsible for the LINCA registered mobile caregiver client Renate Rüssel-Olifant. 
She has received a LINCA order position requesting medication prescription for her.
She decides to issue a prescription for the medication for Renate Rüssel-Olifant intended by that order position. 
Hence, she submits a prescription for that position with the eMedId and eRezeptId she got
  and her software will send that to the LINCA server,
  and the ordering mobile caregiver organization Pflegedienst Immerdar will be informed that the order position has been prescribed as ordered,
  and they will inform DGKP Susanne Allzeit.
                <p><a target="_blank" href="https://github.com/loidl-consulting/linca-sdk/blob/main/Lc.Linca.Sdk.Sample/Specs/ActorDoctor/US011-PrescribeAsOrdered.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_011_diagram.svg" target="_blank">
                    <img src="UserStory_011_diagram.svg" width ="69%" />
                </a>
            </p>
        </div>
        <div id="US012" class="tab-pane fade">
            <p>
                <strong>US012</strong> Prescribe with medication adaptions<br>
                Practitioner Dr. Silvia Spitzmaus is responsible for the LINCA registered care giver client Günter Gürtelthier. 
                She has received a LINCA order position requesting medication prescription for him.
                She decides that the medication intended by a particular order position needs to be adjusted.  
                Hence, she submits a prescription for that position with the eMedId and eRezeptId she got, with changed medication/quantity,
                and her software will send that to the LINCA server,
                and the ordering care giver organization Haus Vogelsang will be informed that the order position has been 
                prescribed with modified medication/quantity
                <p><a target="_blank" href="https://github.com/loidl-consulting/linca-sdk/blob/main/Lc.Linca.Sdk.Sample/Specs/ActorDoctor/US012-PrescribeWithChanges.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_012_diagram.svg" target="_blank">
                    <img src="UserStory_012_diagram.svg" width ="69%" />
                </a>
            </p>
        </div>
        <div id="US013" class="tab-pane fade">
             <p>
                <strong>US013</strong> Prescribe with dosage adaptions<br>
                Practitioner Dr. Silvia Spitzmaus is responsible for the LINCA registered care giver client Günter Gürtelthier. She has received a LINCA order position requesting medication prescription for him and has already 
                submitted a prescription for that order position.
                She decides that the dosage instructions in the prior prescription need to be defined or modified. 
                Hence, she submits an update to that prescription with new dosage instructions,
                and her software will send that to the LINCA server, and the ordering care giver organization Haus Vogelsang will be informed that the prescription has been updated with altered dosage
                <p><a target="_blank" href="https://github.com/loidl-consulting/linca-sdk/blob/main/Lc.Linca.Sdk.Sample/Specs/ActorDoctor/US013-ModifyPrescribedDosage.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_013_diagram.svg" target="_blank">
                    <img src="UserStory_013_diagram.svg" width ="69%" />
                </a>
            </p>
        </div>
        <div id="US014" class="tab-pane fade">
       <p>
                <strong>US014</strong> Prescribe supplementary article<br>
                Practitioner Dr. Silvia Spitzmaus is responsible for the LINCA registered care giver client Günter Gürtelthier. 
                She has received a LINCA order position requesting medication prescription for him.
                She decides that  an additional medication is needed for Günter Gürtelthier.
                Hence, she creates and submits an additionally prescribed position referring to the LINCA order number and her software will send that to the LINCA server,and the ordering care giver organization Haus Vogelsang will be informed that the order has been extended with an additional position,
                and that does not change anything about the fact that Dr. Spitzmaus cannot read other positions of that same order where she is not the designated practitioner
                <p><a target="_blank" href="https://github.com/loidl-consulting/linca-sdk/blob/main/Lc.Linca.Sdk.Sample/Specs/ActorDoctor/US014-PrescribeSupplementaryArticle.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_014_diagram.svg" target="_blank">
                    <img src="UserStory_014_diagram.svg" width ="69%" />
                </a>
            </p>
        </div>
	<div id="US015" class="tab-pane fade">
       	    <p>
                <strong>US015</strong> Create initial prescription<br>
                Renate Rüssel-Olifant had a check-up with her general practitioner Dr. Wibke Würm. 
		Dr. Würm decides to prescribe new medication for Renate Rüssel-Olifant, which she has not been taking so far. 
		So, Dr. Würm creates an initial prescription for Renate Rüssel-Olifant for two products, and sends it to the LINCA system.
                <p><a target="_blank" href="https://github.com/loidl-consulting/linca-sdk/blob/main/Lc.Linca.Sdk.Sample/Specs/ActorDoctor/US015_CreateInitialPrescription.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_015_diagram.svg" target="_blank">
                    <img src="UserStory_015_diagram.svg" width ="69%" />
                </a>
            </p>
        </div>
    </div>       
</div>