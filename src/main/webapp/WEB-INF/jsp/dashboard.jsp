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
        <!-- page start-->
        <div class="row mt">
            <div class="col-sm-3">
                <section class="panel">
                    <div class="panel-body">
                        <h4>Hierarchy</h4>
                        <ul class="nav nav-pills nav-stacked mail-nav">
                        	<c:forEach items="${hierarchy.hierarchies}" var="hierarchyDetailsVo">
                        	<li class="hierarchyLi">
                        	<a href="#" style="padding-left: ${hierarchyDetailsVo.margin}px !important"> 
                        	<c:if test="${hierarchyDetailsVo.childExists}" > 
<%-- 	                                              <i class=" ${hierarchyDetailsVo.groupInfo}Button fa fa-minus"></i> --%>
	                                            </c:if> 
	                                                                  	<c:if test="${hierarchyDetailsVo.childExists==false}" > 
<!-- 	                                             <i class="fa fa-check-square-o"></i>  -->
	                                            </c:if>   
                        
                        	
                        	${hierarchyDetailsVo.itemId}</a></li>
                        	
<%-- 	                                      	<li  style="padding-left: ${hierarchyDetailsVo.margin}px !important" id="${hierarchyDetailsVo.itemId}Li" class="${hierarchyDetailsVo.groupInfo}Li"> --%>
	                                      	
<!-- 	                                      	  <div class="task-checkbox"> -->
<%-- 	                                      	  	<c:if test="${hierarchyDetailsVo.childExists}" > --%>
<%-- 	                                              <button class="btn btn-primary btn-xs"><i class=" ${hierarchyDetailsVo.groupInfo}Button fa fa-minus"></i></button> --%>
<%-- 	                                            </c:if> --%>
	                                           
<!-- 	                                          </div> -->
<!-- 	                                          <div class="task-title"> -->
<%-- 	                                              <span class="task-title-sp"><c:out value="${hierarchyDetailsVo.itemId}"/></span> --%>
<!-- 	                                          </div> -->
<!-- 	                                      	</li> -->
	                        </c:forEach>
<!--                             <li class="active"><a href="inbox.html"> <i class="fa fa-inbox"></i> Inbox  <span class="label label-theme pull-right inbox-notification">3</span></a></li> -->
<!--                             <li><a href="#"> <i class="fa fa-envelope-o"></i> Send Mail</a></li> -->
<!--                             <li><a href="#"> <i class="fa fa-exclamation-circle"></i> Important</a></li> -->
<!--                             <li><a href="#"> <i class="fa fa-file-text-o"></i> Drafts <span class="label label-info pull-right inbox-notification">8</span></a></a></li> -->
<!--                             <li><a href="#"> <i class="fa fa-trash-o"></i> Trash</a></li> -->
                        </ul>
                    </div>
                </section>
            </div>
            <div class="col-sm-9">
                <section class="panel">
                    <header class="panel-heading wht-bg">
                       <h4 class="gen-case">Data Items
                        <form action="#" class="pull-right mail-src-position">
                            <div class="input-append">
                                <input type="text" class="form-control " placeholder="Search Data Item">
                            </div>
                        </form>
                       </h4>
                    </header>
                    <div class="panel-body minimal">
                        <div class="mail-option">

								<div class="btn-group">
                                          <button class="btn btn-theme" type="submit" id="saveButton">Upload</button>
                                      </div>

								<div class="btn-group">
						  <button type="button" class="btn btn-theme04 dropdown-toggle" data-toggle="dropdown">
						    Download <span class="caret"></span>
						  </button>
						  <ul class="dropdown-menu" role="menu">
						    <li><a href="#">Report</a></li>
						    <li class="divider"></li>
						    <li><a href="#">Template</a></li>
						  </ul>
						</div>
						
                            <div class="btn-group">
						  <button type="button" class="btn btn-theme03 dropdown-toggle" data-toggle="dropdown">
						    Sort By <span class="caret"></span>
						  </button>
						  <ul class="dropdown-menu" role="menu">
						    <li><a href="#">Category A-Z</a></li>
						    <li><a href="#">Category Z-A</a></li>
						  </ul>
						</div>
                            
                            <div class="btn-group hidden-phone pull-right">
                                <a data-toggle="dropdown" href="#" class="btn mini blue">
                                    More
                                    <i class="fa fa-angle-down "></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#"><i class="fa fa-pencil"></i> Mark as Read</a></li>
                                    <li><a href="#"><i class="fa fa-ban"></i> Spam</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                                </ul>
                            </div>

                        </div>
                        <div class="table-inbox-wrap ">
                         <c:forEach var="dataset" items="${dataset}" varStatus="loop">
                            <table class="table table-inbox table-hover">
                            <thead><tr>
                         <h4 style="padding: 15px;">${dataset.categoryName}</h4>
                         </tr>
                         </thead>
                        <tbody>
                         <c:forEach var="dataitem" items="${dataset.dataItems}" varStatus="loopIndex">
                     				<tr class="">
                     				
                   			<td class="inbox-small-cells">
                                <input type="checkbox" class="mail-checkbox">
                            </td>
                            <td class="inbox-small-cells">
                            <c:if test="${dataitem.inputMode eq 'External Database Import'}">
                            	<i class="fa fa-book"></i>
                            </c:if>
                            </td>
                            <td class="view-message  dont-show"><a href="${pageContext.request.contextPath}/dataitem.htm?index=${loop.index}">${dataitem.name}</a></td>
                            <td class="view-message "><a href="mail_view.html">Waiting for user upload</a></td>
                            <td class="view-message "><a href="mail_view.html">Balu Sabu</a></td>
                            <td class="view-message  text-right">08:10 AM</td>
                       		</tr>
                       	</c:forEach>
                        </tbody>
                        </table>
                        </c:forEach>
                           

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
		$(".hierarchyLi").click(function() {
			$(".hierarchyLi").removeClass('active');
			$(this).toggleClass('inactive active');
		});
	</script>

  </body>
</html>
