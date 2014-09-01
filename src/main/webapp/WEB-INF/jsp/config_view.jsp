<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="utf-8">
	  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	  	<meta name="description" content="">
	  	<meta name="author" content="Dashboard">
	  	<meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
	  	<link rel="shortcut icon" href="http://alvarez.is/demo/gridgum/dashgum/favicon.png">
	
	  	<title>iRIS - Intelligent Risk Information System</title>
	
	  	<!-- Bootstrap core CSS -->
	  	<link href="css/ng/bootstrap.css" rel="stylesheet">
	  	<!--external css-->
	  	<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
	  
	  	<!-- Custom styles for this template -->
	  	<link rel="stylesheet" type="text/css" href="css/ng/more/style.css">
	    <link href="css/ng/style.css" rel="stylesheet">
	  	<link href="css/ng/style-responsive.css" rel="stylesheet">
	  	<link rel="stylesheet" href="css/ng/to-do.css">
	  	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	  	<!--[if lt IE 9]>
	    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	  	<![endif]-->
	</head>

	<body>

		<section id="container" >
		    <!-- **********************************************************************************************************************************************************
		    TOP BAR CONTENT & NOTIFICATIONS
		    *********************************************************************************************************************************************************** -->
		    <!--header start-->
		    <%@include file='home_top.html'%>
		    <!--header end-->
		      
		    <!-- **********************************************************************************************************************************************************
		    MAIN SIDEBAR MENU
		    *********************************************************************************************************************************************************** -->
		    <!--sidebar start-->
		    <%@include file='home_left.html'%>
		    <!--sidebar end-->
		      
		    <!-- **********************************************************************************************************************************************************
		    MAIN CONTENT
		    *********************************************************************************************************************************************************** -->
		    <!--main content start-->
		    <section id="main-content">
		    	<section class="wrapper site-min-height">
		        <!-- page start-->
		        	<div class="row mt">
		            	<div class="col-sm-12">
		                	<section class="panel">
		                    	<header class="panel-heading wht-bg">
			                       	<h4 class="gen-case">Configurations
			                        	<form action="#" class="pull-right mail-src-position">
			                            	<div class="input-append">
			                                	<input type="text" class="form-control " placeholder="Search Configuration">
			                            	</div>
			                        	</form>
			                       	</h4>
		                    	</header>
		                    	<div class="panel-body minimal">
		                        	<div class="mail-option">
		                        	 	<div class="btn-group">
			                            	<form method="get" action="${pageContext.request.contextPath}/create_config.htm">
			                               		<button class="btn btn-theme" type="submit" id="newButton"><i class="fa fa-plus"></i>  Create New</button>
			                            	</form>
			                            </div>
		                                <div class="btn-group">
		                                	<button class="btn btn-theme02" type="submit" id="activateButton"><i class="fa fa-check"></i>  Activate</button>
		                                </div>
										<div class="btn-group">
		                                	<button class="btn btn-theme04" type="submit" id="removeButton"><i class="fa fa-trash-o"></i>  Remove</button>
		                                </div>
		                        	</div>
		                        	<div class="table-inbox-wrap ">
		                            	<table class="table table-inbox table-hover">
		                            		<thead>
		                            			<tr>
		                            				<th class="inbox-small-cells"></th>
		                            				<th></th>
		                            				<th class="view-message"><a href="mail_view.html">Name</a></th>
		                            				<th class="view-message"><a href="mail_view.html">Description</a></th>
		                            				<th class="view-message"><a href="mail_view.html">Last Modified By</a></th>
		                            				<th class="view-message  text-right"><a href="mail_view.html">Last Modified On</a></th>
		                            			</tr>
		                            		</thead>
		                        			<tbody><br>
		                        				<c:forEach var="configuration" items="${configurationList}" varStatus="loop">
			                        				<tr class="">
			                            				<td class="inbox-small-cells">
			                                				<input type="radio" name="mail-checkbox" class="mail-checkbox">
			                            				</td>
							                            <td></td>
							                            <td class="view-message  dont-show"><a href="${pageContext.request.contextPath}/config.htm?index=${loop.index}">${configuration.name}</a></td>
							                            <td class="view-message ">
							                            	<a href="${pageContext.request.contextPath}/config.htm?index=${loop.index}">
								                            <c:if test="${fn:length(configuration.description)>50}">
																${fn:substring(configuration.description, 0, 50)} ...
															</c:if>
															<c:if test="${fn:length(configuration.description)<=50}">
																${configuration.description}
															</c:if>
															</a>
														</td>
							                            <td class="view-message "><a href="mail_view.html">${configuration.lastUpdatedUser}</a></td>
							                            <td class="view-message  text-right">${configuration.lastUpdationDate}</td>
						                       		</tr>
						                       	</c:forEach>
		                        			</tbody>
		                        		</table>
		                        	</div>
		                        </div>
		                	</section>
		            	</div>
		        	</div>
				</section><! --/wrapper -->
			</section><!-- /MAIN CONTENT -->
		
		    <!--main content end-->
		    <!--footer start-->
		    <%@include file='home_footer.html'%>
		    <!--footer end-->
		</section>
	
	    <!-- js placed at the end of the document so the pages load faster -->
	    <script src="js/ng/jquery.js"></script>
	    <script src="js/ng/jquery-1.8.3.min.js"></script>
	    <script src="js/ng/bootstrap.min.js"></script>
	    <script class="include" type="text/javascript" src="js/ng/jquery.dcjqaccordion.2.7.js"></script>
	    <script src="js/ng/jquery.scrollTo.min.js"></script>
	    <script src="js/ng/jquery.nicescroll.js" type="text/javascript"></script>
	
	
	    <!--common script for all pages-->
	    <script src="js/ng/common-scripts.js"></script>
	        <script src="js/ng/tasks.js" type="text/javascript"></script>
	        
	    <!--script for this page-->
		
		<img src="http:///-web.washer-/trans.gif?foo=1">
		
	  
	  	<script type="text/javascript">
			$(document).ready(function() {
				$('#activateButton').hide();
				$('#removeButton').hide();
			});
			$(".mail-checkbox").change(function() {
				if(this.checked) {
					$('#activateButton').fadeIn();
					$('#removeButton').fadeIn();
				}else{
					$('#activateButton').fadeOut();
					$('#removeButton').fadeIn();
				}
			});
		</script>

	</body>
</html>