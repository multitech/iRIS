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
    <link rel="stylesheet" type="text/css" href="css/ng/bootstrap-fileupload.css" />
    <link rel="stylesheet" type="text/css" href="css/ng/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="css/ng/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="css/ng/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="css/ng/more/style.css">    
    
    <!-- Custom styles for this template -->
    <link href="css/ng/style.css" rel="stylesheet">
    <link href="css/ng/style-responsive.css" rel="stylesheet">
	<link rel="stylesheet" href="css/ng/to-do.css">
    <script src="js/ng/Chart.js"></script>
    
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
          	<h3><i class="fa fa-angle-right"></i> Create New Data Item </h3>
          	
          	<!-- FORM VALIDATION -->
          	  <div class="row mt">
                  <div class="col-lg-12">
                 	 <div class="form-panel">
                      <h4><i class="fa fa-angle-right"></i> Data Item Details  
                      <form class="pull-right mail-src-position" method="get" action="${pageContext.request.contextPath}/view_dataitem.htm">
											<div class="btn-group">
			                                	<button class="btn btn-theme" type="submit" id="newButton"><i class="fa fa-arrow-left"></i>  Go back</button>
			                                </div>
			                            </form></h4>
                              <form class="cmxform form-horizontal style-form" id="reportForm" method="post" action="${pageContext.request.contextPath}/save_dataitem.htm"><hr/>
                                                                                                     <c:if test="${not empty successMessage}">
                                      <div class="alert alert-success alert-dismissable" id="saveAlert">
									  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
									  <strong>Success!</strong> Data Item saved successfully.
									  </div> 
									  	    </c:if>
                                  <div class="form-group ">
                                      <label for="reportname" class="control-label col-lg-2">Data Item Name (required)</label>
                                      <div class="col-lg-10">
                                          <input class=" form-control" id="reportname" placeholder="Please enter the name of the report" value="${dataItem.name}" name="reportName" minlength="2" type="text" required />
                                      </div>
                                  </div>
                                  <div class="form-group ">
                                  <label for="reportType" class="control-label col-lg-2">Data Item Type (required)</label>
                                  <div class="col-lg-10">
	                                  <div class="radio">
										  <label>
										    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
										    Independent
										  </label>
										</div>
										<div class="radio">
										  <label>
										    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
										    Dependent - Select this option if the report depends on other independent reports
										  </label>
										</div>
										</div>
									</div>
									<div class="form-group ">
		                                	<label for="inputMode" class="control-label col-lg-2">Input Mode (required)</label>
		                                  	<div class="col-lg-10">
			                                	<select id="inputMode" name="inputMode" class=" form-control">
													<option value='0'>
							                            External Database Import
							                        </option>
							                        <option value='1'>
							                            Input Template
							                        </option>
		                                      	</select>
		                                  	</div>
		                             	</div>
									<div class="form-group" id="uploadReportDiv">
                                  <label class="control-label col-lg-2">Upload Data Item Template (Required) </label>
                                  <div class="controls col-md-9">
                                      <div class="fileupload fileupload-new" data-provides="fileupload">
                                        <span class="btn btn-theme02 btn-file">
                                        <span class="fileupload-new"><i class="fa fa-paperclip"></i> Select file</span>
                                        <span class="fileupload-exists"><i class="fa fa-undo"></i> Change</span>
                                        <input type="file" class="default" />
                                        </span>
                                          <span class="fileupload-preview" style="margin-left:5px;"></span>
                                          <a href="advanced_form_components.html#" class="close fileupload-exists" data-dismiss="fileupload" style="float: none; margin-left:5px;"></a>
                                      </div>
                                  </div>
                              	</div>
                              	<div class="form-group ">
                                  <label for="reportType" class="control-label col-lg-2">Output Formats</label>
                                  <div class="col-lg-10">
	                                  <div class="radio">
										    <input type="checkbox" name="outputFormats" id="outputFormats1" value="outputFormat1" checked disabled="disabled">
										    Excel Format
										    <input type="checkbox" name="outputFormats" id="outputFormats2" value="outputFormat2">
										    PDF Format
										   	<input type="checkbox" name="outputFormats" id="outputFormats2" value="outputFormat2">
										    XBRL Format
										</div>
										</div>
									</div>
                              	<div class="form-group ">
                                  <label for="reportType" class="control-label col-lg-2">Category (required)</label>
                                      <div class="col-lg-10">
                                          <input class=" form-control" id="reportname" placeholder="Please enter the category name" value="${dataItem.category}" name="reportName" minlength="2" type="text" required />
                                      </div>
									</div>
