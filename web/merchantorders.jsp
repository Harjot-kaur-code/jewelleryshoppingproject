

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
        <!-- start-smoth-scrolling -->


    </head>

    <body>

        <%@include file="header.jsp" %>

        <div class="container" style="min-height: 400px;">
            <div class="row">
                <div class="col-sm-12">
                    <h1 style="text-align: center;margin: 20px;">My Orders</h1>

                    <% 
                        
                        
                        String skid = session.getAttribute("skid").toString();
                    
                        ResultSet rs55 = DBLoader.executeQuery("select * from orderdetails where pid IN(select pid from products where skid="+skid+") GROUP BY oid");

                        while (rs55.next()){
                        ResultSet rs = DBLoader.executeQuery("select * from orders where oid=" + rs55.getString("oid") + "");

                        if (rs.next()) {
                            int oid = rs.getInt("oid");
                            String date = rs.getString("datetime");
                            int totalprice = rs.getInt("totalprice");
                            String address = rs.getString("address");
                            String city = rs.getString("city");
                            String username = rs.getString("username");


                    %>

                    <div style="margin: 20px;box-shadow: 1px 1px 8px rgba(0,0,0,0.4);border-radius: 5px; padding:10px;">
                        <div class="row">
                            <div class="col-sm-8">
                                <h3>ORDER ID : <%=oid%></h3>
                                <h4>Date: <%=date%></h4>
                                <br>
                                <h5>Address: <%=address%></h5>
                                <h5>City <%=city%></h5>

                            </div>

                            <div class="col-sm-4">
                                <h4>Total Price: <%=totalprice%></h4>
                                <h5>Username: <%=username%></h5>
                            </div>

                        </div>

                        <br>
                        <div class="card">
                            <div class="card-header">
                                <a class="card-link" data-toggle="collapse" href="#collapseOne<%=oid%>">
                                    View Details
                                </a>
                            </div>
                            <div id="collapseOne<%=oid%>" class="collapse" data-parent="#accordion">
                                <div class="card-body">

                                    <table class="table table-bordered table-responsive">

                                        <thead>
                                            <tr>
                                                <th>No</th>
                                                <th>Name</th>
                                                <th>Photo</th>
                                                <th>Price</th>
                                                <th>Qty</th>
                                                <th>Total</th>

                                            </tr>

                                        </thead>

                                        <%

                                            ResultSet rs1 = DBLoader.executeQuery("select * from orderdetails where oid=" + oid + "");
                                            int s = 1;
                                            while (rs1.next()) {

                                                int pid = rs1.getInt("pid");
                                                int price = rs1.getInt("price");
                                                int qty = rs1.getInt("qty");

                                                ResultSet rs2 = DBLoader.executeQuery("select * from products where pid=" + pid + "");
                                                rs2.next();
                                                String name = rs2.getString("name");
                                                String photo = rs2.getString("photo");

                                        %>

                                        <tbody>
                                            <tr>
                                                <td><%=s%></td>
                                                <td><%=name%></td>
                                                <td><img src="<%=photo%>" style="width:60px;height:60px;" /></td>
                                                <td><%=price%></td>
                                                <td><%=qty%></td>
                                                <td><%=price*qty%></td>
                                            </tr>

                                        </tbody>


                                        <%            s++;
                                            }

                                        %>

                                    </table>
                                </div>
                            </div>


                        </div>




                    </div>



                    <%                        }
}
                    %>


                </div>
            </div>

        </div>



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