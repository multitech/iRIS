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
          <section class="wrapper site-min-height">
        <!-- page start-->
        <div class="row mt">
            <div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading wht-bg">
                       <h4 class="gen-case"> Allianz
                       </h4>
                    </header>
                    <div class="panel-body ">

                        <div class="mail-header row">
                            <div class="col-md-8">
                                <h4 class="pull-left"> ${dataItem.category} - ${dataItem.name}</h4>
                            </div>
                            <div class="col-md-4">
                                <div class="compose-btn pull-right">
                                    <button class="btn  btn-sm tooltips" data-original-title="Go Back" type="button" data-toggle="tooltip" data-placement="top" title=""><i class="fa fa-arrow-left"></i></button>
                                    <button class="btn  btn-sm tooltips" data-original-title="Previous Item" type="button" data-toggle="tooltip" data-placement="top" title=""><i class="fa fa-arrow-up"></i> </button>
                                    <button class="btn btn-sm tooltips" data-original-title="Next Item" data-toggle="tooltip" data-placement="top" title=""><i class="fa fa-arrow-down"></i></button>
                                </div>
                            </div>

                        </div>
                        <div class="mail-sender">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="btn-group">
		                                	<button class="btn btn-theme02" type="submit" id="activateButton"><i class="fa fa-upload"></i>  Upload</button>
		                                </div>
		                                <div class="btn-group" id="downloadButton">
						  <button type="button" class="btn btn-theme04 dropdown-toggle" data-toggle="dropdown">
						 <i class="fa fa-download"></i> Download <span class="caret"></span>
						  </button>
						  <ul class="dropdown-menu" role="menu">
						    <li><a href="#">Report</a></li>
						    <li class="divider"></li>
						    <li><a href="#">Template</a></li>
						  </ul>
						</div>
						 <div class="btn-group hidden-phone pull-right">
                                <a data-toggle="dropdown" href="#" class="btn mini blue">
                                    More
                                    <i class="fa fa-angle-down "></i>
                                </a>
                                <ul class="dropdown-menu">
									<li><a href="#"><i class="fa fa-file-text-o"></i>  Details</a></li>
                                    <li><a href="#"><i class="fa fa-money"></i>  Change Currency</a></li>
                                     <li><a href="#"><i class="fa fa-exchange"></i> Dependencies</a></li>
                                </ul>
                            </div>
                                </div>
                            </div>
                        </div>
                        <div class="view-mail">
                         	<h4>History</h4>
	                            <div class="table-inbox-wrap ">
	                            <table class="table">
						<thead>
						<tr>
						<th style="width:60px" class="text-center">Revision</th>
						<th class="text-left">Comment</th>
						<th style="width:140px" class="text-right">Uploaded By</th>
						<th style="width:120px" class="text-right">Uploaded On</th>
						<th style="width:120px" class="text-right"></th>
						</tr>
						</thead>
							<tbody>
								<tr>
								<td class="text-center">1</td>
								<td>This is the first upload</td>
								<td class="text-right">Renjith</td>
								<td class="text-right">03-Sep-2014</td>
								<td>
								<div class="pull-right hidden-phone">
                                                  <button class="btn btn-success btn-xs fa fa-download tooltips" data-original-title="Download" type="button" data-toggle="tooltip" data-placement="top" title=""></button>
                                                  <button class="btn btn-primary btn-xs fa fa-pencil tooltips" data-original-title="Modify" type="button" data-toggle="tooltip" data-placement="top" title=""></button>
                                                  <button class="btn btn-danger btn-xs fa fa-trash-o tooltips" data-original-title="Remove" type="button" data-toggle="tooltip" data-placement="top" title=""></button>
                                              </div>
                                              </td>
								</tr>
								<tr>
								<td class="text-center">2</td>
								<td>The second upload is here</td>
								<td class="text-right">Renjith</td>
								<td class="text-right">04-Sep-2014</td>
								<td>
								<div class="pull-right hidden-phone">
                                                  <button class="btn btn-success btn-xs fa fa-download"></button>
                                                  <button class="btn btn-primary btn-xs fa fa-pencil"></button>
                                                  <button class="btn btn-danger btn-xs fa fa-trash-o"></button>
                                              </div>
                                              </td>
								</tr>
							</tbody>
					</table>
	
	                        </div>
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
	</script>

  </body>
</html>
