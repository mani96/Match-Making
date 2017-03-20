<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
       
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Untitled</title>
    <link rel="stylesheet" href="<c:url value="/assets/bootstrap/css/bootstrap.min.css" />" >
    <link rel="stylesheet" href="<c:url value="/assets/css/Paralax-Hero-Banner.css"/>" >
    <link rel="stylesheet" href="<c:url value="/assets/css/buttoncss.css"/>" >
     
</head>

<body>
<div class="container-fluid">
<div class="row">
    <div class="jumbotron">
	   <div class="jumbotron_heads">
        <h1 class="hero-title">Match Making</h1>
        <p class="hero-subtitle">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
        <p><a class="btn btn-default mybtn btn-primary" role="button" href="#">Learn more</a> <a class="btn btn-default btn-success mybtn" role="button" 
                                                                                          href="/GunMilan/register">Sign up</a>

		</div>
    </div>
	</div>
	
	<!---------------------content----------------------------------------------------------------->
	<div class="content">
	   <div class="contentHeads">
	      <h2>Match Making</h2>
		  <p>Duis bibendum diam non erat facilaisis tincidunt. Fusce leo neque, lacinia at tempor vitae, porta at arcu.</p>
		  <p>estibulum varius non dui at pulvinar. Ut egestas orci in quam sollicitudin aliquet.</p>
	</div>
	
	<!------------------calculator form--------------------------------->
	<div class="calculator">
	<form id="kundliCal" action="getGun.htm" method="post" >
	 <div class="container cal">
	  <div class="row">
	  
	  <!-------------------------------------------Boys details-------------------------------------------------------------->
  <div class="col-6 col-md-6">
  <div class="panel panel-default">
    	
			<div class="panel-heading">Enter Boy's Detail</div>
			<div class="panel-body">
                <!-------------------------->
               <div class="form-group">
                   <div class="row">
                       <div class="col-xs-6 padding-r-5px">
			   <input type="text" name="MFname" id="MFname" class="form-control" placeholder="First Name"
                      maxlength="100" tabindex="1" required/></div>
                        <div class="col-xs-6 padding-r-5px">
                   <input type="text" name="MLname" id="MLname" class="form-control" placeholder="Last Name"
            maxlength="100" tabindex="2" required/></div>
                 </div>
			   </div>
                <!-------------------------------->
            		<div class="form-group">
                        <p>Date of Birth</p>
                        <div class="row">
                        <div class="col-xs-4 padding-r-5px">
                            <input type="number" class="form-control" name="MDay" id="Mday" min="1" max="31"
                    placeholder="Day"  tabindex="3" data-toggle="tooltip" title="Day" required />

                            </div>
                         <div class="col-xs-4 padding-r-5px">
                            <input type="number" class="form-control" name="MMonth" id="MMonth" min="1" max="12"
                    placeholder="Month"  tabindex="4" data-toggle="tooltip" title="Month" required />

                            </div>
                             <div class="col-xs-4 padding-r-5px">
                            <input type="number" class="form-control" name="MYear" id="MYear" min="1950" max="2017"
                    placeholder="Year"  tabindex="5" data-toggle="tooltip" title="Year" required />

                            </div>
                        </div>
                </div>
                <!----------------------------------------------------->
                <div class="form-group">
                     <p> Time <font color="red">(24 hours format)</font></p>
                        <div class="row">
                        <div class="col-xs-4 padding-r-5px">
                            <input type="number" class="form-control" name="MHour" id="MHour" min="0" max="23"
                    placeholder="Hour" tabindex="6" data-toggle="tooltip" title="Hour" required />

                            </div>
                         <div class="col-xs-4 padding-r-5px">
                            <input type="number" class="form-control" name="MMin" id="MMin" min="0" max="59"
                    placeholder="Minute"  tabindex="7" data-toggle="tooltip" title="Minute" required />

                            </div>
                             <div class="col-xs-4 padding-r-5px">
                            <input type="number" class="form-control" name="MSec" id="MSec" min="0" max="59"
                    placeholder="Sec"  tabindex="8" data-toggle="tooltip" title="Second" required />

                            </div>
                        </div>
                </div>
                
                <!---------------------------------------------------->
                <div class="form-group">
                    <p>Place Of Birth</p>
                    <div class="row">
                        <div class="col-xs-12 padding-r-5px">
  <input type="text" class="form-control" placeholder="Enter Place of birth" id="MsearchTextField" autocomplete="on" tabindex="9" required >
                            </div>
                    </div>
                </div>
				<!--------------------------------------->
				<div class="clearfix"></div>
            </div>
  </div>
  </div>
  
  <!-----------------------------------------------------------girl details-------------------------------------------------------->
  <div class="col-6 col-md-6">
  <div class="panel panel-default">
    
			<div class="panel-heading">Enter Girl's Deatils</div>
			<div class="panel-body">
            <div class="form-group">
                   <div class="row">
                       <div class="col-xs-6 padding-r-5px">
			   <input type="text" name="FFname" id="FFname"  class="form-control" placeholder="First Name"
                      maxlength="100" tabindex="10" required /></div>
                        <div class="col-xs-6 padding-r-5px">
                   <input type="text" name="FLname" id="FLname" class="form-control" placeholder="Last Name"
            maxlength="100" tabindex="11"  required /></div>
                 </div>
			   </div>
                <!-------------------------------->
            		<div class="form-group">
                        <p>Date of Birth</p>
                        <div class="row">
                        <div class="col-xs-4 padding-r-5px">
                            <input type="number" class="form-control" name="FDay" id="Fday" min="1" max="31"
                    placeholder="Day"  tabindex="12" data-toggle="tooltip" title="Day" required />

                            </div>
                         <div class="col-xs-4 padding-r-5px">
                            <input type="number" class="form-control" name="FMonth" id="FMonth" min="1" max="12"
                    placeholder="Month"  tabindex="13" data-toggle="tooltip" title="Month" required />

                            </div>
                             <div class="col-xs-4 padding-r-5px">
                            <input type="number" class="form-control" name="FYear" id="FYear" min="1950" max="2017"
                    placeholder="Year"  tabindex="14" data-toggle="tooltip" title="Year" required />

                            </div>
                        </div>
                </div>
                <!----------------------------------------------------->
                <div class="form-group">
                     <p> Time <font color="red">(24 hours format)</font></p>
                        <div class="row">
                        <div class="col-xs-4 padding-r-5px">
                            <input type="number" class="form-control" name="FHour" id="FHour" min="0" max="23"
                    placeholder="Hour" tabindex="15" data-toggle="tooltip" title="Hour" required/>

                            </div>
                         <div class="col-xs-4 padding-r-5px">
                            <input type="number" class="form-control" name="MMin" id="FMin" min="0" max="59"
                    placeholder="Minute"  tabindex="16" data-toggle="tooltip" title="Minute" required />

                            </div>
                             <div class="col-xs-4 padding-r-5px">
                            <input type="number" class="form-control" name="MSec" id="FSec" min="0" max="59"
                    placeholder="Sec"  tabindex="17" data-toggle="tooltip" title="Second" required />

                            </div>
                        </div>
                </div>
                
                <!---------------------------------------------------->
                <div class="form-group">
                       <p>Place Of Birth</p>
                    <div class="row">
                        <div class="col-xs-12 padding-r-5px">
                            <input type="text" class="form-control" placeholder="Enter Place of birth" id="FsearchTextField" autocomplete="on" tabindex="18" required >
                            </div>
                    </div>
                </div>
				<!--------------------------------------->
           				
				
				<div class="clearfix"></div>
            </div>
  
  </div>
  </div>
  <!----------------------------------------->
  <div class="row submitBtn">
      <button type="submit" class="btn btn-default "  >
                    Calculate</button>
        </div>
  <div class="container">
          <div id="result" style="margin-top: 25px;">
          </div> 
          </div>
  
          
  
