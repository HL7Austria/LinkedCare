<div xmlns="http://www.w3.org/1999/xhtml" class="container">
    <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#US008">US008</a></li>
    <li><a data-toggle="pill" href="#US014">US014</a></li>
    <li><a data-toggle="pill" href="#US015">US015</a></li>
    <li><a data-toggle="pill" href="#US016">US016</a></li>
    <li><a data-toggle="pill" href="#US017">US017</a></li>
    </ul>

   <div class="tab-content">
       <div id="US014" class="tab-pane fade  in active">
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
        </div>
        <div id="US015" class="tab-pane fade">
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
        </div>
        <div id="US016" class="tab-pane fade">
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
        </div>
        <div id="US017" class="tab-pane fade">
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