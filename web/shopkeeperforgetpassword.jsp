


<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <title>Super Market an Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Registered :: w3layouts</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Super Market Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- font-awesome icons -->
        <link href="css/font-awesome.css" rel="stylesheet"> 
        <!-- //font-awesome icons -->
        <!-- js -->
        <script src="js/jquery-1.11.1.min.js"></script>
        <!-- //js -->
        <link href='//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
        <!-- start-smoth-scrolling -->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>

        <script>

            var otp;
            var username;
            function shopkeeperforgotpassword()
            {
                //write logic here to send ajax request
                //write logic here to send ajax request

                username = document.getElementById("id").value;

                if (username == "")
                {
                    alert("Fill all fields");
                } else
                {
                    var xhr = new XMLHttpRequest();

                    xhr.onreadystatechange = function ()
                    {
                        if (xhr.readyState === 4 && xhr.status == 200)
                        {
                            //get response from server
                            var res = xhr.responseText;


                            console.log(res);
                            res = res.trim();
                            if (res == "fail")
                            {
                                document.getElementById("changepasswordresult").innerHTML = "Username invalid";
                            } else
                            {
                                document.getElementById("sec2").style.display = "block";
                                document.getElementById("changepasswordresult").innerHTML = "OTP has been sent to your phoneno";

                                otp = res;
                                alert(otp);
                            }

                        }
                    };

                    var querystring = "id=" + id;
                    xhr.open("GET", "shopkeeperforgotpasswordresponse?" + querystring, true);
                    xhr.send();

                }

            }

            function shopkeepercheckotp()
            {
                var userotp = document.getElementById("otp").value;
                if (userotp == "")
                {
                    alert("Please enter OTP");
                } else
                {
                    if (userotp == otp)
                    {
                        document.getElementById("mainsec").style.display = "none";
                        document.getElementById("changepasssec").style.display = "block";


                    } else
                    {
                        document.getElementById("changepasswordresult").innerHTML = "Wrong OTP";

                    }
                }

            }


            function gotologin()
            {
                location.href = "login.jsp?";
            }

            function shopkeeperchangepass()
            {

                var np = document.getElementById("np").value;
                var cp = document.getElementById("cp").value;

                if (np == "" || cp == "")
                {
                    alert("Please enter values");
                } else if (np != cp)
                {
                    alert("new password must be same as confirm password");

                } else
                {

                    var xhr = new XMLHttpRequest();

                    xhr.onreadystatechange = function ()
                    {
                        if (xhr.readyState === 4 && xhr.status == 200)
                        {
                            //get response from server
                            var res = xhr.responseText;


                            console.log(res);
                            res = res.trim();
                            if (res == "success")
                            {
                                alert("Password Changed successfully");
                                location.href="shopkeeperlogin.jsp";
                            }
                            else
                            {
                                alert("Some error occurred");
                            }

                        }
                    };

                    var querystring = "id="+id+"&np=" + np+"&cp="+cp;
                    xhr.open("GET", "shopkeeperforgotpasswordresponse1?" + querystring, true);
                    xhr.send();

                }

            }


        </script>


        <style>

            #sec2{
                display:none;
            }
            #changepasssec
            {
                display:none;
            }

        </style>

        <!-- start-smoth-scrolling -->
    </head>

    <body>

        <%@include file="header.jsp" %>


        <!-- //navigation -->
        <!-- breadcrumbs -->
        <div class="breadcrumbs">
            <div class="container">
                <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
                    <li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
                    <li class="active">Change Password Page</li>
                </ol>
            </div>
        </div>
        <!-- //breadcrumbs -->
        <!-- register -->
        <div class="register">
            <div class="container">
                <h2>Change Password</h2>
                <div class="login-form-grids">
                    <h5>profile information</h5>
                    <form id="signupform">

                        <div id="mainsec">


                            <input type="text" placeholder="Enter ID" name="id" id="id"  value="" required=" " >
                            <br>
                            <input type="button" onclick="shopkeeperforgotpassword()" name="forgotbutton"  value="Submit">
                            <br>

                            <div id="sec2">
                                <br>

                                <input type="number" class="form-control" placeholder="Enter OTP" name="otp" id="otp" required=" " >
                                <br>
                                <br>

                                <input type="button" onclick="shopkeepercheckotp()" name="button"  value="change">
                            </div>

                        </div>
                        <br>

                        <div id="changepasssec">
                            <input type="password" placeholder="Enter New password" name="np" id="np" required=" " >
                            <input type="password" placeholder="Confirm New password" name="cp" id="cp" required=" " >
                            <br>
                            <br>
                            <input type="button" onclick="shopkeeperchangepass()"  value="change">

                        </div>
                        <h4 id="changepasswordresult"></h4>

                    </form>

                </div>
                <div class="register-home">

                </div>
            </div>
        </div>
        <!-- //register -->
        <!-- //footer -->
        <%@include file="footer.jsp" %>
        <!-- //footer -->	
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        <!-- top-header and slider -->
        <!-- here stars scrolling icon -->
        <script type="text/javascript">
                                $(document).ready(function () {
                                    /*
                                     var defaults = {
                                     containerID: 'toTop', // fading element id
                                     containerHoverID: 'toTopHover', // fading element hover id
                                     scrollSpeed: 1200,
                                     easingType: 'linear' 
                                     };
                                     */

                                    $().UItoTop({easingType: 'easeOutQuart'});

                                });
        </script>
        <!-- //here ends scrolling icon -->
        <script src="js/minicart.min.js"></script>
        <script>
// Mini Cart
                                paypal.minicart.render({
                                    action: '#'
                                });

                                if (~window.location.search.indexOf('reset=true')) {
                                    paypal.minicart.reset();
                                }
        </script>
        <!-- main slider-banner -->
        <script src="js/skdslider.min.js"></script>
        <link href="css/skdslider.css" rel="stylesheet">
        <script type="text/javascript">
                                jQuery(document).ready(function () {
                                    jQuery('#demo1').skdslider({'delay': 5000, 'animationSpeed': 2000, 'showNextPrev': true, 'showPlayButton': true, 'autoSlide': true, 'animationType': 'fading'});

                                    jQuery('#responsive').change(function () {
                                        $('#responsive_wrapper').width(jQuery(this).val());
                                    });

                                });
        </script>	
        <!-- //main slider-banner --> 

    </body>
</html>