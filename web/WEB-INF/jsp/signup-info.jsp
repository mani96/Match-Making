<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Untitled</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="assets/css/styles.min.css">
   
</head>

<body>
    <br> ${email}
    <br> ${password}
    <br> ${passwordr}
   
    
    <form id="createacc">
        First name:<br> <input type="text" name="firstname" id="FFname"><br>
        Last name:<br> <input type="text" name="lastname" id="FLname"><br>
        Day:<br> <input type="number" name="day" min="0" max="31" id="Fday"><br>
        Month:<br> <input type="number" name="month" min="1" max="12" id="FMonth"><br>
        Year:<br> <input type="number" name="year" min="1950" max="2040" id="FYear"><br>
        Hour:<br> <input type="number" name="hour" min="0" max="24" id="FHour"><br>
        min:<br> <input type="number" name="min" min="0" max="60" id="FMin"><br>
        sec:<br> <input type="number" name="sec" min="0" max="60" id="FSec"><br>
        Place:<br> <input type="text" name="place" id="FsearchTextField"><br>
        <button class="btn btn-default " id="now"> Create Account</button>
                
    </form>
    
    
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="http://maps.googleapis.com/maps/api/js?sensor=false&amp;libraries=places&amp;key=AIzaSyAlY1O8wohWM9UH4xGJK1lDL0iO-j3M8y0" type="text/javascript"></script> 
    <script src="<c:url value="/assets/js/signup.js"/>"></script>
    
    <script type="text/javascript">
   function initialize() {
     
      var Finput = document.getElementById('FsearchTextField');
      var Fautocomplete = new google.maps.places.Autocomplete(Finput);
                 
    }
    
    google.maps.event.addDomListener(window, 'load', initialize); 
 
</script>
    
    <script>
        $(document).ready(function(){
           $("#now").click(function(){
               alert("clicked");
              
              //This method will submit the form, try this after geting time and location 
               $("form").attr("action","myaccount");
               $("form").attr("method","post");
               $("form").submit();
           })
        });
        </script>
    </body>

</html>