<!DOCTYPE html>
<html lang="en-us" id="extr-page">
<head>
<meta charset="utf-8">
<title>ReFrame</title>
<meta name="description" content="">
<meta name="author" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- #CSS Links -->
<!-- Basic Styles -->
<link rel="stylesheet" type="text/css" media="screen" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="font-awesome/css/font-awesome.min.css">
<!-- <link rel="stylesheet" type="text/css" media="screen" href="css/font-awesome.css"> -->

<!-- SmartAdmin Styles : Please note (smartadmin-production.css) was created using LESS variables -->
<link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-production.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-skins.min.css">

<!-- SmartAdmin RTL Support is under construction
This RTL CSS will be released in version 1.5
<link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-rtl.min.css"> -->

<!-- We recommend you use "your_style.css" to override SmartAdmin specific styles this will also ensure you retrain your customization with each SmartAdmin update.
<link rel="stylesheet" type="text/css" media="screen" href="css/your_style.css"> -->

<!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
<link rel="stylesheet" type="text/css" media="screen" href="css/demo.min.css">

<!-- #GOOGLE FONT -->
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

<!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">

</head>

<body class="animated fadeInDown">

	<header id="header">

		<div id="logo-group">
			<span id="logo"> <img src="img/logo.png" alt="SmartAdmin">
			</span>
		</div>


	</header>

	<div id="main" role="main">

		<!-- MAIN CONTENT -->
		<div id="content" class="container">

			<div class="row">
				<div
					class="col-xs-12 col-sm-12 col-md-7 col-lg-8 hidden-xs hidden-sm">
					<h1 class="txt-color-red login-header-big">Re<b>Frame</b></h1>
					<div class="hero">

						<div class="pull-left login-desc-box-l">
							<h4 class="paragraph-header">Now  all the reports you need, in one place!
								Experience the simplicity of ReFrame over all the other frames.</h4>
							<div class="login-app-icons">
								<a href="javascript:void(0);" class="btn btn-danger btn-sm">Find out more</a>
							</div>
						</div>

					</div>

					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
							<h5 class="about-heading">About Re<b>Frame</b> - Are you up to
								date?</h5>
							<p>Oftentimes, finding it actually is the easy part. 
								There are other hurdles to overcome. Normally, an OS update also 
								updates the device's bootloader. </p>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
							<h5 class="about-heading">In all the format you want!</h5>
							<p>and bootloaders are not one of those things you can just 
								jump in and change on a whim. You're going to have to do some 
								serious research, and then procure the files!</p>
						</div>
					</div>

				</div>
				<div class="col-xs-12 col-sm-12 col-md-5 col-lg-4">
					<div class="well no-padding">
						<form action="loginsubmit.htm" id="login-form" method="post" 
							class="smart-form client-form">
							<header> Sign In </header>

							<fieldset>

								<section>
									<label class="label">Username</label> <label class="input">
										<i class="icon-append fa fa-user"></i> <input type="text"
										name="userName"> <b class="tooltip tooltip-top-right"><i
											class="fa fa-user txt-color-teal"></i> Please enter your username</b>
									</label>
								</section>

								<section>
									<label class="label">Password</label> <label class="input">
										<i class="icon-append fa fa-lock"></i> <input type="password"
										name="password"> <b class="tooltip tooltip-top-right"><i
											class="fa fa-lock txt-color-teal"></i> Enter your password</b>
									</label>
								</section>
							</fieldset>
							<footer>
								<button type="submit" class="btn btn-primary">Sign in</button>
							</footer>
						</form>

					</div>

				</div>
			</div>
		</div>

	</div>

	<!--================================================== -->

	<!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
<!-- 	<script src="js/plugin/pace/pace.min.js"></script> -->

	<!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
	<script	src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
	<script> if (!window.jQuery) { document.write('<script src="js/jquery.min.js"><\/script>');} </script>

	<script	src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
	<script> if (!window.jQuery.ui) { document.write('<script src="js/jquery-ui-min.js"><\/script>');} </script>

	<!-- IMPORTANT: APP CONFIG -->
	<script src="js/app.config.js"></script>

	<!-- JS TOUCH : include this plugin for mobile drag / drop touch events 		
		<script src="js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> -->

	<!-- BOOTSTRAP JS -->
	<script src="js/bootstrap.min.js"></script>

	<!-- JQUERY VALIDATE -->
	<script src="js/jquery.validate.min.js"></script>

	<!-- JQUERY MASKED INPUT -->
	<script src="js/jquery.maskedinput.min.js"></script>

	<!--[if IE 8]>
			
			<h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>
			
		<![endif]-->

	<!--[if lt IE 9]>
	  <script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.min.js"></script>
	<![endif]-->

	<!-- MAIN APP JS FILE -->
	<script src="js/app.min.js"></script>

	<script type="text/javascript">
			runAllForms();

			$(function() {
				// Validation
				$("#login-form").validate({
					// Rules for form validation
					rules : {
						username : {
							required : true
						},
						password : {
							required : true,
							minlength : 3,
							maxlength : 20
						}
					},

					// Messages for form validation
					messages : {
						username : {
							required : 'Please enter your username'
						},
						password : {
							required : 'Please enter your password'
						}
					},

					// Do not change code below
					errorPlacement : function(error, element) {
						error.insertAfter(element.parent());
					}
				});
			});
		</script>

	<!-- Your GOOGLE ANALYTICS CODE Below -->
	<script type="text/javascript">
		
		  var _gaq = _gaq || [];
		  _gaq.push(['_setAccount', 'UA-43548732-3']);
		  _gaq.push(['_trackPageview']);
		
		  (function() {
		    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		  })();
		
		</script>

</body>
</html>