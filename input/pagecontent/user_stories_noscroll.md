
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
           {% include actor_doctor.md %}
        </div>
        <div id="actor-pharmacy" class="tab-pane fade">
          {% include actor_pharmacy.md %}
        </div>
    </div>
</div>