</div><!---------------end of calculator row--->
</div><!---------------end of calculator inside container--->
        <!----------------calculate button------------------------------------------------>
        
	</form>
	
 </div><!---------------end of calculator--->
 </div><!---------------end of content--->
 </div><!---------------end of container fuid--->
    
  
    <!----------------------------------------------------------->
	 
    <!--<script src="<c:url value="/assets/js/jquery.min.js"/>"> </script> -->
    <script src="<c:url value="/assets/bootstrap/js/bootstrap.min.js"/>"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js" type="text/javascript"></script>
    <script src="http://maps.googleapis.com/maps/api/js?sensor=false&amp;libraries=places&amp;key=AIzaSyAlY1O8wohWM9UH4xGJK1lDL0iO-j3M8y0" type="text/javascript"></script> 
    <script src="<c:url value="/assets/js/geocoding.js"/>"></script>
    <script src="<c:url value="/assets/js/setresult.js"/>"></script>
    
<script type="text/javascript">
   function initialize() {
      var input = document.getElementById('MsearchTextField');
      var autocomplete = new google.maps.places.Autocomplete(input);
       
      var Finput = document.getElementById('FsearchTextField');
      var Fautocomplete = new google.maps.places.Autocomplete(Finput);
                 
    }
    
    google.maps.event.addDomListener(window, 'load', initialize); 
 
</script>

<script type="text/javascript">
        $(document).ready(function() {
              $('#kundliCal').submit(function(event){
                  event.preventDefault();
                  mygeocode();
                  ///////////tryajaxtest();// in order to test ajax use this
                                       
            });
});
   
    </script>

   
</body>

</html>