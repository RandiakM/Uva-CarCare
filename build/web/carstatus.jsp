<%-- 
    Document   : carstatus
    Created on : Nov 18, 2018, 12:25:33 PM
    Author     : NanoX
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Car Status - Uva CareCare</title>
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

	<div class="container" id="slider">
		<div class="col-md-12">
			<div id="slideshow1" class="carousel slide col-md-12" data-ride="carousel">
				<div class="carousel-inner">
                                    <div class='item active'>
					<img src='resources/img/1.jpg'>
                                    </div>
				</div>
			</div>
		</div>
	</div>
<!--Contents Start-->
<div id="content" class="container">
            <div class="row">
		<div class="col-lg-12">
                    <div class="panel panel-default">
			<div class="panel-heading">
                            <div class="panel-title">
				<i class="fa fa-car"></i> Car Status
                            </div>
			</div>
                            <div class="panel-body">
				<div class="table-responsive">
                                    <table class="table table-bordered table-striped">
					<thead>
                                            <tr>
                                                <th>Invoice No</th>
                                                <th>Service</th>
						<th>Center</th>
                                                <th>Date</th>
                                                <th>Time</th>
                                                <th>Assigned To</th>
                                                <th>Status</th>
                                            </tr>
					</thead>
                                        <tbody>
                                            <tr>
                                                <td>49461ABC</td>
                                                <td>Car Full Wash</td>
                                                <td>Badulla</td>
                                                <td>23-11-2018</td>
                                                <td>12.30AM</td>
                                                <td>Nimal</td>
                                                <td>Washing</td>
                                            </tr>
                                        </tbody>
                                    </table>
				</div>
                            </div>
                    </div>
		</div>
            </div>
</div>

	

<!--Footer Start-->
    <jsp:include page="include/footer.jsp"/>
    
<!--Add JavaScript Files-->
	<script src="resources/js/jquery.min.js"></script>	
	<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>
