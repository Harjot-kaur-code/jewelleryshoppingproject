
<%-- 
    Document   : login
    Created on : Dec 9, 2020, 11:41:01 AM
    Author     : harpr
--%>

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
        <title>Super Market an Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Login :: w3layouts</title>
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

            function loginlogic()
            {

                var username = document.getElementById("lusername").value;
                var password = document.getElementById("lpassword").value;

                var xhr = new XMLHttpRequest();

                xhr.onreadystatechange = function ()
                {
                    if (xhr.readyState === 4 && xhr.status == 200)
                    {
                        //get response from server
                        var res = xhr.responseText;



                        res = res.trim();
                        if (res == "success")
                        {
                            document.getElementById("loginresult").innerHTML = "Login successfuly";
                            setInterval(gotoindex, 2000);

                        } else
                        {
                            document.getElementById("loginresult").innerHTML = "Invalid username/password";
                        }
                    }
                };

                var querystring = "username=" + username + "&password=" + password;
                xhr.open("GET", "loginresponse?" + querystring, true);
                xhr.send();

            }

            function gotoindex()
            {
                location.href = "index.jsp";
            }

            function placeorder()
            {
                var address = document.getElementById("address").value;
                var city = document.getElementById("city").value;

                location.href = "placeorder?address=" + address + "&city=" + city;

            }

        </script>


        <style>

            .btnp
            {
                outline: none;
                border: none;
                padding: 10px 0;
                font-size: 1em;
                color: #fff;
                display: block;
                width: 100%;
                background: #3399cc;
                margin: 1.5em 0 0;  
            }

        </style>
    </head>

    <body>
        <%@include file="header.jsp" %>
        <!-- breadcrumbs -->
        <div class="breadcrumbs">
            <div class="container">
                <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
                    <li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
                    <li class="active"></li>
                </ol>
            </div>
        </div>
        <!-- //breadcrumbs -->
        <!-- login -->
        <div class="login">
            <div class="container">
                <h2>Enter Details</h2>

                <div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
                    <form action="placeorder" method="post">

                        <label>Enter Address</label>
                        <textarea class="form-control" id="address" required="" name="address"></textarea>
                        <br>
                        <br>

                        <select class="form-control" required="" name="city" id="city">
                            <option>Select City</option>
                            <option>Delhi</option>
                            <option>Amritsar</option>
                            <option>Mumbai</option>
                            <option>Chandigarh</option>
                            <option>Patna</option>
                            <option>Kolkata</option> 
                            <option>Chennai</option> 
                            <option>Mohali</option>
                               
                               
                               
                        </select>

                        <h4 id="loginresult"></h4>
                        <input type="button" class="btnp" onclick="placeorder()"  value="Place Order (Cash on Delivery)"/>

                        <script
                            src="https://checkout.razorpay.com/v1/checkout.js"
                            data-key="rzp_test_96HeaVmgRvbrfT"
                            data-amount="<%=request.getParameter("totalprice")%>00"
                            data-buttontext="Pay with Razorpay"
                  
                            data-name="Jewellery Shopping"
                            data-description=""
                            data-image="images/card.png"
                            data-prefill.name="Jewellery Shopping"
                            data-prefill.email="email@gmail.com"
                            data-theme.color="orangewhite"
                            >
                        </script>


                    </form>
                </div>
                <h4>For New People</h4>
                <p><a href="registered.html">Register Here</a> (Or) go back to <a href="index.html">Home<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></p>
            </div>
        </div>
        <!-- //login -->
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