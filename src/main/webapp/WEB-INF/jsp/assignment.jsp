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
    <link href="css/ng/bootstrap-fullcalendar.css" rel="stylesheet" />
        
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
          	<h3><i class="fa fa-angle-right"></i>Assignment Matrix</h3>
              <!-- page start-->
              <div class="row mt">
                  <aside class="col-lg-3 mt">
                      <h4><i class="fa fa-angle-right"></i>Drag and drop Data Items in to the hierarchy to assign them</h4>
                      <div class="form-group " id="rolloverFromDiv">
		                                	Category
		                                 	<div>
		                                  		<select id="categorySelect" name="categorySelect" class="form-control">
		                                  		 	<c:forEach items="${categories}" var="category" varStatus="loop">
												  		<option value='${loop.index}'>
								                            ${category}
								                        </option>
						                        	</c:forEach>
		                                     	</select>
		                                     </div>
		                             	</div>
                      <div id="external-events">
                      	  <c:forEach items="${dataItems}" var="dataItem" varStatus="loop">
                      	  <c:choose>
                      	  		<c:when test="${dataItem.inputMode==0}">
	                            	<div class="external-event label label-theme">${dataItem.name}</div>
	                            </c:when>
	                            <c:when test="${dataItem.inputMode==1}">
	                            	<div class="external-event label label-success">${dataItem.name}</div>
	                            </c:when>
	                           	<c:when test="${dataItem.inputMode==2}">
	                            	<div class="external-event label label-warning">${dataItem.name}</div>
	                            </c:when>
	                            <c:when test="${dataItem.inputMode==3}">
	                            	<div class="external-event label label-danger">${dataItem.name}</div>
	                            </c:when>
	                            <c:when test="${dataItem.inputMode==4}">
	                            	<div class="external-event label label-default">${dataItem.name}</div>
	                            </c:when>
	                            <c:when test="${dataItem.inputMode==5}">
	                            	<div class="external-event label label-info">${dataItem.name}</div>
	                            </c:when>
	                           </c:choose>
                          </c:forEach>
                          <p class="drop-after">
                              <input type="checkbox" id="drop-remove">
                              Remove After Drop
                          </p>
                      </div>
                  </aside>
                  <aside class="col-lg-9 mt">
                      <section class="panel">
                          <div class="panel-body">
                              <div id="calendar" class="has-toolbar"></div>
                          </div>
                      </section>
                  </aside>
              </div>
              <!-- page end-->
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
    <script src="js/ng/jquery-ui-1.9.2.custom.min.js"></script>
	<script src="js/ng/fullcalendar.min.js"></script> 
    <script src="js/ng/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="js/ng/jquery.dcjqaccordion.2.7.js"></script>
    <script src="js/ng/jquery.scrollTo.min.js"></script>
    <script src="js/ng/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="js/ng/common-scripts.js"></script>
        
    <!--script for this page-->
	
	<script src="js/ng/calendar-conf-events.js"></script>  

	<script type="text/javascript">
			$("#categorySelect").change(function() {
				var value =$("#categorySelect").val();
				var url ="/iRIS/view_assignment_ajax.htm";
				$.ajax({
			           type:'GET',
			           url:url,
			           data:{id: value},
			           beforeSend: function(xhr) {
			               xhr.setRequestHeader("Accept", "application/json");
			               xhr.setRequestHeader("Content-Type", "application/json");
			           },
			            headers: {
			             Accept: 'application/json'
			            },
			           dataType: 'json',

			           success:function(data){
			        	   $("#external-events").closest('div').find('.external-event').remove();
		        		   $("#external-events").find('.drop-after').remove();
			        	   $.each(data, function(i, item) {
			        			if(item.inputMode=="0"){
			        				$("#external-events").append($('<div/>').text(item.name).addClass("external-event label label-theme ui-draggable").attr('style', 'position: relative'));
			        			}else if(item.inputMode=="1"){
			        				$("#external-events").append($('<div/>').text(item.name).addClass("external-event label label-success ui-draggable"));
			        			}else if(item.inputMode=="2"){
			        				$("#external-events").append($('<div/>').text(item.name).addClass("external-event label label-warning ui-draggable"));
			        			}else if(item.inputMode=="3"){
			        				$("#external-events").append($('<div/>').text(item.name).addClass("external-event label label-danger ui-draggable"));
			        			}else if(item.inputMode=="4"){
			        				$("#external-events").append($('<div/>').text(item.name).addClass("external-event label label-default ui-draggable"));
			        			}else{
			        				$("#external-events").append($('<div/>').text(item.name).addClass("external-event label label-info ui-draggable"));
			        			}
		                    });
			        	  
			        	   var input = $('<input>', {
			        		    id: 'drop-remove',
			        		    type: 'checkbox'
			        		   
			        		});
			        	   
			        	   var pClass = $('<p>', {
			        		    class: 'drop-after',
			        		    text: ' Remove After Drop'
			        		}).prepend(input);
			        	   
			        	   $("#external-events").append(pClass);
			        	   
			        	   $('#external-events div.external-event').each(function() {

			        	        // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
			        	        // it doesn't need to have a start or end
			        	        var eventObject = {
			        	            title: $.trim($(this).text()) // use the element's text as the event title
			        	        };

			        	        // store the Event Object in the DOM element so we can get to it later
			        	        $(this).data('eventObject', eventObject);

			        	        // make the event draggable using jQuery UI
			        	        $(this).draggable({
			        	            zIndex: 999,
			        	            revert: true,      // will cause the event to go back to its
			        	            revertDuration: 0  //  original position after the drag
			        	        });

			        	    });
			        	   
			           }

			       });
// 		        $.ajax({
//                     type: "GET", 		//GET or POST or PUT or DELETE verb
//                     url: url, 		// Location of the service
//                     data: { index: value }, 		//Data sent to server
//                     contentType: "",		// content type sent to server
//                     dataType: "text", 	//Expected data format from server
//                     processdata: true, 	//True or False
//                     async: tr, 	
//                     success: function (data) {//On Successful service call
//     		        	$("#activeConfigNameSpan").text(data);
//     		        	$("#modalTextDiv").text(data+" Configuration is now active!");
//     		        	$("#abc").click();
//                     },
//                 });
			});
		</script>
		
  </body>
</html>
