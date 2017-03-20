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
    <div class="register-photo">
        <div class="form-container">
            <div class="image-holder"></div>
            <form action="signup2" method="post" id="signup">
                <h2 class="text-center"><strong>Create</strong> an account.</h2>
                <div class="form-group">
                    <input class="form-control" type="email" name="email" placeholder="Email" id="email">
                </div>
                <div class="form-group">
                    <input class="form-control" type="password" name="password" placeholder="Password" id="password">
                </div>
                <div class="form-group">
                    <input class="form-control" type="password" name="passwordr" placeholder="Password (repeat)" id="cpassword">
                </div>
                <div class="form-group">
                    <div class="checkbox">
                        <label class="control-label">
                            <input type="checkbox">I agree to the license terms.</label>
                    </div>
                </div>
                <div class="form-group">
                    <button class="btn btn-primary btn-block" type="submit" >Sign Up</button>
                </div><a href="#" class="already">You already have an account? Login here.</a></form>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <script src="<c:url value="/assets/js/signup.js"/>"></script>
    
    <script>
        $(document).ready(function(){
            $('#signup').submit(function(event){
                    alert("hello");
                    //event.preventDefault();       
                    firsttest();
                    //check if values are entered 
                    //check if i agree clicked                
            });
        });
    </script>    
</body>

</html>