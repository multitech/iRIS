<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>ACT</title>
		<link rel="stylesheet" href="http://bootswatch.com/lumen/bootstrap.min.css">
		<link rel="stylesheet" href="http://bootswatch.com/lumen/bootstrap.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.js"></script>
		<script type="text/javascript">
			$( document ).ready(function() {
				$('#compareButton').click(function() {
					document.forms[0].submit();
				});
			});
		</script>
	</head>
	<body role="document">
		<%@include file='menu.html'%>
		<br/><br/><br/><br/>
    	<div class="container">
	      	<div id="alertMessage">
		    	<%
		    		String errorMessage=(String) request.getAttribute("errorMessage");
		    		if(errorMessage!=null){
				%>
              		<div class="alert alert-dismissable alert-danger">
                		<button type="button" class="close" data-dismiss="alert">&times;</button>
	        			<strong><spring:message code="act.araCompare.message.comparisonFailed"/></strong> ${errorMessage}
	        		</div>
	      		<%
		    		}
	      		%>
      		</div>
      	</div>
	    <!-- /container -->
	    <div class="container">
	   		<div class="panel panel-primary" style="width: 50%">
	        	<div class="panel-heading">
	            	<h3 class="panel-title"><spring:message code="iris.profile.header.main"/></h3>
	            </div>
	            <div class="panel-body">
	 				<form action="${pageContext.request.contextPath}/createprofilesubmit.htm" method="post" enctype="multipart/form-data"
	 				  id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" modelAttribute="compareModel">
			        	<h4><spring:message code="iris.profile.label.profileid" var="profileid"/></h4>
						<input class="form-control" type="text" placeholder="${profileid}" name="profileId">
			        	<h4><spring:message code="iris.profile.label.profileid" var="profilename"/></h4>
			        	<input class="form-control" type="text" placeholder="${profilename}" name="profileName">
			        	<h4><spring:message code="iris.profile.label.environment"/></h4>
	                    <select class="form-control" id="select" name="reportType" style="width: 50%">
	                        <option value="pos">Position Overview</option>
	                    	<option value="nat">Natural Hierarchy</option>
	                    </select>
			        	<h4><label id="configLabel">
			        		<spring:message code="act.label.configFile"/>
			        	<spring:message code="act.label.xlsFileType"/></label></h4>
			        	<input type="file" name="file3">
			        	<br/>
						<div align="right"><button type="button" class="btn btn-sm btn-primary" id="compareButton"><spring:message code="act.button.compare"/></button></div>
				  	</form>
	            </div>
			</div>
	    </div> 
	</body>
</html>