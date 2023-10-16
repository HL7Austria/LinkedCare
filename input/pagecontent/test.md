
  <div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
   A complete Linked Care implementation shall provide at least the functionality described in the following collection of user stories.
    <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#actor-care">Actor <strong>Care</strong></a></li>
        <li><a data-toggle="tab" href="#actor-doctor">Actor <strong>Doctor</strong></a></li>
        <li><a data-toggle="tab" href="#actor-pharmacy">Actor <strong>Pharmacy</strong></a></li>
    </ul>
    <div class="tab-content">
        <div id="actor-care" class="tab-pane fade in active">
            {% include actor_care.md %}
        </div>
        <div id="actor-doctor" class="tab-pane fade">
            <p>
                <strong>US008</strong> Get orders to prescribe
                Practitioner Dr. Kunibert Kreuzotter is responsible for the LINCA registered care giver clients Patrizia Platypus and Renate Rüssel-Olifant, who are two of his patients. 
                Dr. Kunibert Kreuzotter has access to and permission in a practitioner role in the LINCA system, 
                hence he is expected to prescribe orders via the LINCA system. 
                When he submits a read request to the LINCA system he gets all open orders where he is mentioned as the designated practitioner, 
                e.g., all open orders for Patrizia Platypus and Renate Rüssel-Olifant.
                Dr. Kreuzotters software can interpret the returned LINCA order position chains 
                and visually present the status of the order and all its positions.
                <p><a target="_blank" href="https://github.com/loidl-consulting/linca-sdk/blob/main/Specs/ActorDoctor/US008-GetOpenOrders.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_008_diagram.svg" target="_blank">
                    <img src="UserStory_008_diagram.svg" width ="69%" />
                </a>
            </p>
            <p>
                <strong>US009</strong> Stop medication intake
                Practitioner Dr. Silvia Spitzmaus is responsible for the LINCA registered care giver client Günter Gürtelthier. 
                She has received a LINCA order position requesting medication prescription for him.
                She decides that Günter Gürtelthier shall no longer take the medication intended by that order position. 
                Hence, she submits an update on that order position with the status set to 'stopped' or 'ended', and her software will send that to the LINCA server, and the ordering care giver organization Haus Vogelsang will be informed that this position will not be prescribed further on.
                <p><a target="_blank" href="https://github.com/loidl-consulting/linca-sdk/blob/main/Specs/ActorDoctor/US009-CancelPrescriptionPosition.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_009_diagram.svg" target="_blank">
                    <img src="UserStory_009_diagram.svg" width ="69%" />
                </a>
            </p>
            <p>
                <strong>US010</strong> Prescribe as ordered
                Practitioner Dr. Silvia Spitzmaus is responsible for the LINCA registered care giver client Günter Gürtelthier. 
                She has received a LINCA order position requesting medication prescription for him.
                She decides to issue a prescription for the medication for Günter Gürtelthier intended by that order position. 
                Hence, she submits a prescription for that position with the eMedId and eRezeptId she got
                and her software will send that to the LINCA server,
                and the ordering care giver organization Haus Vogelsang will be informed that the order position has been prescribed as ordered.
                <p><a target="_blank" href="https://github.com/loidl-consulting/linca-sdk/blob/main/Specs/ActorDoctor/US010-PrescribeAsOrdered.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_010_diagram.svg" target="_blank">
                    <img src="UserStory_010_diagram.svg" width ="69%" />
                </a>
            </p>
            <p>
                <strong>US011</strong> Prescribe with medication adaptions
                Practitioner Dr. Silvia Spitzmaus is responsible for the LINCA registered care giver client Günter Gürtelthier. 
                She has received a LINCA order position requesting medication prescription for him.
                She decides that the medication intended by a particular order position needs to be adjusted.  
                Hence, she submits a prescription for that position with the eMedId and eRezeptId she got, with changed medication/quantity,
                and her software will send that to the LINCA server,
                and the ordering care giver organization Haus Vogelsang will be informed that the order position has been 
                prescribed with modified medication/quantity
                <p><a target="_blank" href="https://github.com/loidl-consulting/linca-sdk/blob/main/Specs/ActorDoctor/US011-PrescribeWithChanges.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_011_diagram.svg" target="_blank">
                    <img src="UserStory_011_diagram.svg" width ="69%" />
                </a>
            </p>
            <p>
                <strong>US012</strong> Prescribe with dosage adaptions
                Practitioner Dr. Silvia Spitzmaus is responsible for the LINCA registered care giver client Günter Gürtelthier. She has received a LINCA order position requesting medication prescription for him and has already 
                submitted a prescription for that order position.
                She decides that the dosage instructions in the prior prescription need to be defined or modified. 
                Hence, she submits an update to that prescription with new dosage instructions,
                and her software will send that to the LINCA server, and the ordering care giver organization Haus Vogelsang will be informed that the prescription has been updated with altered dosage
                <p><a target="_blank" href="https://github.com/loidl-consulting/linca-sdk/blob/main/Specs/ActorDoctor/US012-ModifyPrescribedDosage.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_012_diagram.svg" target="_blank">
                    <img src="UserStory_012_diagram.svg" width ="69%" />
                </a>
            </p>
            <p>
                <strong>US013</strong> Prescribe supplementary article
                Practitioner Dr. Silvia Spitzmaus is responsible for the LINCA registered care giver client Günter Gürtelthier. 
                She has received a LINCA order position requesting medication prescription for him.
                She decides that  an additional medication is needed for Günter Gürtelthier.
                Hence, she creates and submits an additionally prescribed position referring to the LINCA order number and her software will send that to the LINCA server,and the ordering care giver organization Haus Vogelsang will be informed that the order has been extended with an additional position,
                and that does not change anything about the fact that Dr. Spitzmaus cannot read other positions of that same order where she is not the designated practitioner
                <p><a target="_blank" href="https://github.com/loidl-consulting/linca-sdk/blob/main/Specs/ActorDoctor/US013-PrescribeSupplementaryArticle.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_013_diagram.svg" target="_blank">
                    <img src="UserStory_013_diagram.svg" width ="69%" />
                </a>
            </p>
        </div>
        <div id="actor-pharmacy" class="tab-pane fade">
            <p>
                <strong>US014</strong> Get orders to dispense
                Pharmacist Mag. Andreas Amsel, owner of the pharmacy Apotheke 'Zum frühen Vogel' has 
                access to and permission in a pharmacist role in the LINCA system. 
                When he is expected to fullfil medication orders for customers, 
                then he submits a read request for open orders where his pharmacy is mentioned as the designated dispenser.
                He will receive a list of LINCA order position chains, 
                e.g., for orders for clients of Haus Vogelsang because they mentioned his pharmacy as preferred pick-up point,
                and his software can interpret the returned LINCA order position chains, 
                and visually present and import the order and all its position
                <p><a target="_blank" href="https://github.com/loidl-consulting/linca-sdk/blob/main/Specs/ActorPharmacy/US014-GetOpenOrders.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_014_diagram.svg" target="_blank">
                    <img src="UserStory_014_diagram.svg" width ="69%" />
                </a>
            </p>
            <p>
                <strong>US015</strong> Walk-in LINCA dispense with QR code
                Pharmacist Mag. Andreas Amsel, owner of the pharmacy Apotheke 'Zum frühen Vogel' has 
                access to and permission in a pharmacist role in the LINCA system. 
                When care giver Susanne Allzeit (DGKP) presents a barcode representing a prescription of a 
                LINCA order for her client Renate Rüssel-Olifant,
                Then Mag. Andreas Amsel can scan that code at his POS,and his software can fetch the corresponding records from LINCA, and interpret the returned LINCA order position chains and visually present and import the positions included in that prescription for Renate Rüssel-Olifant
                <p><a target="_blank" href="https://github.com/loidl-consulting/linca-sdk/blob/main/Specs/ActorPharmacy/US015-GetOrderPositionInfo.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_015_diagram.svg" target="_blank">
                    <img src="UserStory_015_diagram.svg" width ="69%" />
                </a>
            </p>
            <p>
                <strong>US016</strong> Finalize dispense
                Pharmacist Mag. Andreas Amsel, owner of the pharmacy Apotheke 'Zum frühen Vogel' has 
                access to and permission in a pharmacist role in the LINCA system. 
                When he is expected to fullfil medication orders for a customer, e.g., Renate Rüssel-Olifant, 
                and he has a LINCA order Id to go with a purchase her care giver Susanne Allzeit just made for her, 
                then Mag. Andreas Amsel submits a dispense record for the order position in question
                and his software will send that to the LINCA server,
                and notify the ordering organization, Pflegedienst Immerdar, about the thus completed order position.
                <p><a target="_blank" href="https://github.com/loidl-consulting/linca-sdk/blob/main/Specs/ActorPharmacy/US016-Dispense.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_016_diagram.svg" target="_blank">
                    <img src="UserStory_016_diagram.svg" width ="69%" />
                </a>
            </p>
            <p>
                <strong>US017</strong> Partial dispense
                Pharmacist Mag. Andreas Amsel, owner of the pharmacy Apotheke 'Zum frühen Vogel' has 
                access to and permission in a pharmacist role in the LINCA system. 
                When he is expected to fullfil medication orders for a customer, e.g., Renate Rüssel-Olifant, 
                and he has a LINCA order Id to go with a purchase her care giver Susanne Allzeit just made for her, 
                and he did not, or is not able to, dispense all of the product at once         
                then Mag. Andreas Amsel submits a partial dispense record for the order position in question
                and his software will send that to the LINCA server,
                and notify the ordering organization, Pflegedienst Immerdar, about the partial dispense.
                <p><a target="_blank" href="https://github.com/loidl-consulting/linca-sdk/blob/main/Specs/ActorPharmacy/US017-PartialDispense.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_017_diagram.svg" target="_blank">
                    <img src="UserStory_017_diagram.svg" width ="69%" />
                </a>
            </p>
        </div>
    </div>
</div>