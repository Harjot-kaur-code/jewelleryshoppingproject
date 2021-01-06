 

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

        <!-- main-slider -->
        <ul id="demo1">
            <li>
                <img src="myuploads/slide3.jpg" alt="" />
                <!--Slider Description example-->
                <div class="slide-desc">
                   
                </div>
            </li>
            <li>
                <img src="myuploads/slide11.jpg" alt="" />
                <div class="slide-desc">
                   
                </div>
            </li>

            <li>
                <img src="myuploads/slide10.jpg" alt="" />
                <div class="slide-desc">
                    
                </div>
            </li>
        </ul>
        <!-- //main-slider -->
        <!-- //top-header and slider -->


        <div class="top-brands">
            <div class="container">
                <h2>Categories</h2>

                <br>
                <div class="row">

                    <% ResultSet rs = DBLoader.executeQuery("select * from categories");
                        while (rs.next()) {

                            String categoryname = rs.getString("categoryname");
                            String photo = rs.getString("photo");

                    %>
                    <div class="col-sm-3" onclick="gotoproducts('<%=categoryname%>')" >

                        <div style="padding:10px;text-align: center;box-shadow:1px 1px 6px rgba(0,0,0,0.7);border-radius:5px;margin-top:10px;">
                            <img src="<%=photo%>" style="width:200px;height:200px;"  />
                            <h3 ><%=categoryname%></h3>
                        </div>

                    </div>

                    <%                        }
                    %>


                </div>

            </div>
        </div>  





       	
        <!--banner-bottom-->
        <div class="ban-bottom-w3l">
            <div class="container">
                <div class="col-md-16 ban-bottom3">
                    <div class="ban-top">
                        <img src="myuploads/banner.jpg" class="img-responsive" alt=""/>

                    </div>
                    <div class="ban-img">
                        <div class=" ban-bottom1">
                            <div class="ban-top">
                                <img src="myuploads/banner1.png" class="img-responsive" alt=""/>

                            </div>
                        </div>
                        <div class="ban-bottom2">
                            <div class="ban-top">
                                <img src="myuploads/banner2.jpg" class="img-responsive" alt=""/>

                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>



                <div class="clearfix"></div>
            </div>
        </div>
        <!--banner-bottom-->
        <!--brands-->
        <div class="brands">
            <div class="container">
                <h3>Brand Store</h3>
                <div class="brands-agile">
                    <div class="col-md-2 w3layouts-brand">
                        <div class="brands-w3l">
                            <p><a href="#">Lorem</a></p>
                        </div>
                    </div>
                    <div class="col-md-2 w3layouts-brand">
                        <div class="brands-w3l">
                            <p><a href="#">Lorem</a></p>
                        </div>
                    </div>
                    <div class="col-md-2 w3layouts-brand">
                        <div class="brands-w3l">
                            <p><a href="#">Lorem</a></p>
                        </div>
                    </div>

                    <div class="col-md-2 w3layouts-brand">
                        <div class="brands-w3l">
                            <p><a href="#">Lorem</a></p>
                        </div>
                    </div>
                    <div class="col-md-2 w3layouts-brand">
                        <div class="brands-w3l">
                            <p><a href="#">Lorem</a></p>
                        </div>
                    </div>
                    <div class="col-md-2 w3layouts-brand">
                        <div class="brands-w3l">
                            <p><a href="#">Lorem</a></p>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="brands-agile-1">
                    <div class="col-md-2 w3layouts-brand">
                        <div class="brands-w3l">
                            <p><a href="#">Lorem</a></p>
                        </div>
                    </div>
                    <div class="col-md-2 w3layouts-brand">
                        <div class="brands-w3l">
                            <p><a href="#">Lorem</a></p>
                        </div>
                    </div>
                    <div class="col-md-2 w3layouts-brand">
                        <div class="brands-w3l">
                            <p><a href="#">Lorem</a></p>
                        </div>
                    </div>

                    <div class="col-md-2 w3layouts-brand">
                        <div class="brands-w3l">
                            <p><a href="#">Lorem</a></p>
                        </div>
                    </div>
                    <div class="col-md-2 w3layouts-brand">
                        <div class="brands-w3l">
                            <p><a href="#">Lorem</a></p>
                        </div>
                    </div>
                    <div class="col-md-2 w3layouts-brand">
                        <div class="brands-w3l">
                            <p><a href="#">Lorem</a></p>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="brands-agile-2">
                    <div class="col-md-2 w3layouts-brand">
                        <div class="brands-w3l">
                            <p><a href="#">Lorem</a></p>
                        </div>
                    </div>
                    <div class="col-md-2 w3layouts-brand">
                        <div class="brands-w3l">
                            <p><a href="#">Lorem</a></p>
                        </div>
                    </div>
                    <div class="col-md-2 w3layouts-brand">
                        <div class="brands-w3l">
                            <p><a href="#">Lorem</a></p>
                        </div>
                    </div>

                    <div class="col-md-2 w3layouts-brand">
                        <div class="brands-w3l">
                            <p><a href="#">Lorem</a></p>
                        </div>
                    </div>
                    <div class="col-md-2 w3layouts-brand">
                        <div class="brands-w3l">
                            <p><a href="#">Lorem</a></p>
                        </div>
                    </div>
                    <div class="col-md-2 w3layouts-brand">
                        <div class="brands-w3l">
                            <p><a href="#">Lorem</a></p>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>	
        <!--//brands-->
        <!-- new -->
        <div class="newproducts-w3agile">
            <div class="container">
                <h3>New offers</h3>
                <div class="agile_top_brands_grids">

                    <%
                        ResultSet rs2 = DBLoader.executeQuery("select * from products ORDER BY pid DESC LIMIT 4");

                        while (rs2.next()) {
                            String name = rs2.getString("name");
                            int pid = rs2.getInt("pid");
                            String photo = rs2.getString("photo");
                            int price = rs2.getInt("price");
                            int offerprice = rs2.getInt("offerprice");

                    %>

                    <div class="col-md-3 top_brand_left-1">
                        <div class="hover14 column">
                            <div class="agile_top_brand_left_grid">
                                <div class="agile_top_brand_left_grid_pos">
                                    
                                </div>
                                <div class="agile_top_brand_left_grid1">
                                    <figure>
                                        <div class="snipcart-item block">
                                            <div class="snipcart-thumb">
                                                <a href="gotoproductdetail(<%=pid%>)"><img title=" " alt=" " src="<%=photo%>" style="width:200px;height:200px;" ></a>		
                                                <p><%=name%></p>
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

                                                    <%
                                                        for (int i = rating; i < 5; i++) {


                                                    %>

                                                    <i class="fa fa-star gray-star" aria-hidden="true"></i>
                                                    <%                    }
                                                    %>

                                                </div>
                                                <h4><%=offerprice%> <span><%=price%></span></h4>
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
                                                        <input type="button" onclick="gotoproductdetail(<%=pid%>)" name="submit" value="View Details" class="button">
                                                    </fieldset>
                                                </form>
                                            </div>
                                        </div>
                                    </figure>
                                </div>
                            </div>
                        </div>
                    </div>

                    <%                        }
                    %>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!-- //new -->

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