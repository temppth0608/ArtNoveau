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
</head>
<body>
	<div data-role="page" data-control-title="index" id="page1">
		<%@ include file="header.inc" %>
 
	    <div data-role="content">
			<%@ include file="navbar.inc" %>
			<div class="jacga1">
				<h4>이달의 작가 </h4>
				<h5>Korean Young Artist</h5>
			</div>
			<div class="jacga2">
				<h4>최수앙</h4>
				<h5>현대사회의 병리를 말하다.</h5>
			</div>
			<div class="choi">
				<img src="image/choi.PNG" width=270px height=180px />
			</div>
			<div>
				<h4>""현대 사회가 갖는 모순과 인간 병리를 표현하다!"</h4>
				<h6>억압된 현대사회 안의 개인들의 모습과 변형 외곡의 홀로 고립되고 소통의 단절된 개인의 모습, 개인적 욕망, 그것들의 리얼리티.</h6>
			</div>
			<div>
				<h3>작가 인터뷰</h3>
				<h6>최수앙은 구상적인 인체를 조각하는 작가이다. 이렇게 이야기하면, 어딘기 식상한 듯한 느낌을 갖게 하지만 선입관은 세상을 병리학적으로 이해하고 있는 그의 작품을 보고나면 놀라음으로 대체된다. 최수앙의 세상에대한 이해는 그의 첫 개인전에 출품된, 미니어처 인문살들로 부터 출발한다. 최근 세계 현대 미술계는 , 과거 어느 시기 못지않은 다양한 이슈와 작품의 각충장이 되고 있었다. 세계 최수앙의 세상의 대한이해는 그의 첫 개인전이다.</h6>
			</div>
			<div>
				<h3>작품 엿보기</h3>
				<img src="image/pic5.PNG" width=270px height=180px />
				<img src="image/pic6.PNG" width=270px height=180px />
				<h6>그는 유명하지 않고 주목 대상에서 벗어난 인물을 주소재로 삼아 '현대인들에게 정신병이란 누구나 하나씩 풀수적으로 갖고 있어야 하는것' 이란 이야기를 담는다. 주체적이고 자율적인 듯 현대사회의 구성원들이 결국은 고도화된 시스템 속에 종속될수 밖에 없다.</h6>
				<img src="image/pic3.PNG" width=270px height=180px />
				<img src="image/pic4.PNG" width=270px height=180px />						
			</div>
	    </div>  
	   <a href="image.jsp" data-role="button" data-theme="e">
	   		작품 더보러 가기
	   </a>
	</div>
</body>
</html>