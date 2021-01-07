 

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
                
                location.href="productdetails.jsp?pid="+pid;

            }

        </script>


    </head>

    <body>


        <%@include file="header.jsp" %>

       
    <center>    <h1>About us</h1></center>
                     
                         <h4>When it comes to buying jewellery online, we worry about a lot of things like whether the quality will match up to your standards, will the product look as shown in the image or will the delivery happen on time etc. These general questions are bound to arise in a consumer’s mind and can only be addressed to with exact details which we at Pipa • Bella do. From the comfort of your house, you can shop for latest jewellery designs that are in trend and are in demand. If you are a fashionista and are searching for the best jewellery design, PB is the place for you. With great prices, amazing deals and high-quality products, Pipa • Bella is the one stop shop for all your jewellery needs. Online jewellery shopping will now be easy, be it picking up a set of earrings for a special occasion or buying a gift. Enjoy hassle free shopping and get online shopping benefits by adding things to your cart here.With a comprehensive description below every product and a full sizing guide when it comes to rings, Pipa • Bella believes in offering its customers all the following details.

                             <li> High resolution images which help seeing the product clearly.</li>
                             <li> We also offers customised jewellery in terms of name pendants, bracelets and rings.</li>
                             <li> Charm jewellery is also a section where you can create charm hoops, charm bracelets charm necklaces and charm anklets with your ideal selection of charms.</li>
<li> Durable and High-quality material.</li>
<li> Stylish and always on trend.</li>
<li> Great to be bought or gifted.</li>
<li> So, get shopping for trendy fashion jewellery and upgrade your jewellery wardrobe instantly.</li></h4>
                    
        
        
        

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