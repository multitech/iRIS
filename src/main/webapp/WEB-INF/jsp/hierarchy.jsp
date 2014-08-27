<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
          <section class="wrapper">
          	<h3><i class="fa fa-angle-right"></i> Hierarchy </h3>
          	
          	<div class="row mt">
                  <div class="col-md-12">
                      <section class="task-panel tasks-widget">
	                	<div class="panel-heading">
	                        <div class="pull-left">
	                        <div class="btn-group">
						  <button type="button" class="btn btn-theme03"><i class="fa fa-cog"></i></button>
						  <button type="button" class="btn btn-theme03 dropdown-toggle" data-toggle="dropdown">
						    <span class="caret"></span>
						    <span class="sr-only">Toggle Dropdown</span>
						  </button>
						  <ul class="dropdown-menu" role="menu">
						    <li><a href="" id="collapseButton">Collapse All</a></li>
						  </ul>
						</div> 
	                        
	                        </div>
	                        <br>
	                 	</div>
	                 	<br>
	                 	
	                 	<br>
                          <div class="panel-body">
                              <div class="task-content">

                                  <ul class="task-list">
	                                  <c:forEach items="${hierarchyVo.hierarchies}" var="hierarchyDetailsVo">
	                                      	<li  style="padding-left: ${hierarchyDetailsVo.margin}px !important" id="${hierarchyDetailsVo.itemId}Li" class="id="${hierarchyDetailsVo.groupInfo}Li">
	                                      	  <div class="task-checkbox">
	                                      	  	<c:if test="${hierarchyDetailsVo.childExists}" >
	                                              <button class="btn btn-primary btn-xs"><i class="fa fa-minus"></i></button>
	                                            </c:if>
	                                            <c:if test="${!hierarchyDetailsVo.childExists}" >
	                                              <button class="btn btn-primary btn-xs"><i class="fa fa-check"></i></button>
	                                            </c:if>
	                                          </div>
	                                          <div class="task-title">
	                                              <span class="task-title-sp"><c:out value="${hierarchyDetailsVo.itemName}"/></span>
	                                              <div class="pull-right hidden-phone">
	                                                  <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
	                                                  <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
	                                              </div>
	                                          </div>
	                                      	</li>
	                                  </c:forEach>
                                  </ul>
                                  
                              </div>
                          </div>
                      </section>
                  </div><!-- /col-md-12-->
              </div><!-- /row -->
          	
          	
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
		$('#profilename').focus();
	});
// 			$('#inlineCheckbox1').click(function() {
// 				document.forms[0].submit();
// 			});
		$("#inlineCheckbox1").change(function() {
			if(this.checked) {
		    	$('#uploadHierarchyDiv').slideUp();
		    	$('#rolloverFromDiv').slideDown();
		    }else{
		    	$('#uploadHierarchyDiv').slideDown();
		    	if($('#inlineCheckbox2').is(":checked")==false){
			    	$('#rolloverFromDiv').slideUp();		    		
		    	}
		    }
		});
		$("#inlineCheckbox2").change(function() {
			$("#inlineCheckbox3").prop("disabled", !this.checked);
		    if(this.checked) {
		    	$('#rolloverFromDiv').slideDown();
		    }else{
		    	$('#inlineCheckbox3').prop('checked', false);
		    	if($('#inlineCheckbox1').is(":checked")==false){
			    	$('#rolloverFromDiv').slideUp();		    		
		    	}
		    }
		});
		$("#cancelButton").click(function() {
			$('#saveAlert').slideUp();			
			$('#profileForm')[0].reset();
			$('#profilename').focus();
		});
		$("#collapseButton").click(function() {
			alert("Ok");
		});
	</script>

  </body>
</html>
