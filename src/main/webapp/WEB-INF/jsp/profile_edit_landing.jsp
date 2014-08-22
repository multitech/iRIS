
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
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a href="" class="logo"><b>IRIS</b></a>
            <!--logo end-->
            <div class="nav notify-row" id="top_menu">
                <!--  notification start -->
                <ul class="nav top-menu">
                    <!-- settings start -->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                            <i class="fa fa-tasks"></i>
                            <span class="badge bg-theme">4</span>
                        </a>
                        <ul class="dropdown-menu extended tasks-bar">
                            <div class="notify-arrow notify-arrow-green"></div>
                            <li>
                                <p class="green">You have 4 pending tasks</p>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <div class="task-info">
                                        <div class="desc">Upload market Risk data</div>
                                        <div class="percent">40%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <div class="task-info">
                                        <div class="desc">Database Fetch</div>
                                        <div class="percent">60%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <div class="task-info">
                                        <div class="desc">Sign-off Credit Risk data</div>
                                        <div class="percent">80%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <div class="task-info">
                                        <div class="desc">Priliminary Signed Off</div>
                                        <div class="percent">70%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                                            <span class="sr-only">70% Complete (Important)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="external">
                                <a href="#">See All Tasks</a>
                            </li>
                        </ul>
                    </li>
                    <!-- settings end -->
                    <!-- inbox dropdown start-->
                    <li id="header_inbox_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                            <i class="fa fa-envelope-o"></i>
                            <span class="badge bg-theme">5</span>
                        </a>
                        <ul class="dropdown-menu extended inbox">
                            <div class="notify-arrow notify-arrow-green"></div>
                            <li>
                                <p class="green">You have 5 new messages</p>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="img/user.png"></span>
                                    <span class="subject">
                                    <span class="from">Rai Test User</span>
                                    <span class="time">Just now</span>
                                    </span>
                                    <span class="message">
                                        Uploaded QIS5 Sheet
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="img/user.png"></span>
                                    <span class="subject">
                                    <span class="from">Balu Sabu</span>
                                    <span class="time">40 mins.</span>
                                    </span>
                                    <span class="message">
                                     	Uploaded Balance Sheet
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="img/user.png"></span>
                                    <span class="subject">
                                    <span class="from">Joseph Maliakkal</span>
                                    <span class="time">2 hrs.</span>
                                    </span>
                                    <span class="message">
                                        Downloaded QRT Solo
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="img/user.png"></span>
                                    <span class="subject">
                                    <span class="from">Joseph Maliakkal</span>
                                    <span class="time">4 hrs.</span>
                                    </span>
                                    <span class="message">
                                        Downloaded QIS5
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">See all messages</a>
                            </li>
                        </ul>
                    </li>
                    <!-- inbox dropdown end -->
                </ul>
                <!--  notification end -->
            </div>
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <li><a class="logout" href="login.htm">Logout</a></li>
            	</ul>
            </div>
        </header>
      <!--header end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a href="profile.html"><img src="img/user.png" class="img-circle" width="60"></a></p>
              	  <h5 class="centered">Renjith Bhaskaran</h5>
              	  	
                  <li class="mt">
                      <a class="active" href="index.html">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-desktop"></i>
                          <span>Profile</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="create_profile.htm">Create New</a></li>
                          <li><a  href="buttons.html">Modify</a></li>
                          <li><a  href="panels.html">View</a></li>
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cogs"></i>
                          <span>Reports</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="create_report.htm">Create New</a></li>
                          <li><a  href="buttons.html">Modify</a></li>
                          <li><a  href="panels.html">View</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-book"></i>
                          <span>Hierarchy</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="general.html">Create New</a></li>
                          <li><a  href="buttons.html">Modify</a></li>
                          <li><a  href="panels.html">View</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Asignment Matrix</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="general.html">Create New</a></li>
                          <li><a  href="buttons.html">Modify</a></li>
                          <li><a  href="panels.html">View</a></li>
                      </ul>
                  </li>
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
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
                              <form class="cmxform form-horizontal style-form" id="commentForm" method="get" action=""><hr/>
                                  <div class="form-group ">
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
                                  	<label for="reoprtingEvent" class="control-label col-lg-2">Reporting Event (required)</label>
                                  		<div class="col-lg-10">
	                                  <select id="reoprtingEvent" name="reoprtingEvent" class=" form-control">
										  <option value='264a_8700_RE'>
					                            264a_8700_RE
					                        </option>
                                      </select>
                                      </div>
                                  </div>
                                  <div class="form-group">
                                  <label class="control-label col-lg-2">Upload Hierarchy </label>
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
                                      <label>
									    or
									  </label>
                                      <div class="checkbox">
									  <label>
									    <input type="checkbox" value="">
									    Use previous
									  </label>
									  </div>
                                  </div>
                              	</div>
                              	<div class="form-group">
		                          <label class="control-label col-lg-2">Valuation Date (required)</label>
		                          <div class="col-md-3 col-xs-11">
		                              <input class="form-control form-control-inline input-medium default-date-picker" size="16" type="text" value="">
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
                                          <button class="btn btn-theme" type="submit">Save</button>
                                          <button class="btn btn-theme04" type="button">Cancel</button>
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
      <footer class="site-footer">
          <div class="text-center">
              2014 - iRIS
              <a href="index.html#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
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
  

  </body>
</html>
