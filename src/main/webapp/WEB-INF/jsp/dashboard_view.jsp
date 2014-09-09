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
    <link rel="stylesheet" type="text/css" href="css/ng/bootstrap-fileupload.css" />
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
                        			<li class="hierarchyLi" id="${hierarchyDetailsVo.itemId}Li">
                        				<a href="#" style="padding-left: ${hierarchyDetailsVo.margin}px !important"> 
                        					${hierarchyDetailsVo.itemId}
                        				</a>
                        			</li>
	                        	</c:forEach>
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
								<! -- MESSAGEMODALS -->
			      				<div class="showback" hidden="true">
								<button class="btn btn-success btn-lg" id="uploadMessageModal" data-toggle="modal" data-target="#myUploadModal"></button>
								<!-- Modal -->
			      				</div><!-- /showback -->
      							<div class="modal fade" id="myUploadModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
									        <h4 class="modal-title" id="myModalLabel">Upload Progress</h4>
									      </div>
									      <div class="modal-body" id="modalTextDiv">
							      				<div class="progress progress-striped active" id="uploadModalProgress">
												  <div class="progress-bar"  role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
												    <span class="sr-only"></span>
												  </div>
												</div>
												<div id="uploadModalMessageText">
												 Upload Completed Successfully!
												</div>
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-default" data-dismiss="modal">Ok</button>
									    </div>
										</div>
									</div>
								</div>
								<div class="showback" hidden="true">
									<button class="btn btn-success btn-lg" id="fetchMessageModal" data-toggle="modal" data-target="#myFetchModal">
									</button>
									<!-- Modal -->
			      				</div><!-- /showback -->
      							<div class="modal fade" id="myFetchModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
									        <h4 class="modal-title" id="myModalLabel">Database fetch</h4>
									      </div>
									      <div class="modal-body" id="fetchModalTextDiv">
							      				<div class="progress progress-striped active" id="fetchModalProgress">
												  <div class="progress-bar"  role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
												    <span class="sr-only"></span>
												  </div>
												</div>
												<div id="fetchModalMessageText">
												 Database Fetch Completed Successfully!
												</div>
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-default" data-dismiss="modal">Ok</button>
									      </div>
									    </div>
									  </div>
									</div>
									<div class="showback" hidden="true">
								<button class="btn btn-success btn-lg" id="calculateMessageModal" data-toggle="modal" data-target="#myCalculateModal"></button>
								<!-- Modal -->
			      				</div><!-- /showback -->
      							<div class="modal fade" id="myCalculateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
									        <h4 class="modal-title" id="myModalLabel">Calculation Progress</h4>
									      </div>
									      <div class="modal-body" id="modalTextDiv">
							      				<div class="progress progress-striped active" id="calculateModalProgress">
												  <div class="progress-bar"  role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
												    <span class="sr-only"></span>
												  </div>
												</div>
												<div id="calculateModalMessageText">
												 Completed Successfully, You can now download the results!
												</div>
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-default" data-dismiss="modal">Ok</button>
									    </div>
										</div>
									</div>
								</div>
								<div class="btn-group" id="uploadButton">
                                          <button class="btn btn-theme" type="submit" data-toggle="modal" data-target="#uploadModal"><i class="fa fa-upload"></i> Upload</button>
                                      </div>
								<div class="btn-group" id="fetchButton">
                                          <button class="btn btn-theme" type="submit" data-toggle="modal" data-target="#fetchModal" ><i class="fa fa-database"></i> Fetch</button>
                                      </div>
                                      								<div class="btn-group" id="calculateButton">
                                          <button class="btn btn-theme" type="submit" data-toggle="modal" data-target="#calculateModal"><i class="fa fa-calculator"></i> Calculate</button>
                                      </div>
                                      								<div class="btn-group" id="runButton">
                                          <button class="btn btn-theme" type="submit" ><i class="fa fa-cog"></i> Run</button>
                                      </div> 
                                      <div class="modal fade" id="uploadModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
														  <div class="modal-dialog">
														    <div class="modal-content">
														      <div class="modal-header">
														        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
														        <h4 class="modal-title" id="myModalLabel">Upload User Input File</h4>
														      </div>
														      <div class="modal-body">
														          <p>User Input File</p>
								                                    	<div class="fileupload fileupload-new" data-provides="fileupload">
								                                        	<span class="btn btn-theme02 btn-file">
								                                        		<span class="fileupload-new"><i class="fa fa-paperclip"></i> Select file</span>
								                                        		<span class="fileupload-exists"><i class="fa fa-undo"></i> Change</span>
								                                        		<input type="file" class="default" />
								                                        	</span>
								                                          	<span class="fileupload-preview" style="margin-left:5px;"></span>
								                                          	<a href="advanced_form_components.html#" class="close fileupload-exists" data-dismiss="fileupload" style="float: none; margin-left:5px;"></a>
								                                      	</div>
								                                  <br><p>Comment</p>
								                                  <textarea class="form-control " id="ccomment" name="comment">
		                                    						</textarea>
														      </div>
														      <div class="modal-footer">
														        <button type="button" class="btn btn-default" id="uploadModalCloseButton" data-dismiss="modal">Close</button>
														        <button type="button" class="btn btn-primary" id="finalUploadButton">Upload</button>
														      </div>
														    </div>
														  </div>
														</div> 
														<div class="modal fade" id="fetchModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
														  <div class="modal-dialog">
														    <div class="modal-content">
														      <div class="modal-header">
														        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
														        <h4 class="modal-title" id="myModalLabel">Fetch from database</h4>
														      </div>
														      <div class="modal-body">
								                                  <p>Comment</p>
								                                  <textarea class="form-control " id="ccomment" name="comment">
		                                    						</textarea>
														      </div>
														      <div class="modal-footer">
														        <button type="button" class="btn btn-default" id="fetchModalCloseButton" data-dismiss="modal">Close</button>
														        <button type="button" class="btn btn-primary" id="finalFetchButton">Fetch</button>
														      </div>
														    </div>
														  </div>
														</div>
														<div class="modal fade" id="calculateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
														  <div class="modal-dialog">
														    <div class="modal-content">
														      <div class="modal-header">
														        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
														        <h4 class="modal-title" id="myModalLabel">Calculation</h4>
														      </div>
														      <div class="modal-body">
								                                  <p>Comment</p>
								                                  <textarea class="form-control " id="ccomment" name="comment">
		                                    						</textarea>
														      </div>
														      <div class="modal-footer">
														        <button type="button" class="btn btn-default" id="calculateModalCloseButton" data-dismiss="modal">Close</button>
														        <button type="button" class="btn btn-primary" id="finalCalculateButton">Calculate</button>
														      </div>
														    </div>
														  </div>
														</div>
								<div class="btn-group" id="downloadButton">
								  <button type="button" class="btn btn-theme04 dropdown-toggle" data-toggle="dropdown">
								 <i class="fa fa-download"></i> Download <span class="caret"></span>
								  </button>
						  <ul class="dropdown-menu" role="menu">
						    <li><a id="downloadReportHref" href="#">Report</a></li>
						    <li class="divider"></li>
						    <li><a id="downloadTemplateHref" href="#">Template</a></li>
						  </ul>
						</div>
						 <div class="btn-group hidden-phone pull-right">
                                <a data-toggle="dropdown" href="#" class="btn mini blue">
                                    More
                                    <i class="fa fa-angle-down "></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#" id="dependenciesHref" data-toggle="modal" data-target="#dependenciesModal"><i class="fa fa-exchange"></i> Dependencies</a></li>
                                </ul>
                            </div>
                            <! -- MESSAGEMODALS -->
      							<div class="modal fade" id="dependenciesModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
									        <h4 class="modal-title" id="myModalLabel">Depencies</h4>
									      </div>
									      <div class="modal-body" id="modalTextDiv">
							      				<div class="view-mail">
						                            <div class="table-inbox-wrap ">
						                            <table class="table">
											<thead>
											<tr>
											<th style="width:60px" class="text-center"></th>
											<th class="text-left">Name</th>
											<th style="width:140px" class="text-right">Requires</th>
											<th style="width:120px" class="text-right">Status</th>
											</tr>
											</thead>
												<tbody>
													<tr>
													<td class="text-center"><i class="fa fa-arrow-circle-up"></i></td>
													<td>Balance Sheet Input Allianz</td>
													<td class="text-right">Yes</td>
													<td class="text-right">Processed</td>
													</tr>
													<tr>
													<td class="text-center"><i class="fa fa-arrow-circle-up"></i></td>
													<td>MVBS Allianz</td>
													<td class="text-right">Yes</td>
													<td class="text-right">Processed</td>
													</tr>
													<tr>
													<td class="text-center"><i class="fa fa-arrow-circle-up"></i></td>
													<td>Deferred Tax Allianz</td>
													<td class="text-right">Yes</td>
													<td class="text-right">Processed</td>
													</tr>
													<tr>
													<td class="text-center"><i class="fa fa-arrow-circle-down"></i></td>
													<td>Technical Provisions - Life Allianz</td>
													<td class="text-right">No</td>
													<td class="text-right">New</td>
													</tr>
													<tr>
													<td class="text-center"><i class="fa fa-arrow-circle-down"></i></td>
													<td>SCR - Health SLT Allianz</td>
													<td class="text-right">No</td>
													<td class="text-right">New</td>
													</tr>
													<tr>
													<td class="text-center"><i class="fa fa-arrow-circle-down"></i></td>
													<td>Technical Provisions - Health SLT Allianz</td>
													<td class="text-right">No</td>
													<td class="text-right">New</td>
													</tr>
													<tr>
													<td class="text-center"><i class="fa fa-arrow-circle-down"></i></td>
													<td>SCR Report Allianz</td>
													<td class="text-right">No</td>
													<td class="text-right">New</td>
													</tr>
													<tr>
													<td class="text-center"><i class="fa fa-arrow-circle-down"></i></td>
													<td>QIS5: Net of RI Allianz</td>
													<td class="text-right">No</td>
													<td class="text-right">New</td>
													</tr>
													<tr>
													<td class="text-center"><i class="fa fa-arrow-circle-down"></i></td>
													<td>SCR - Life Allianz</td>
													<td class="text-right">No</td>
													<td class="text-right">New</td>
													</tr>
												</tbody>
										</table>
						
						                        </div>
					                        </div>
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-default" data-dismiss="modal">Ok</button>
									    </div>
										</div>
									</div>
								</div>
                            <div class="btn-group hidden-phone pull-right">
						  <a data-toggle="dropdown" href="#" class="btn mini blue">
                                    Sort By	
                                    <i class="fa fa-angle-down "></i>
                                </a>
						  <ul class="dropdown-menu" role="menu">
						    <li><a href="#"><i class="fa fa-sort-alpha-asc"></i>   Category A-Z</a>
						    <li><a href="#"><i class="fa fa-sort-alpha-desc"></i>   Category Z-A</a>
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
                                <input type="radio" name="dataitemradio" class="mail-checkbox checkbox${dataitem.inputMode}" value="${dataitem.id}">
                            </td>
                            <td class="inbox-small-cells">
                            <c:choose>
                            	<c:when test="${dataitem.inputMode==0}">
	                            	<i class="fa fa-database"></i>
	                            </c:when>
	                            <c:when test="${dataitem.inputMode==1}">
	                            	<i class="fa fa-book"></i>
	                            </c:when>
	                           	<c:when test="${dataitem.inputMode==2}">
	                            	<i class="fa fa-calculator"></i>
	                            </c:when>
	                            <c:when test="${dataitem.inputMode==3}">
	                            	<i class="fa fa-file-text-o"></i>
	                            </c:when>
                            </c:choose>
                            </td>
                            <td class="view-message  dont-show"><a href="${pageContext.request.contextPath}/dashboard.htm?id=${dataitem.id}">${dataitem.name}</a>
                            <c:choose>
                            	<c:when test="${dataitem.inputMode==0}">
	                            	<span id="span${dataitem.id}" class="label label-success pull-right spanMessage">processed</span>
	                            </c:when>
	                            <c:when test="${dataitem.inputMode==1}">
	                            	<span id="span${dataitem.id}" class="label label-info pull-right spanMessage">processed</span>
	                            </c:when>
	                           	<c:when test="${dataitem.inputMode==2}">
	                            	<span id="span${dataitem.id}" class="label label-primary pull-right spanMessage">calculated</span>
	                            </c:when>
	                            <c:when test="${dataitem.inputMode==3}">
	                            	<span id="span${dataitem.id}" class="label label-default pull-right spanMessage">processed</span>
	                            </c:when>
                            </c:choose>
                            </td>
                            <td class="view-message "><a href="${pageContext.request.contextPath}/dashboard.htm?id=${dataitem.id}" id="ahref${dataitem.id}">${dataitem.statusDescription}</a></td>
                            <td class="view-message "><a href="${pageContext.request.contextPath}/dashboard.htm?id=${dataitem.id}">Balu Sabu</a></td>
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
		$(document).ready(function() {
			$('#AllianzLi').toggleClass('inactive active');
			$('.spanMessage').hide();
			$('#uploadButton').hide();
			$('#fetchButton').hide();
			$('#calculateButton').hide();
			$('#runButton').hide();
			$('#downloadButton').hide();
		});
		$(".mail-checkbox").change(function() {
			$('#uploadButton').hide();
			$('#fetchButton').hide();
			$('#calculateButton').hide();
			$('#runButton').hide();
			var af=$("input[name='dataitemradio']:checked").val();
			if($('.checkbox0').is(":checked")) {
				$('#fetchButton').show();
			}else if($('.checkbox1').is(":checked")) {
				$('#uploadButton').show();
			}else if($('.checkbox2').is(":checked")
					&& $('#ahref'+af).text()=="Ready to calculate") {
				$('#calculateButton').show();
			}else if($('.checkbox3').is(":checked")) {
				$('#runButton').show();
			}
			$('#downloadButton').show();
			$("#downloadTemplateHref").attr("href", "/iRIS/download_template.htm?id="+af)
			$("#downloadReportHref").attr("href", "/iRIS/download_report.htm?id="+af)
		});
		
		$("#finalUploadButton").click(function() {
			$("#uploadMessageModal").click();
			$("#uploadModalProgress").show();
			$("#uploadModalMessageText").hide();
			$("#uploadModalCloseButton").click();
			setTimeout(function (){
				$("#uploadModalProgress").hide();
				$("#uploadModalMessageText").fadeIn();
				var af=$("input[name='dataitemradio']:checked").val();
				$('#ahref'+af).text("Input file uploaded");
				$('#span'+af).show();
				if($('#span0').is(':visible')
						&& $('#span1').is(':visible')
						&& $('#span2').is(':visible')){
					$('#ahref3').text("Ready to calculate");
				}
				if($('#span4').is(':visible')
						&& $('#span5').is(':visible')){
					$('#ahref6').text("Ready to calculate");
				}
				if($('#span4').is(':visible')
						&& $('#span5').is(':visible')
						&& $('#span7').is(':visible')){
					$('#ahref8').text("Ready to calculate");
				}
	         }, 5000);
		});
	      
		$("#finalFetchButton").click(function() {
			$("#fetchMessageModal").click();
			$("#fetchModalProgress").show();
			$("#fetchModalMessageText").hide();
			$("#fetchModalCloseButton").click();
			setTimeout(function (){
				$("#fetchModalProgress").hide();
				$("#fetchModalMessageText").fadeIn();
				var af=$("input[name='dataitemradio']:checked").val();
				$('#ahref'+af).text("Data fetched from database");
				$('#span'+af).show();
				if($('#span0').is(':visible')
						&& $('#span1').is(':visible')
						&& $('#span2').is(':visible')){
					$('#ahref3').text("Ready to calculate");
				}
				if($('#span4').is(':visible')
						&& $('#span5').is(':visible')){
					$('#ahref6').text("Ready to calculate");
				}
				if($('#span4').is(':visible')
						&& $('#span5').is(':visible')
						&& $('#span7').is(':visible')){
					$('#ahref8').text("Ready to calculate");
				}
	         }, 5000);  
		});
		
		$("#finalCalculateButton").click(function() {
			$("#calculateMessageModal").click();
			$("#calculateModalProgress").show();
			$("#calculateModalMessageText").hide();
			$("#calculateModalCloseButton").click();
			setTimeout(function (){
				$("#calculateModalProgress").hide();
				$("#calculateModalMessageText").fadeIn();
				var af=$("input[name='dataitemradio']:checked").val();
				$('#ahref'+af).text("Calculated, Reports ready for download");
				$('#span'+af).show();
	         }, 5000);  
		});
		
	</script>

  </body>
</html>
