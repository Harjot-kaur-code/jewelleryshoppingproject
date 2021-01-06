
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
        location.href = "productdetail.jsp?pid=" + pid;
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
        <div class="w3l_offers">
            <p>ADMIN PORTAL </p>
        </div>
        <div class="agile-login">
            <ul>


                <%

                    if (session.getAttribute("adminusername") == null) {
                %>
               
                
                    <%
                    } else {

                        String adminusername = session.getAttribute("adminusername").toString();
                    %>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Hii <%=adminusername%><b class="caret"></b></a>
                    <ul class="dropdown-menu multi-column columns-3">
                        <div class="row">
                            <div class="multi-gd-img">
                                <ul class="multi-column-dropdown">
                                    <li><a href="managecategories.jsp">Manage Categories</a></li>
                                    
                                    <li><a href="manageshopkeeper.jsp">Manage Shopkeeper</a></li>
                                    <li><a href="vieworders.jsp">View All Orders</a></li>
                                    <li><a href="adminchangepassword.jsp">Change Password</a></li>
                                    <li><a href="adminlogout">Logout</a></li>

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
                
        <div class="clearfix"> </div>
    </div>
</div>
            
            
<!-- //navigation -->