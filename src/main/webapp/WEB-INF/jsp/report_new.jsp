
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
                          <li><a  href="profile_edit_landing.htm">Modify</a></li>
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
          	<h3><i class="fa fa-angle-right"></i> Create New Report Template </h3>
          	
          	<!-- FORM VALIDATION -->
          	  <div class="row mt">
                  <div class="col-lg-12">
                 	 <div class="form-panel">
                      <h4><i class="fa fa-angle-right"></i> Report Details </h4>
                              <form class="cmxform form-horizontal style-form" id="commentForm" method="get" action=""><hr/>
                                  <div class="form-group ">
                                      <label for="profilename" class="control-label col-lg-2">Report Name (required)</label>
                                      <div class="col-lg-10">
                                          <input class=" form-control" id="profilename" placeholder="Please enter the name of the report" name="reportName" minlength="2" type="text" required />
                                      </div>
                                  </div>
                                  <div class="form-group ">
                                  <label for="reportType" class="control-label col-lg-2">Report Type (required)</label>
                                  <div class="col-lg-10">
	                                  <select id="reportType" name="reportType" class=" form-control">
										  <option value='dep'>
					                            Dependent
					                        </option>
					                    
					                        <option value='indep'>
					                            Independent
					                        </option>
					                    
									</select></div>
									</div>
                                   <div class="form-group ">
                                  <label for="reportType" class="control-label col-lg-2">Report Data Source (required)</label>
                                  <div class="col-lg-10">
	                                  <select id="reportType" name="reportType" class=" form-control">
										  <option value='dbfetch'>
					                            RAI Database Fetch
					                        </option>
					                    
										  <option value='dbfetch'>
					                            User Input
					                        </option>
					                    
					                    	<option value='dbfetch'>
					                            Report Design Template
					                        </option>
					                        
									</select></div>
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
