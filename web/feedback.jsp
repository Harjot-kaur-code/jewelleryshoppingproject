 

<%@page import="java.sql.ResultSet"%>
<%@page import="vmm.DBLoader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<!DOCTYPE html>
<html>
    <head>
        <title>Super Market an Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
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
        <!-- start-smoth-scrolling -->

        <script>
            function gotoproducts(categoryname)
            {

                location.href = "products.jsp?categoryname=" + categoryname;

            }



        </script>
        <script>

            function gotoproductdetail(pid)
            {

                location.href = "productdetails.jsp?pid=" + pid;

            }

            function feedback()
            {
                var username = document.getElementById("username").value;
                var email = document.getElementById("email").value;
                var phoneno = document.getElementById("phoneno").value;
                var message = document.getElementById("message").value;

                if (username == "" || email == "" || phoneno == "" || message == "")
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

                            alert(res);
                            console.log(res);
                            res = res.trim();
                            if (res == "success")
                            {
                                document.getElementById("signupresult").innerHTML = "Send Successfully";

                                document.getElementById("username").value = "";
                                document.getElementById("email").value = "";
                                document.getElementById("phoneno").value = "";
                                document.getElementById("message").value = "";

                            } else
                            {
                                document.getElementById("signupresult").innerHTML = "Error while sending Feedback";

                            }


                        }
                    };
                    var querystring = "username=" + username + "&email=" + email + "&phoneno=" + phoneno + "&message=" + message;
                    xhr.open("POST", "feedbackresponse?" + querystring, true);


                    xhr.send();

                }
            }

        </script>


    </head>

    <body>


        <%@include file="header.jsp" %>




        <!-- //navigation -->
        <!-- breadcrumbs -->
        <div class="breadcrumbs">
            <div class="container">
                <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
                    <li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
                    <li class="active">Feedback</li>

                </ol>
            </div>
        </div>
        <!-- //breadcrumbs -->
        <!-- register -->
        <div class="register">
            <div class="container">


                <h2>Enter Details</h2>
                <div class="login-form-grids">
                    <h5>Feedback information</h5>
                    <form id="signupform">
                        <input type="text" placeholder="Enter Username" name="username" id="username" required=" " >

                        <br>
                        <input type="email" placeholder="Enter email" name="email" id="email" required=" " >
                        <br>
                        <input type="text" placeholder="Enter phone no" name="phoneno" id="phoneno" required=" " >
                        <br>
                        <label>Message</label>
                        <textarea class="form-control" id="message" required="" name="message"></textarea>

                        <h4 id="signupresult"></h4>
                        <br>
                        <br>

                        <input type="button" onclick="feedback()" name="signupbutton"  value="Submit">
                    </form>

                </div>
                <div class="register-home">

                </div>
            </div>
        </div>





        <%@include file="footer.jsp" %>

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