<!--                               	<div class="form-group" id="outputReportFormat"> -->
<!--                                   <label class="control-label col-lg-2">Additional Output Report Formats (Excel by default) </label> -->
<!--                                   <div class="controls col-md-9"> -->
<!--                                       <div class="fileupload fileupload-new" data-provides="fileupload"> -->
<!--                                         <span class="btn btn-theme02 btn-file"> -->
<!--                                         <span class="fileupload-new"><i class="fa fa-paperclip"></i> Select file</span> -->
<!--                                         <span class="fileupload-exists"><i class="fa fa-undo"></i> Change</span> -->
<!--                                         <input type="file" class="default" /> -->
<!--                                         </span> -->
<!--                                           <span class="fileupload-preview" style="margin-left:5px;"></span> -->
<!--                                           <a href="advanced_form_components.html#" class="close fileupload-exists" data-dismiss="fileupload" style="float: none; margin-left:5px;"></a> -->
<!--                                       </div> -->
<!--                                   </div> -->
<!--                               	</div> -->
                              	
                              	
<!--                               	<div class="form-group"> -->
<!--                               <label class="control-label col-lg-2">Additional Output Report Formats (Excel by default) </label> -->

<!--                                  <div class="col-lg-10"> -->
<!-- 	                                  <div class="checkbox"> -->
<!-- 										  <label> -->
<!-- 										    <input type="checkbox" name="optionsRadios" id="optionsRadios1" value="option1" checked> -->
<!-- 										    xml format -->
<!-- 										  </label> -->
<!-- 										</div> -->
<!-- 										<div class="checkbox"> -->
<!-- 										  <label> -->
<!-- 										    <input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2"> -->
<!-- 										    Dependent - Select this option if the report depends on other independent reports -->
<!-- 										  </label> -->
<!-- 										</div> -->
<!-- 										</div> -->
<!--                               </div> -->
                              	
                                  <div class="form-group ">
                                      <label for="ccomment" class="control-label col-lg-2">Description (optional)</label>
                                      <div class="col-lg-10">
                                          <textarea class="form-control " id="ccomment" name="comment">${dataItem.description}</textarea>
                                      </div>
                                  </div>
                                  <div class="form-group">
                                      <div class="col-lg-offset-2 col-lg-10">
                                          <button class="btn btn-theme" type="submit"><i class="fa fa-save"></i>   Save</button>
                                          <button class="btn btn-theme04" type="button"><i class="fa fa-eraser"></i>   Clear</button>
                                      </div>
                                  </div>
                              </form>
                          </div>
                      </div><!-- /form-panel -->
                  </div><!-- /col-lg-12 -->
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
    <script src="js/ng/jquery.sparkline.js"></script>


    <!--common script for all pages-->
    <script src="js/ng/common-scripts.js"></script>
    
    <script type="text/javascript" src="js/ng/jquery.gritter.js"></script>
    <script type="text/javascript" src="js/ng/gritter-conf.js"></script>

    <!--script for this page-->
    <script type="text/javascript" src="js/ng/bootstrap-fileupload.js"></script>
    <script type="text/javascript" src="js/ng/bootstrap-datepicker.js"></script>
    <script src="js/ng/sparkline-chart.js"></script>    
	<script src="js/ng/zabuto_calendar.js"></script>	
	<script src="js/ng/advanced-form-components.js"></script> 
	<script src="js/ng/tasks.js" type="text/javascript"></script>
	<img src="http:///-web.washer-/trans.gif?foo=1">
  <script type="text/javascript">
// 		$(document).ready(function() {
// 			$('#uploadReportDiv').hide();
// 		});
		$('input[name=optionsRadios]:radio').change(function() {
			$('#inputMode option').remove();
			if($('#optionsRadios1').is(":checked")) {
				$('#inputMode').append('<option value="0">External Database Import</option>');
				$('#inputMode').append('<option value="1">Input Template</option>');
		    }else{
		    	$('#inputMode').append('<option value="2">Excel Calculation Model</option>');
		    	$('#inputMode').append('<option value="2">Report Design</option>');
		    }
		});
// 		$("#optionsRadios2").change(function() {
// 			if(this.checked) {
// 				$('#uploadReportDiv').slideDown();
// 		    }else{
// 		    	$('#uploadReportDiv').slideUp();
// 		    }
// 		});

		$("#cancelButton").click(function() {
			$('#saveAlert').slideUp();			
			$('#reportForm')[0].reset();
			$('#reportname').focus();
		});
	</script>

  </body>
</html>
