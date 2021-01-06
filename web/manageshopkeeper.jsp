
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
        <script>
            function fetchactiveshopkeepers()
            {


                var xhr = new XMLHttpRequest();

                xhr.onreadystatechange = function ()
                {
                    if (xhr.readyState === 4 && xhr.status == 200)
                    {
                        //get response from server
                        var res = xhr.responseText;
                        res = res.trim();

                        var jsonobj = JSON.parse(res);

                        jsonarr = jsonobj["ans"];

                        var ans = "<table class=\"table table-bordered\">";

                        ans += "<tr>";
                        ans += "<th>Shopkeeper Name</th>";
                        ans += "<th>Email</th>";
                        ans += "<th>Phone no</th>";
                        ans += "<th>Address</th>";
                        ans += "<th>City</th>";
                        ans += "<th>Password</th>";
                        ans += "<th>Photo</th>";
                        ans += "<th>Status</th>";

                        ans += "</tr>";



                        for (var i = 0; i < jsonarr.length; i++)
                        {
                            var o = jsonarr[i];
                            ans += "<tr>";
                            ans += "<td>" + o.name + "</td>";
                            ans += "<td>" + o.email + "</td>";
                            ans += "<td>" + o.phoneno + "</td>";
                            ans += "<td>" + o.address + "</td>";
                            ans += "<td>" + o.city + "</td>";
                            ans += "<td>" + o.password + "</td>";
                            ans += "<td><img src=\"" + o.photo + "\" width=\"60\" height=\"60\"  />&nbsp;<span onclick=\"editphoto('" + i + "')\" >edit</span></td>";
                            ans += "<td><button onclick=\"changestatus('pending','" + o.skid + "')\" class=\"btn btn-primary\" >Block</button></td>";

                            ans += "</tr>";

                        }

                        ans += "</table>";

                        document.getElementById("activeshopkeepers").innerHTML = ans;

                        fetchpendingshopkeepers();

                    }
                };

                xhr.open("GET", "fetchshopkeepers?status=active", true);
                xhr.send();

            }


            function fetchpendingshopkeepers()
            {


                var xhr = new XMLHttpRequest();

                xhr.onreadystatechange = function ()
                {
                    if (xhr.readyState === 4 && xhr.status == 200)
                    {
                        //get response from server
                        var res = xhr.responseText;
                        res = res.trim();

                        var jsonobj = JSON.parse(res);

                        jsonarr = jsonobj["ans"];

                        var ans = "<table class=\"table table-bordered\">";

                        ans += "<tr>";
                        ans += "<th>Shopkeeper Name</th>";
                        ans += "<th>Email</th>";
                        ans += "<th>Phone no</th>";
                        ans += "<th>Address</th>";
                        ans += "<th>City</th>";
                        ans += "<th>Password</th>";
                        ans += "<th>Photo</th>";
                        ans += "<th>Status</th>";
                        ans += "</tr>";



                        for (var i = 0; i < jsonarr.length; i++)
                        {
                            var o = jsonarr[i];
                            ans += "<tr>";
                            ans += "<td>" + o.name + "</td>";
                            ans += "<td>" + o.email + "</td>";
                            ans += "<td>" + o.phoneno + "</td>";
                            ans += "<td>" + o.address + "</td>";
                            ans += "<td>" + o.city + "</td>";
                            ans += "<td>" + o.password + "</td>";
                            ans += "<td><img src=\"" + o.photo + "\" width=\"60\" height=\"60\"  />&nbsp;<span onclick=\"editphoto('" + i + "')\" >edit</span></td>";
                            ans += "<td><button onclick=\"changestatus('active','" + o.skid + "')\" class=\"btn btn-primary\" >Approve</button></td>";

                            ans += "</tr>";

                        }

                        ans += "</table>";

                        document.getElementById("pendingshopkeepers").innerHTML = ans;

                       
                    }
                };

                xhr.open("GET", "fetchshopkeepers?status=pending", true);
                xhr.send();

            }

            function changestatus(status, skid)
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
                            document.getElementById("status").innerHTML = <h1>"Change Status Successfuly"</h1>;

                            fetchactiveshopkeepers();
                        } else
                        {
                            document.getElementById("status").innerHTML = "Error while changing the status";

                        }


                    }
                };

                xhr.open("GET", "changestatus?status=" + status + "&skid=" + skid, true);


                xhr.send();

            }


        </script>

    </head>



    <body onload="fetchactiveshopkeepers()" >

        <%@include file="adminheader.jsp" %>

        <div class="container">

            <h3 class="tittle-w3l">Manage Shopkeepers
                <span class="heading-style">
                    <i></i>
                    <i></i>
                    <i></i>
                </span>
            </h3>



            <h1>Active Shopkeepers</h1>
            <div id="activeshopkeepers">

            </div>


            <h1>Pending Shopkeepers</h1>
            <div id="pendingshopkeepers">

            </div>

            <div id="status">
            </div>    
        </div>



        <!-- //footer -->
        
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