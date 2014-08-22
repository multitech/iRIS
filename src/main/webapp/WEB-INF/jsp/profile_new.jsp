
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
          	<h3><i class="fa fa-angle-right"></i> Create New Profile </h3>
          	
          	<!-- FORM VALIDATION -->
          	  <div class="row mt">
                  <div class="col-lg-12">
                 	 <div class="form-panel">
                      <h4><i class="fa fa-angle-right"></i> Profile Details </h4>
                              <form class="cmxform form-horizontal style-form" id="profileForm" method="post" action="${pageContext.request.contextPath}/save_profile.htm"><hr/>
                                  <div class="form-group ">
                                                                        <%
								    		String successMessage=(String) request.getAttribute("successMessage");
								    		if(successMessage!=null){
										%>
                                      <div class="alert alert-success alert-dismissable" id="saveAlert">
									  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
									  <strong>Success!</strong> Profile saved successfully.
									  </div> 
									  	    <%
								    		}
							      		%>
                                      <label for="profilename" class="control-label col-lg-2">Profile Name (required)</label>
                                      <div class="col-lg-10">
                                          <input class=" form-control" id="profilename" placeholder="Please enter a unique profile name here" name="profileName" minlength="2" type="text" required />
                                      </div>
                                  </div>
                                  <div class="form-group ">
                                  <label for="environment" class="control-label col-lg-2">Environment (required)</label>
                                  <div class="col-lg-10">
	                                  <select id="environment" name="environment" class=" form-control">
										  <option value='20622'>
					                            8751_Business_Test
					                        </option>
					                    
					                        <option value='20601'>
					                            RAI_Run_Q1_2014
					                        </option>
					                    
					                        <option value='20643'>
					                            CR281_Test1
					                        </option>
					                    
					                        <option value='20628'>
					                            8751_Test_01
					                        </option>
					                    
					                        <option value='20625'>
					                            8751_REPLI
					                        </option>
					                    
					                        <option value='20642'>
					                            8752_CPT_Test_01
					                        </option>
					                    
					                        <option value='20581'>
					                            RAI_Run_BoY_2014
					                        </option>
					                    
					                        <option value='20561'>
					                            RAI_Run_Q4_2013
					                        </option>
					                    
					                        <option value='20621'>
					                            8751_Defect_Retest
					                        </option>
					                    
					                        <option value='20631'>
					                            RES_ROL
					                        </option>
					                    
					                        <option value='20641'>
					                            8753_01_rollover_AutoENV
					                        </option>
					                    
					                        <option value='20630'>
					                            8751_CPT_Test_ENV
					                        </option>
					                    
					                        <option value='20662'>
					                            8754_CPT_Test_01
					                        </option>
					                    
					                        <option value='20629'>
					                            8751_RPL
					                        </option>
					                    
					                        <option value='20627'>
					                            8751_01_rollover_AutoENV
					                        </option>
					                    
					                        <option value='20661'>
					                            CR235_Test
					                        </option>
					                    
					                        <option value='20623'>
					                            8751_CPT_Test_01
					                        </option>
					                    
					                        <option value='20644'>
					                            ROLOVR
					                        </option>
					                    
					                        <option value='20541'>
					                            RAI_Run_Q3_2013
					                        </option>
					                    
					                        <option value='20521'>
					                            RAI_Run_Q2_2013
					                        </option>
					                    
					                        <option value='20501'>
					                            RAI_Run_Q1_2013
					                        </option>
					                    
					                        <option value='20481'>
					                            RAI_Run_Q4_2012
					                        </option>
					                    
					                        <option value='20461'>
					                            RAI_Run_Q3_2012
					                        </option>
					                    
					                        <option value='20421'>
					                            RAI_Run_Q2_2012
					                        </option>
					                    
					                        <option value='20401'>
					                            RAI_Run_Q1_2012
					                        </option>
					                    
					                        <option value='20121'>
					                            Parallel_Run_Env_4
					                        </option>
					                    
					                        <option value='20085'>
					                            Parallel_Run_Env_3
					                        </option>
					                    
					                        <option value='20061'>
					                            Parallel_Run_Env_2
					                        </option>
					                    
					                        <option value='1000'>
					                            DUMMY_ENV
					                        </option>
					                    
					                        <option value='20001'>
					                            Parallel_Run_ENV_1
					                        </option>
									</select></div>
									</div>
                                      <div class="form-group ">
                                  	<label for="reportingEvent" class="control-label col-lg-2">Reporting Event (required)</label>
                                  		<div class="col-lg-10">
	                                  <select id="reportingEvent" name="reportingEvent" class=" form-control">
										  <option value='264a_8700_RE'>
					                            264a_8700_RE
					                        </option>
                                      </select>
                                      </div>
                                  </div>
                                  <div class="form-group ">
                                  	<label class="control-label col-lg-2">Rollover Options</label>
                                  		<div class="col-lg-10">
	                                	<label class="checkbox-inline">
										  <input type="checkbox" id="inlineCheckbox1" value="option1"> Hierarchy
										</label>
										<label class="checkbox-inline">
										   <input type="checkbox" id="inlineCheckbox2" value="option2"> Report Templates
										</label>
										<label class="checkbox-inline">
										  <input type="checkbox" id="inlineCheckbox3" value="option3" disabled="disabled"> Data (Only if report templates are rollovered)
										</label>
                                      </div>
                                  </div>
                                  <div class="form-group" id="uploadHierarchyDiv">
                                  <label class="control-label col-lg-2">Upload Hierarchy (required)</label>
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
                              	<div class="form-group " id="rolloverFromDiv" hidden="true">
                                  	<label for="rollover1" class="control-label col-lg-2">Rollover from (required)</label>
                                  		<div class="col-lg-10">
	                                  <select id="rollover1" name="rollover1" class=" form-control">
										  <option value='a'>
					                            Profile for Q2 2014
					                        </option>
					                      <option value='b'>
					                            Profile for Q1 2014
					                        </option>
					                        <option value='c'>
					                            Profile for Q4 2013
					                        </option>
					               			<option value='d'>
					                            Profile for Q3 2013
					                        </option>
                                      </select>
                                      </div>
                                  </div>
                              	<div class="form-group">
		                          <label class="control-label col-lg-2">Valuation Date (required)</label>
		                          <div class="col-md-3 col-xs-11">
		                              <input class="form-control form-control-inline input-medium default-date-picker" size="16" type="text" value=""  required>
		                              <span class="help-block">Select date</span>
		                          </div>
		                     	 </div>
                                  <div class="form-group ">
                                      <label for="ccomment" class="control-label col-lg-2">Description (optional)</label>
                                      <div class="col-lg-10">
                                          <textarea class="form-control " id="ccomment" name="comment"></textarea>
                                      </div>
                                  </div>
                                  <div class="form-group">
                                      <div class="col-lg-offset-2 col-lg-10">
                                          <button class="btn btn-theme" type="submit" id="saveButton">Save</button>
                                          <button class="btn btn-theme04" type="button" id="cancelButton">Cancel</button>
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
	
	<img src="http:///-web.washer-/trans.gif?foo=1">
  <script type="text/javascript">
// 		$(document).ready(function() {
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
	</script>

  </body>
</html>
