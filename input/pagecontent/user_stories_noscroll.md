
  <div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
   A complete Linked Care implementation shall provide at least the functionality described in the following collection of user stories. In the user stories for actor care, we differentiate between mobile and stationary care, but mobile caregivers can of course also place collective orders for several patients. 
    <ul class="nav nav-tabs">
	<li class="active"><a data-toggle="tab" href="#overview"><strong>Overview</strong></a></li>
        <li><a data-toggle="tab" href="#actor-care">Actor <strong>Care</strong></a></li>
        <li><a data-toggle="tab" href="#actor-doctor">Actor <strong>Doctor</strong></a></li>
        <li><a data-toggle="tab" href="#actor-pharmacy">Actor <strong>Pharmacy</strong></a></li>
    </ul>

    <script type="text/javascript">
      function selectActor(us) {
        switch(us) {
          case "#US001":
          case "#US002":
          case "#US003":
          case "#US004":
          case "#US005":
          case "#US006":
          case "#US007":
          case "#US008":
            document.querySelector('[href="#actor-care"]').click();
            break;

          case "#US009":
	  case "#US010":
	  case "#US011":
	  case "#US012":
	  case "#US013":
	  case "#US014":
	  case "#US015":
            document.querySelector('[href="#actor-doctor"]').click();
            break;

	  case "#US016":
	  case "#US017":
	  case "#US018":
	  case "#US019":
            document.querySelector('[href="#actor-pharmacy"]').click();
            break;
        }

          document.querySelector('[data-toggle="pill"][href="'+us+'"]').click();
      }
  
      window.addEventListener('hashchange', function(e) {
        selectActor(window.location.hash);
      });
    </script>

    <div class="tab-content">
	<div id="overview" class="tab-pane fade in active">
            {% include overview.md %}
        </div>
        <div id="actor-care" class="tab-pane fade">
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