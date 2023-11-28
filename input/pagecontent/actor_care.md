<div xmlns="http://www.w3.org/1999/xhtml" class="container">
    <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#US001">US001</a></li>
    <li><a data-toggle="pill" href="#US002">US002</a></li>
    <li><a data-toggle="pill" href="#US003">US003</a></li>
    <li><a data-toggle="pill" href="#US004">US004</a></li>
    <li><a data-toggle="pill" href="#US005">US005</a></li>
    <li><a data-toggle="pill" href="#US006">US006</a></li>
    <li><a data-toggle="pill" href="#US007">US007</a></li>
    <li><a data-toggle="pill" href="#US008">US008</a></li>
    </ul>

   <div class="tab-content">
        <div id="US001" class="tab-pane fade in active">
            <p> 
                <strong>US001</strong> Ordering single medication for a new client<br>
                User Susanne Allzeit (DGKP) is an employee at the mobile caregiver organization Pflegedienst Immerdar, 
                whose client, Renate Rüssel-Olifant, is not in the LINCA system yet. 
                Hence, Susanne Allzeit creates a client record in the system.
                Now, it is possible to order prescriptions for Renate Rüssel-Olifant. 
                As Susanne Allzeit will pick up the medication on the go, she places the order 
                without specifying a pharmacy.
                <p><a target="_blank" href="https://github.com/loidl-consulting/linca-sdk/blob/main/Lc.Linca.Sdk.Sample/Specs/ActorCare/US001-MedOrderSingleArticle.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_001_diagram.svg" target="_blank">
                    <img src="UserStory_001_diagram.svg" width ="69%" />
                </a>
            </p>
        </div>
        <div id="US002" class="tab-pane fade">
            <p>
                <strong>US002</strong> Re-stock order for existing client<br>
                User Susanne Allzeit (DGKP) is an employee at the mobile caregiver 
                organization Pflegedienst Immerdar, whose client, Renate Rüssel-Olifant, is 
                already registered as patient in the LINCA system. 
                Susanne Allzeit needs to re-stock prescription medication for Renate Rüssel-Olifant. 
                Hence, she places an order on LINCA referring to the existing patient 
                record of Renate Rüssel-Olifant. 
                Additionally, she specifies her preferred pharmacy, Apotheke 'Klappernder Storch', in advance 
                to collect the order there. 
                <p><a target="_blank" href="https://github.com/loidl-consulting/linca-sdk/blob/main/Lc.Linca.Sdk.Sample/Specs/ActorCare/US002-MedOrderRepeat.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_002_diagram.svg" target="_blank">
                    <img src="UserStory_002_diagram.svg" width ="69%" />
                </a>
            </p>
        </div>
        <div id="US003" class="tab-pane fade">
            <p>
                <strong>US003</strong> Inpatient care facility order<br>
                User Walter Specht (DGKP) is a caregiver in the inpatient care facility Haus Vogelsang. 
                He needs to collectively order prescription medication for several clients, amongst others 
                for Günter Gürtelthier and Patrizia Platypus. Patrizia's practitioner is 
                Dr. Kunibert Kreuzotter, Günter's practitioner is Dr. Silvia Spitzmaus. 
                Walter Specht places an order for all needed client prescription medication on LINCA 
                and specifies in advance the pharmacy Apotheke 'Zum frühen Vogel' that ought 
                to prepare the order
                <p><a target="_blank" href="https://github.com/loidl-consulting/linca-sdk/blob/main/Lc.Linca.Sdk.Sample/Specs/ActorCare/US003-MedOrderStationaryCare.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_003_diagram.svg" target="_blank">
                    <img src="UserStory_003_diagram.svg" width ="69%" />
                </a>
            </p>
        </div>
        <div id="US004" class="tab-pane fade">
            <p>
                <strong>US004</strong> Modifying an order<br>
                User Walter Specht (DGKP) is a caregiver in the inpatient care facility Haus Vogelsang. 
                He has already placed a collective order for prescription medication for several clients on LINCA.
                Now, he needs to modify details of that order, in particular he wants to update one 
                individual order position for his client Günter Gürtelthier.
                The LINCA systems prevents Walter Specht from updating such a position 
                if Günter's practitioner, Dr. Silvia Spitzmaus, has already issued a prescription for that order position
                <p><a target="_blank" href="https://github.com/loidl-consulting/linca-sdk/blob/main/Lc.Linca.Sdk.Sample/Specs/ActorCare/US004-UpdateOrder.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_004_diagram.svg" target="_blank">
                    <img src="UserStory_004_diagram.svg" width ="69%" />
                </a>
            </p>
        </div>
        <div id="US005" class="tab-pane fade">
            <p>
                <strong>US005</strong> Cancel individual order positions<br>
                User Walter Specht (DGKP) is a caregiver in the inpatient care facility Haus Vogelsang. 
                He has already placed a collective order for prescription medication for several clients on LINCA.
                Now, he needs to cancel individual order positions for his client Patrizia Platypus.
                He submits updates on those positions, providing a reason for cancellation, such as a medical reason, 
                and sets their status to 'cancelled'. 
                The LINCA systems prevents Walter Specht from submitting such cancellations
                if Patrizia's practitioner, Dr. Kunibert Kreuzotter, has already issued a prescription for the original order position
                <p><a target="_blank" href="https://github.com/loidl-consulting/linca-sdk/blob/main/Lc.Linca.Sdk.Sample/Specs/ActorCare/US005-CancelOrderPartial.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_005_diagram.svg" target="_blank">
                    <img src="UserStory_005_diagram.svg" width ="69%" />
                </a>
            </p>
        </div>
        <div id="US006" class="tab-pane fade">
            <p>
                <strong>US006</strong> Cancel an order in its entirety<br>
                User Walter Specht (DGKP) is a caregiver in the inpatient care facility Haus Vogelsang. 
                He has already placed a collective order for prescription medication for several clients on LINCA. Now, he needs to cancel the complete order due to a major mistake.
                He submits a delete request on the order number, providing a reason for cancellation, such as a human error. 
                Then, either the whole order will be cancelled by the LINCA system, if for none of its positions the designated practitioner has already issued a prescription and the status is set to 'revoked' by LINCA, or the whole order will remain active if for any of its positions the designated practitioner has already issued a prescription. And positions for which the designated practitioner has not yet issued a prescription,  will be promoted to the status 'cancelled' by the LINCA system
                <p><a href="https://github.com/loidl-consulting/linca-sdk/blob/main/Lc.Linca.Sdk.Sample/Specs/ActorCare/US006-CancelOrderCompletely.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_006_diagram.svg" target="_blank">
                    <img src="UserStory_006_diagram.svg" width ="69%" />
                </a>
            </p>
        </div>
        <div id="US007" class="tab-pane fade">
            <p>
                <strong>US007</strong> Check order status<br>
                User Walter Specht (DGKP) is a caregiver in the inpatient care facility Haus Vogelsang. 
                He has already placed a collective order for prescription medication for several clients on LINCA.
                Walter Specht needs to know the status of that order, and he has the permission to read the 
                entire order. 
                Hence, he submits a read request on the order number, and his care software can use the returned LINCA order position chains, and present the status of the order and all its positions.
                <p><a target="_blank" href="https://github.com/loidl-consulting/linca-sdk/blob/main/Lc.Linca.Sdk.Sample/Specs/ActorCare/US007-GetOrderStatus.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_007_diagram.svg" target="_blank">
                    <img src="UserStory_007_diagram.svg" width ="69%" />
                </a>
            </p>
        </div>
        <div id="US008" class="tab-pane fade">
            <p>
                <strong>US008</strong> Get initial prescriptions for client<br>
                Renate Rüssel-Olifant had a check-up with her general practitioner Dr. Wibke Würm and 
 		got an initial prescription for new medication she has not been taking so far. 
 		Her caregiver Susanne Allzeit (DGKP) can see the new prescription for Renate Rüssel-Olifant 
 		on her mobile device, and can pick up the new medication at a pharmacy of her choice by presenting the
 		corresponding data matrix code.
                <p><a target="_blank" href="https://github.com/loidl-consulting/linca-sdk/blob/main/Lc.Linca.Sdk.Sample/Specs/ActorCare/US008-GetInitialPresciptionsForClient.cs">Client-side example implementation</a></p>
                <a style="border:none;" href="UserStory_008_diagram.svg" target="_blank">
                    <img src="UserStory_008_diagram.svg" width ="69%" />
                </a>
            </p>
        </div>
    </div>       
</div>