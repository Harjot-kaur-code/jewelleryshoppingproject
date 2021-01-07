<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <script>


            var jsonarr;

            function addphototogallery()
            {
                var formdata = new FormData();

                var controls = document.getElementById("form1").elements;
                var flag = 0;

                for (var i = 0; i < controls.length; i++)
                {
                    //if name is given to every input type
                    if (controls[i].name == "" || controls[i].name == null)
                    {
                        flag = 1;
                    }
                    if (controls[i].type == "file")
                    {
                        //if file is selected by user
                        if (controls[i].files.length > 0)
                        {
                            formdata.append(controls[i].name, controls[i].files[0]);
                        } else
                        {
                            flag = 2;
                        }
                    } else
                    {
                        // for input type text ,password, email
                        formdata.append(controls[i].name, controls[i].value);
//                        alert(formdata);
                    }
                }
                if (flag == 1)
                {
                    alert("CHECK: --> Give name attribute to all controls in form");
                } else if (flag == 2)
                {
                    alert("CHECK: --> Select Files for file controls");
                } else
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
                                document.getElementById("status").innerHTML = "Photo added Successfuly";
                                document.getElementById("status").style.color = "green";


                                document.getElementById("caption").value = "";
                                document.getElementById("myfile").value = "";


                                fetchgallery();

                            } else
                            {
                                document.getElementById("status").innerHTML = "Error in adding Photo";
                                document.getElementById("status").style.color = "red";

                            }

                        }
                    };

                    xhr.open("POST", "addproductgallery", true);


                    xhr.send(formdata);

                }

            }


            function fetchgallery()
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

                        var ans = "";

                        ans += "<div class=\"row\">";


                        for (var i = 0; i < jsonarr.length; i++)
                        {
                            var o = jsonarr[i];
                            ans += "<div class='col-sm-3'>";

                            ans += "<div class='gimg'>";
                            ans += "<div style='text-align:right;padding:5px;'><span class='fa fa-times' onclick=\"delphoto('" + o.pgid + "')\" style='font-size:25px;'></span></div>"
                            ans += "<img src=\"" + o.photo + "\" class='img-responsive' />";
                            ans += "<h5>" + o.caption + "</h5>";
                            ans += "</div>";
                            ans += "</div>";

                        }

                        ans += "</div>";

                        document.getElementById("sec").innerHTML = ans;

                    }
                };

                var pid = document.getElementById("pid").value;
                xhr.open("GET", "fetchproductgallery?pid=" + pid, true);
                xhr.send();


            }



            function delphoto(pgid)
            {
                var option = confirm("Are you sure you want to delete it?");

                if (option == true)
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
                                document.getElementById("status").innerHTML = "Deleted successfuly";
                                fetchgallery();

                            } else
                            {
                                document.getElementById("status").innerHTML = "Error in deletion";

                            }
                        }
                    };

                    xhr.open("GET", "deleteproductgallery?pgid=" + pgid, true);
                    xhr.send();

                }

            }




        </script>
        <style>

            .gimg
            {
                padding: 10px;
                border-bottom: 2px solid brown;
                box-shadow: 1px 1px 11px rgba(0,0,0,0.3);
                border-radius: 3px;
                margin: 10px;
            }
            .gimg h5{
                text-align: center;
                font-weight: bold;
                font-size: 25px;
                margin-top: 10px;
            }
        </style>

    </head>
    <body onload="fetchgallery()">
        <%@include file="header.jsp" %>


        
        <div class="container" style="padding: 20px;">

            <h1 style="text-align: center">Add Gallery Photo
               
            </h1>

            <div class="row">

                <div class="col-sm-8 col-sm-offset-2" >
                    <br>
                    <div style="margin: 20px;">
                        <form id="form1">

                            <div class="form-group">
                                <label for="caption">Enter Caption:</label>
                                <input type="text" placeholder="Enter Product name" name="caption" id="caption" class="form-control"  />
                            </div> 
                            <input type="text" placeholder="Enter Product id" name="pid" id="pid"hidden="" value="<%=request.getParameter("pid")%>"  />


                            <div class="form-group">
                                <label for="myfile">Choose Photo:</label>
                                <input type="file" name="myfile" id="myfile"  />
                            </div>

                        </form>
                        <input type="button" class="btn btn-success" value="ADD" onclick="addphototogallery()" />

                        <h3 id="status"></h3>
                    </div>
                </div>

            </div>
            <br>

            <div class="container">
                <h3 style="font-size: 22px;" class="tittle-w3l text-center">Already Added Photos
                    <span class="heading-style">
                        <i></i>
                        <i></i>
                        <i></i>
                    </span>
                </h3>
            </div>
            <div id="sec"></div>
        </div>




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

    </body>
</html>

