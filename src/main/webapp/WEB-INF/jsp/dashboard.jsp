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
                                    <a href="mail_compose.html" class="btn btn-sm btn-theme" ><i class="fa fa-reply"></i> Reply</a>
                                    <button class="btn  btn-sm tooltips" data-original-title="Print" type="button" data-toggle="tooltip" data-placement="top" title=""><i class="fa fa-print"></i> </button>
                                    <button class="btn btn-sm tooltips" data-original-title="Trash" data-toggle="tooltip" data-placement="top" title=""><i class="fa fa-trash-o"></i></button>
                                </div>
                            </div>

                        </div>
                        <div class="mail-sender">
                            <div class="row">
                                <div class="col-md-8">
                                    <img src="assets/img/ui-zac.jpg" alt="">
                                    <strong>Zac Doe</strong>
                                    <span>[zac@youremail.com]</span>
                                    to
                                    <strong>me</strong>
                                </div>
                                <div class="col-md-4">
                                    <p class="date"> 10:15AM 02 FEB 2014</p>
                                </div>
                            </div>
                        </div>
                        <div class="view-mail">
                            <p>As he bent his head in his most courtly manner, there was a secrecy in his smiling face, and he conveyed an air of mystery to those words, which struck the eyes and ears of his nephew forcibly. At the same time, the thin straight lines of the setting of the eyes, and the thin straight lips, and the markings in the nose, curved with a sarcasm that looked handsomely diabolic. </p>
                            <p>"Yes," repeated the Marquis. "A Doctor with a daughter. Yes. So commences the new philosophy! You are fatigued. Good night!"</p>
                            <p>It would have been of as much avail to interrogate any stone face outside the chateau as to interrogate that face of his. The nephew looked at him, in vain, in passing on to the door. </p>
                            <p>"Good night!" said the uncle. "I look to the pleasure of seeing you again in the morning. Good repose! Light Monsieur my nephew to his chamber there!--And burn Monsieur my nephew in his bed, if you will," he added to himself, before he rang his little bell again, and summoned his valet to his own bedroom.</p>
                        </div>
                        <div class="attachment-mail">
                            <p>
                                <span><i class="fa fa-paperclip"></i> 2 attachments — </span>
                                <a href="#">Download all attachments</a>
                                |
                                <a href="#">View all images</a>
                            </p>
                            <ul>
                                <li>
                                    <a class="atch-thumb" href="#">
                                        <img src="assets/img/instagram.jpg">
                                    </a>

                                    <a class="name" href="#">
                                        IMG_001.jpg
                                        <span>20KB</span>
                                    </a>

                                    <div class="links">
                                        <a href="#">View</a> -
                                        <a href="#">Download</a>
                                    </div>
                                </li>

                                <li>
                                    <a class="atch-thumb" href="#">
                                        <img src="assets/img/weather.jpg">
                                    </a>

                                    <a class="name" href="#">
                                        IMG_001.jpg
                                        <span>20KB</span>
                                    </a>

                                    <div class="links">
                                        <a href="#">View</a> -
                                        <a href="#">Download</a>
                                    </div>
                                </li>

                            </ul>
                        </div>
                        <div class="compose-btn pull-left">
                            <a href="mail_compose.html" class="btn btn-sm btn-theme" ><i class="fa fa-reply"></i> Reply</a>
                            <button class="btn btn-sm " ><i class="fa fa-arrow-right"></i> Forward</button>
                            <button class="btn  btn-sm tooltips" data-original-title="Print" type="button" data-toggle="tooltip" data-placement="top" title=""><i class="fa fa-print"></i> </button>
                            <button class="btn btn-sm tooltips" data-original-title="Trash" data-toggle="tooltip" data-placement="top" title=""><i class="fa fa-trash-o"></i></button>
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
			if($('.checkbox0').is(":checked")) {
				$('#uploadButton').show();
			}else if($('.checkbox1').is(":checked")) {
				$('#fetchButton').show();
			}else if($('.checkbox2').is(":checked")) {
				$('#calculateButton').show();
			}else if($('.checkbox3').is(":checked")) {
				$('#runButton').show();
			}
			$('#downloadButton').show();
		});
	</script>

  </body>
</html>
