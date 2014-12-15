<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="UTF-8" name="viewport" content="device-width, initial-scale=1">
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.css" />
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.js"></script>
	<link rel="stylesheet" href="style.css" />
	<title>Art_Noveau</title>
	<script type="text/javascript">
	
	$(function() {
		
		$('ul li a').click(function() {
		var imageSrc = $(this).find('img').attr('src');
		var imageTitle = $(this).find('h3').text();

			$("#p2_image").attr('src', imageSrc);
		     $("#p2_title").html(imageTitle);
		});});
	
	</script>
</head>
<body>
<div data-role="page" id="page1">
	<div data-role="header">
 			<a data-role="button" data-theme="b" href="#" data-rel="back" class="ui-btn-left">
 				back
 			</a>
 			<h3>
 				작품 더보기
 			</h3>
 	</div>
 	<div data-role="content">
 		<ul data-role="listview" data-inset="true" data-theme="e">
 			<li>
 				<a href="#page2" data-rel="dialog" data-transition="pop">
 					<img src="image/image1.PNG" width=100% height=100%>
 						<h3>Exits</h3>
 						<p>예술을 담는 창</p>
 				</a>
 			</li>
 			 <li>
 				<a href="#page2" data-rel="dialog" data-transition="pop">
 					<img src="image/image2.PNG" width=100% height=100%>
 						<h3>Pics</h3>
 						<p>CodaTalk</p>
 				</a>
 			</li>
 			<li>
 				<a href="#page2" data-rel="dialog" data-transition="pop">
 					<img src="image/image3.PNG" width=100% height=100%>
 						<h3>The Wings</h3>
 						<p>The blind for the blind</p>
 				</a>
 			</li>
 			<li>
 				<a href="#page2" data-rel="dialog" data-transition="pop">
 					<img src="image/image4.PNG" width=100% height=100%>
 						<h3>Horse</h3>
 						<p>GrayWall</p>
 				</a>
 			</li>
  			<li>
 				<a href="#page2" data-rel="dialog" data-transition="pop">
 					<img src="image/image5.PNG" width=100% height=100%>
 						<h3>Humorless</h3>
 						<p>Comedy</p>
 				</a>
 			</li>

 			<li>
 				<a href="#page2" data-rel="dialog" data-transition="pop">
 					<img src="image/pic4.PNG" width=100% height=100%>
 						<h3>The Hero</h3>
 						<p>Esquisse Over The Autonome</p>
 				</a>
 			</li>
 			 <li>
 				<a href="#page2" data-rel="dialog" data-transition="pop">
 					<img src="image/image6.png" width=100% height=100%>
 						<h3>Mask</h3>
 						<p>The islet of Asperger</p>
 				</a>
 			</li> 			 						 			 			
 		</ul>
 	</div>		
 </div> 
 
 <div data-role="page" id="page2">
 	<div data-role="header" data-theme="b">
 		<h1 id = "p2_title"></h1>
 	</div>
 	<div data-role="content">
 		<img id="p2_image" width="90%">
 	</div>
 </div>
 
</body>
</html>