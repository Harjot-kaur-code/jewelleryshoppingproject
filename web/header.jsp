
<%@page import="java.sql.ResultSet"%>
<%@page import="vmm.DBLoader"%>
<!-- header -->

<script>
    function gotoviewcart()
    {
        location.href = "viewcart.jsp";
    }
    function searchfn()
    {
        var keyword = document.getElementById("searchkeyword").value;
        if (keyword != "")
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

                    var jsonarr = jsonobj["ans"];

                    var content = "";

                    for (var i = 0; i < jsonarr.length; i++)
                    {
                        var obj = jsonarr[i];
                        content += "<h4 class='searchlinks' onclick=\"gotoproductdetails('" + obj.pid + "')\" >" + obj.name + "</h4>";
                    }

                    document.getElementById("searchresults").innerHTML = content;


                }
            };

            var querystring = "keyword=" + keyword;
            xhr.open("GET", "searchlogic?" + querystring, true);
            xhr.send();



        }

    }

    function gotoproductdetails(pid)
    {
        location.href = "productdetails.jsp?pid=" + pid;
    }


</script>

<style>

    #searchresults{
        position:absolute;
        background: #ffffff;
        z-index: 100;
        width:240px;
    }
    .searchlinks
    {
        margin:10px 5px;
        cursor: pointer;
    }
    .searchlinks:hover{
        color:#004284;
    }

</style>

<div class="agileits_header">
    <div class="container">

        <div class="agile-login">
            <ul>


                <%

                    if (session.getAttribute("username") == null && session.getAttribute("skid") == null) {
                %>
                <li><a href="signup.jsp"> Create Account </a></li>
                <li><a href="login.jsp">Login</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Merchant<b class="caret"></b></a>
                    <ul class="dropdown-menu multi-column columns-3">
                        <div class="row">
                            <div class="multi-gd-img">
                                <ul class="multi-column-dropdown">
                                    <li><a href="shopkeeperlogin.jsp">Sign In</a></li>
                                    <li><a href="shopkeepersignup.jsp">Sign up</a></li>

                                </ul>
                            </div>

                        </div>
                    </ul>
                </li>

                <%
                } else if (session.getAttribute("skid") != null) {

                    String skid = session.getAttribute("skid").toString();
                    ResultSet rsm = DBLoader.executeQuery("select * from shopkeeper where skid=" + skid);
                    rsm.next();
                    String name = rsm.getString("name");

                %>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Hii <%=name%><b class="caret"></b></a>
                    <ul class="dropdown-menu multi-column columns-3">
                        <div class="row">
                            <div class="multi-gd-img">
                                <ul class="multi-column-dropdown">
                                    <li><a href="manageproducts.jsp">Manage Products</a></li>
                                    <li><a href="shopkepperchangepassword.jsp">Change Password</a></li>
                                    <li><a href="merchantorders.jsp">View Orders</a></li>
                                    <li><a href="shopkeeperlogout">Logout</a></li>

                                </ul>
                            </div>

                        </div>
                    </ul>
                </li>
                <%

                } else {

                    String username = session.getAttribute("username").toString();
                %>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Hii <%=username%><b class="caret"></b></a>
                    <ul class="dropdown-menu multi-column columns-3">
                        <div class="row">
                            <div class="multi-gd-img">
                                <ul class="multi-column-dropdown">
                                    <li><a href="myorders.jsp">My Orders</a></li>
                                    <li><a href="userchangepassword.jsp">Change Password</a></li>
                                    <li><a href="logout">Logout</a></li>

                                </ul>
                            </div>

                        </div>
                    </ul>
                </li>


                <%
                    }
                %>


   
         
        





            </ul>
        </div>
        <div class="product_list_header">  
            <form action="#" method="post" class="last"> 
                <input type="hidden" name="cmd" value="_cart">
                <input type="hidden" name="display" value="1">


                <%
                    if (session.getAttribute("username") != null) {
                %>
                <button class="w3view-cart" type="button" onclick="gotoviewcart()" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>

                <%
                    }
                %>
            </form>  
        </div>
        <div class="clearfix"> </div>
    </div>
</div>

<div class="logo_products">
    <div class="container">
        <div class="w3ls_logo_products_left1">
            <ul class="phone_email">
                <li><i class="fa fa-phone" aria-hidden="true"></i>Order online or call us : +91 6280674327</li>
            </ul>
        </div>
        <div class="w3ls_logo_products_left">
            <h1><a href="index.jsp">Jewellery Shopping</a></h1>
        </div>
        <div class="w3l_search">
            <form action="#" method="post">
                <input type="search" id="searchkeyword" onkeyup="searchfn()" name="Search" placeholder="Search for a Product..." required="">
                <div id="searchresults">

                </div>

                <div class="clearfix"></div>
            </form>
        </div>

        <div class="clearfix"> </div>
    </div>
</div>
<!-- //header -->
<!-- navigation -->
<div class="navigation-agileits">
    <div class="container">
        <nav class="navbar navbar-default">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header nav_2">
                <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div> 
            <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index.jsp" class="act">Home</a></li>	
                    <!-- Mega Menu -->

                    <%
                        ResultSet rs6 = DBLoader.executeQuery("select * from categories LIMIT 6");
                        while (rs6.next()) {

                            String categoryname = rs6.getString("categoryname");

                    %>

                    <li><a href="products.jsp?categoryname=<%=categoryname%>"><%=categoryname%></a></li>


                    <%
                        }
                    %>


                    <li><a href="contact.jsp">Contact</a></li>
                    <li><a href="about.jsp">About</a></li>
                    
                </ul>
            </div>
        </nav>
    </div>
</div>

<!-- //navigation -->