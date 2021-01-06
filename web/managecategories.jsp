
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
        <!-- start-smoth-scrolling -->
        <script>


            var jsonarr;

            function addcategory()
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
                                document.getElementById("status").innerHTML = "Category added Successfuly";
                                document.getElementById("status").style.color = "green";

                                document.getElementById("categoryname").value = "";
                                document.getElementById("description").value = "";
                                document.getElementById("myfile").value = "";


                                fetchcategries();

                            } else
                            {
                                document.getElementById("status").innerHTML = "Category Name Already exist";
                                document.getElementById("status").style.color = "red";

                            }

                        }
                    };

                    xhr.open("POST", "addcategory", true);


                    xhr.send(formdata);

                }

            }

            function fetchcategries()
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
                        ans += "<th>Category Name</th>";
                        ans += "<th>Description</th>";
                        ans += "<th>Photo</th>";
                        ans += "<th>Delete</th>";
                        ans += "</tr>";



                        for (var i = 0; i < jsonarr.length; i++)
                        {
                            var o = jsonarr[i];
                            ans += "<tr>";
                            ans += "<td>" + o.categoryname + "</td>";
                            ans += "<td>" + o.description + "</td>";
                            ans += "<td><img src=\"" + o.photo + "\" width=\"60\" height=\"60\"  />&nbsp;<span onclick=\"editphoto('" + i + "')\" >edit</span></td>";
                            ans += "<td><span onclick=\"deletestudent('" + o.categoryname + "')\" class=\"fa fa-trash\" style=\"font-size:25px;color:red;\" ></span></td>";
                            ans += "</tr>";

                        }

                        ans += "</table>";

                        document.getElementById("sec").innerHTML = ans;

                    }
                };

                xhr.open("GET", "fetchcategories", true);
                xhr.send();



            }


            function deletestudent(categoryname)
            {
                var option = confirm("Are you sure you want to delete it?");
                if (option)
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
                                alert("Deleted successfully");
                                fetchcategries();
                            }
                        }
                    };

                    xhr.open("GET", "deletecategory?categoryname=" + categoryname, true);

                    xhr.send();

                }
            }



        </script>



    </head>
    <body onload="fetchcategries()">
        
        <%@include file="adminheader.jsp" %>
        
        <div class="container">

            <div style="margin:40px 20px;padding:20px;">
                <div class="row">
                    <div class="col-sm-8 col-sm-offset-2" >

                        <h1 class="text-center">Add Category</h1>
                        <form id="form1">
                            <div class="form-group">
                                <input type="text" placeholder="Enter Category Name" name="categoryname" id="categoryname" class="form-control"/> 
                            </div>
                            <div class="form-group">
                                <input type="text" placeholder="Enter Description" name="description" id="description" class="form-control"  />
                            </div> 

                            <div class="form-group">
                                Choose Photo: <input type="file" name="myfile" id="myfile"  />
                            </div>
                        </form>

                        <input type="button" class="btn btn-success" value="ADD" onclick="addcategory()" />

                        <h3 id="status"></h3>
                    </div>


                </div>

            </div>
            <hr>
            <h1>Already added Categories</h1>

            <div id="sec">


            </div>


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
        <!-- //main slider-banner --> 
    </body>
</html>
