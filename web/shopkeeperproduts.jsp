


<%@page import="java.sql.ResultSet"%>
<%@page import="vmm.DBLoader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <title>Super Market an Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Groceries :: w3layouts</title>
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

            function gotoproductdetail(pid)
            {

                location.href = "productdetails.jsp?pid=" + pid;

            }

        </script>



    </head>


    <%@include file="header.jsp" %>


    <!-- breadcrumbs -->
    <div class="breadcrumbs">
        <div class="container">
            <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
                <li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>

                <%                        String skid = request.getParameter("skid");
                    ResultSet rss = DBLoader.executeQuery("select * from shopkeeper where skid=" + skid);

                    rss.next();
                    String shopkeepername = rss.getString("name");

                %>


                <li class="active">Products By : <%=shopkeepername%></li>
            </ol>
        </div>
    </div>
    <!-- //breadcrumbs -->
    <!--- groceries --->
    <div class="products">
        <div class="container">


            <div class="col-md-12 products-right">
                <div class="products-right-grid">
                    <div class="products-right-grids">

                        <h2>Products By <%=shopkeepername%></h2>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <div class="agile_top_brands_grids">

                    <%
                        ResultSet rs = DBLoader.executeQuery("select * from products where skid='" + skid + "'");
                        while (rs.next()) {
                            int pid = rs.getInt("pid");
                            String name = rs.getString("name");
                            String photo = rs.getString("photo");
                            int price = rs.getInt("price");
                            int offerprice = rs.getInt("offerprice");
                            String categoryname = rs.getString("categoryname");


                    %>

                    

                    <div class="col-md-3 top_brand_left" style="margin-top: 10px;" >
                        <div class="hover14 column">
                            <div class="agile_top_brand_left_grid">
                                <div class="agile_top_brand_left_grid_pos">
                                    <img src="images/offer.png" alt=" " class="img-responsive">

                                </div>
                                <div class="agile_top_brand_left_grid1" >
                                    <figure>
                                        <div class="snipcart-item block" >
                                            <div class="snipcart-thumb" >


                                                <a href="productdetails.jsp?pid=<%=pid%>"><img title=" " alt=" " src="<%=photo%>" style="width:100%;height:200px;" ></a>		
                                                <p><%=name%></p>
                                                <h4>&#x20B9; <%=price%> <span><%=offerprice%></span></h4>
                                                <br>
                                                <div class="stars">
                                                    <%

                                                        ResultSet rsa = DBLoader.executeQuery("select AVG(rating) as rating from ratings where pid=" + pid);

                                                        rsa.next();
                                                        int rating = rsa.getInt("rating");

                                                        for (int i = 1; i <= rating; i++) {


                                                    %>
                                                    <i class="fa fa-star blue-star" aria-hidden="true"></i>

                                                    <%                    }


                                                    %>

                                                    <%                                                        for (int i = rating; i < 5; i++) {


                                                    %>

                                                    <i class="fa fa-star gray-star" aria-hidden="true"></i>
                                                    <%                    }
                                                    %>

                                                </div>                                       
                                            </div>
                                            <div class="snipcart-details top_brand_home_details">
                                                <form action="#" method="post">
                                                    <fieldset>
                                                        <input type="hidden" name="cmd" value="_cart">
                                                        <input type="hidden" name="add" value="1">
                                                        <input type="hidden" name="business" value=" ">
                                                        <input type="hidden" name="item_name" value="Fortune Sunflower Oil">
                                                        <input type="hidden" name="amount" value="35.99">
                                                        <input type="hidden" name="discount_amount" value="1.00">
                                                        <input type="hidden" name="currency_code" value="USD">
                                                        <input type="hidden" name="return" value=" ">
                                                        <input type="hidden" name="cancel_return" value=" ">
                                                        <input type="button" name="submit" onclick="gotoproductdetail('<%=pid%>')" value="View Details" class="button">
                                                    </fieldset>
                                                </form>
                                            </div>
                                        </div>
                                    </figure>
                                </div>
                            </div>
                        </div>
                    </div>


                    <%                            }
                    %>
                    <div class="clearfix"> </div>
                </div>


                <nav class="numbering">
                    <ul class="pagination paging">
                        <li>
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li>
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <!--- groceries --->
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


</html>
