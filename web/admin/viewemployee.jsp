<%-- 
    Document   : viewemployee
    Created on : Nov 25, 2018, 9:50:10 PM
    Author     : NanoX
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        if(session.getAttribute("email") == null){
            response.sendRedirect("stafflogin.jsp");
        }
        if(!session.getAttribute("utype").equals("Admin")){
            response.sendRedirect("finishjob.jsp");
        }
    %>
    
    <head>
        <title>View Employee - Uva CareCare</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <!--Add CSS Files-->
	<link rel="stylesheet" type="text/css" href="resources/css/styles.css">
	<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css">
	<link rel="stylesheet"  type="text/css" href="resources/fontawesome/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,300,400,700,900" rel="stylesheet">
        
    </head>
    <body>
<!--	Navigation Bar Start-->
	
    <jsp:include page="include/navbar.jsp"/>

<!--DB Connection -->
            <%
                Connection conn = null;
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/uvacarcare", "root", "");
                %>
                <%
                }catch(Exception e){
                %> 
                    <script>alert("Connection Dead");</script>
                <%
                }
                %>

<!--Contents Start-->
<div id="content" class="container">
	<div class="row">
		<div class="box">
                    <div class="col-lg-12">
                    <h3 class="text-success text-uppercase text-center" style="font-weight: 600">View Employee</h3>
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <i class="fa fa-car"></i> View Details
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>Id</th>                                           
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>PNo</th>
                                            <th>Gender</th>
                                            <th>NIC</th>
                                            <th>Password</th>
                                            <th>UserType</th>                                           
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            String viewemployeeSql = "SELECT * FROM users WHERE 1";
                                            PreparedStatement pst = conn.prepareCall(viewemployeeSql);
                                            ResultSet rt = pst.executeQuery();
                                            
                                            while(rt.next()){
                                           %>
                                           <tr>
                                               <td><%out.print(rt.getString(1));%></td>
                                               <td><%out.print(rt.getString(2));%></td>
                                               <td><%out.print(rt.getString(3));%></td>
                                               <td><%out.print(rt.getString(4));%></td>
                                               <td><%out.print(rt.getString(5));%></td>
                                               <td><%out.print(rt.getString(6));%></td>
                                               <td><%out.print(rt.getString(7));%></td>
                                               <td><%out.print(rt.getString(8));%></td>
                                           </tr>
                                           <%
                                            }
                                        %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
		</div>
            </div>
	</div>
    <br>
    <br>
    <br>
<!--Footer Start-->
    <jsp:include page="include/footer.jsp"/>
<!--Add JavaScript Files-->
	<script src="resources/js/jquery.min.js"></script>	
	<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>