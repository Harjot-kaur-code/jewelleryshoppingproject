

<%@page import="java.sql.ResultSet"%>
<%@page import="vmm.DBLoader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <title>Super Market an Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Single Page :: w3layouts</title>
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

            function addtocart(pid, name, price)
            {
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
                            alert("Item added to cart successfully");

                        } else if (res == "notloggedin")
                        {
                            alert("Please Login First");
                            location.href = "login.jsp";
                        }
                    }
                };

                var querystring = "pid=" + pid + "&name=" + name + "&price=" + price;
                xhr.open("GET", "addtocartlogic?" + querystring, true);
                xhr.send();



            }

        </script>

        <script>

            var xhr = new XMLHttpRequest();
            function review()
            {

                $("#myModal").modal("show");
            }

            var n = 0;
            function fill(obj)
            {
                var img = obj.src;
                var id = obj.id;
                var val = parseInt(id.substring(id.indexOf("_") + 1));
                var i;
                if (n === 0)
                {
                    i = 1;
                } else
                {
                    i = n + 1;
                }
                for (; i <= 5; i++)
                {
                    if (i <= val)
                    {
                        document.getElementById("rating_" + i).src = "rating/filled_star.png";

                    } else
                    {
                        document.getElementById("rating_" + i).src = "rating/empty_star.png";
                    }
                }

            }
            function selected(obj)
            {
                var id = obj.id;
                var val = parseInt(id.substring(id.indexOf("_") + 1));
                n = val;
            }
            function unfill(obj)
            {
                var i;
                if (n === 0)
                {
                    i = 1;
                } else
                {
                    i = n + 1;
                }
                for (; i <= 5; i++)
                {
                    document.getElementById("rating_" + i).src = "rating/empty_star.png";
                }
            }

            function addreview(pid)
            {
                if (n === 0)
                {
                    document.getElementById("label1").style.display = "block";

                } else
                {

                    var review = document.getElementById("comment").value;
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
                                alert("Ratings added successfully");
                                location.href = "productdetails.jsp?pid=" + pid;

                            } else if (res == "notloggedin")
                            {
                                alert("Please Login First");
                                location.href = "login.jsp";
                            } else
                            {
                                alert("Some error occurred");

                            }
                        }
                    };

                    var querystring = "rating=" + n + "&review=" + review + "&pid=" + pid;
                    xhr.open("GET", "addratings?" + querystring, true);
                    xhr.send();



                }
            }
            
            function openimage(image)
            {
                $("#gmodal").modal("show");
                document.getElementById("gimage").src=image;
            }
        </script>
        <style>
            
            .gimg{
                width:100% ;height:200px;border:2px solid #000;padding:3px; border-radius: 10px;margin: 10px;
                cursor: pointer;
            }
            .gimg:hover{
                border: 2px solid #d58512;
            }
            
        </style>

    </head>
    <body>

        <%@include file="header.jsp" %>

        <!-- breadcrumbs -->
        <div class="breadcrumbs">
            <div class="container">
                <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
                    <li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>


                    <li class="active">Product Details Page</li>
                </ol>
            </div>
        </div>
        <!-- //breadcrumbs -->

        <%            String pid = request.getParameter("pid");

            ResultSet rs = DBLoader.executeQuery("select * from products where pid=" + pid);
            if (rs.next()) {
                String name = rs.getString("name");
                String description = rs.getString("description");
                int price = rs.getInt("price");
                String photo = rs.getString("photo");
                String category = rs.getString("categoryname");
                String brand = rs.getString("brand");


        %> 

        <div class="products">
            <div class="container">
                <div class="agileinfo_single">

                    <div class="col-md-6 agileinfo_single_left">
                        <img id="example" src="<%=photo%>" alt=" "  class="img-responsive">





                    </div>
                    <div class="col-md-6 agileinfo_single_right">
                        <h2><%=name%></h2>
                        <div class="rating1">

                            <%

                                ResultSet rsa = DBLoader.executeQuery("select AVG(rating) as rating from ratings where pid=" + pid);

                                rsa.next();
                                int rating1 = rsa.getInt("rating");
                                for (int i = 1; i <= rating1; i++) {


                            %>
                            <img src="rating/filled_star.png" width="20" height="20" />
                            <%                    }
                            %>

                            <%
                                for (int i = rating1; i < 5; i++) {


                            %>

                            <img src="rating/empty_star.png" width="20" height="20" />
                            <%                    }
                            %>
                        </div>
                        <div class="w3agile_description">
                            <h4>Description : <span style="color: #004284"><%=description%></span></h4>

                            <br>
                            <h4>Category: <span style="color: #004284"><%=category%></span></h4>

                            <br>
                            <h4>Brand:<span style="color: #004284"> <%=brand%></span></h4>


                        </div>
                        <div class="snipcart-item block">
                            <div class="snipcart-thumb agileinfo_single_right_snipcart">
                                <h4 class="m-sing">&#x20B9; <%=price%> <span>$25.00</span></h4>
                            </div>
                            <div class="snipcart-details agileinfo_single_right_details">
                                <form action="#" method="post">
                                    <fieldset>
                                        <input type="hidden" name="cmd" value="_cart">
                                        <input type="hidden" name="add" value="1">
                                        <input type="hidden" name="business" value=" ">
                                        <input type="hidden" name="item_name" value="pulao basmati rice">
                                        <input type="hidden" name="amount" value="21.00">
                                        <input type="hidden" name="discount_amount" value="1.00">
                                        <input type="hidden" name="currency_code" value="USD">
                                        <input type="hidden" name="return" value=" ">
                                        <input type="hidden" name="cancel_return" value=" ">
                                        <input type="button"onclick="addtocart('<%=pid%>', '<%=name%>', '<%=price%>')" name="submit" value="Add to cart" class="button">
                                        <br>
                                        <br>

                                        <input type="button"onclick="review()" name="submit" value="Add Review" class="button">

                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>

                <h1 style="margin-top: 20px;">Product Gallery</h1>
                <div class="row">

                    <%

                        ResultSet rs44 = DBLoader.executeQuery("select * from productgallery where pid=" + pid);
                        while (rs44.next()) {
                            String gphoto = rs44.getString("photo");

                    %>

                    <div class="col-sm-3">
                        <img src="<%=gphoto%>" class="gimg" onclick="openimage('<%=gphoto%>')"/>
                    </div>
                    <%                        }
                    %>



                </div>



            </div>
        </div>
        <%              }
        %>

        <div style="margin: 20px auto; width: 80%;">
            <h1>Previous Ratings</h1>
            <%
                ResultSet rsr = DBLoader.executeQuery("select * from ratings where pid=" + pid);

                while (rsr.next()) {
                    int rating = rsr.getInt("rating");
                    String review = rsr.getString("review");
                    String username = rsr.getString("username");


            %>

            <div style="margin: 20px;padding:20px;box-shadow: 1px 3px 9px rgba(0,0,0,0.6);border-bottom: 5px solid #d58512;border-radius: 10px;">

                <h5><%=review%></h5>
                <br>
                <%
                    for (int i = 1; i <= rating; i++) {


                %>
                <img src="rating/filled_star.png" width="20" height="20" />
                <%                    }
                %>

                <%
                    for (int i = rating; i < 5; i++) {


                %>
                <img src="rating/empty_star.png" width="20" height="20" />
                <%                    }
                %>

                <h5 style="text-align: right">By <%=username%></h5>
            </div>            


            <%
                }
            %>

        </div>
        <div id="gmodal" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Gallery</h4>
                    </div>
                    <div class="modal-body" style="text-align: center">
                        <img src="" id="gimage" class="img-responsive" style="width:400px;margin: auto" />
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>


        <!-- new -->
        <!-- new -->
        <div class="newproducts-w3agile">
            <div class="container">
                <h3>New offers</h3>
                <div class="agile_top_brands_grids">

                    <%
                        ResultSet rs2 = DBLoader.executeQuery("select * from products ORDER BY pid DESC LIMIT 4");

                        while (rs2.next()) {
                            String name = rs2.getString("name");
                            int pid1 = rs2.getInt("pid");
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
                                                <a href="gotoproductdetails(<%=pid%>)"><img title=" " alt=" " src="<%=photo%>" style="width:200px;height:200px;" ></a>		
                                                <p><%=name%></p>
                                                <div class="stars">

                                                    <%

                                                        ResultSet rsa = DBLoader.executeQuery("select AVG(rating) as rating from ratings where pid=" + pid1);

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
                                                        <input type="button" onclick="gotoproductdetails(<%=pid%>)" name="submit" value="View Details" class="button">
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




        <div class="modal" id="myModal" >
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header " style="background: yellowgreen;" >
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" style="color: white;"> Add Review</h4>
                    </div>
                    <div class="modal-body " >
                        <div>



                            <div id="all">

                                <form action="" method="post" id="form1">
                                    <table>
                                        <tr> <label class="form-group"> Give Ratings..</label>
                                        <td>
                                            <img id="rating_1" src="rating/empty_star.png" onmouseover="fill(this);" onmouseout="unfill(this);" onclick="selected(this);" width="50px;" height="50px;">
                                        </td>
                                        <td>
                                            <img id="rating_2" src="rating/empty_star.png" onmouseover="fill(this)" onmouseout="unfill(this)" onclick="selected(this)" width="50px;" height="50px;">
                                        </td>
                                        <td>
                                            <img id="rating_3" src="rating/empty_star.png" onmouseover="fill(this)" onmouseout="unfill(this)" onclick="selected(this)" width="50px;" height="50px;">
                                        </td>
                                        <td>
                                            <img id="rating_4" src="rating/empty_star.png" onmouseover="fill(this)" onmouseout="unfill(this)" onclick="selected(this)" width="50px;" height="50px;">
                                        </td>
                                        <td>
                                            <img  id="rating_5" src="rating/empty_star.png" onmouseover="fill(this)" onmouseout="unfill(this)" onclick="selected(this)" width="50px;" height="50px;">
                                        </td>
                                        </tr>
                                    </table>
                                    <br>
                                    <label> Write Comment : </label> <input style="border-radius: 20px;" type="text" id="comment"  class="form-group"/>
                                    <input type="button" value="Submit" class="btn btn-primary"
                                           style="border-radius: 10px;text-shadow: 2px 2px 5px black" onclick="addreview('<%=pid%>')" />
                                    <label style="display: none;color: tomato;" id="label1">Please Select Any Rating</label>

                                </form>
                            </div>

                        </div>   
                    </div>
                    <!--</div>-->
                    <div class="modal-footer " style="background: yellowgreen;" >
                        <button type="button" class="btn btn-default" style="border-radius: 10px;" data-dismiss="modal" style="" >Close</button>
                    </div>


                </div>
            </div>
        </div>

    </div>        

    <!-- //new -->
    <!-- //new -->
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