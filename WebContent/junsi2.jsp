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
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
	<script>
	$(document).bind('pagecreate',function() {
		if( navigator.geolocation == undefined ) {
			alert(" 위치 정보를 이용할 수 없습니다. ");
			return; 
		}
		//	지도를 보여줄 div 참조객체 얻어오기 

		var myMap = document.getElementById("myMap");
		var loc = new google.maps.LatLng(37.612903, 126.974436);
		//	div 에 구글맵 보이기
		var gmap = new google.maps.Map(
				myMap,	//지도가 보여질 div	
				{
					zoom:16,//	지도 확대 정보
				 	center:loc,	//	지도 중앙	위치
					mapTypeId:google.maps.MapTypeId.ROADMAP //	지도타입
				}
		);
		//	위치에 마커 표시하기
		var gmarker = new google.maps.Marker({
				position:loc,
				map:gmap,
			}
		);
	});

</script>
	
</head>
<body>
	<div data-role="page" data-control-title="index" id="page1">
		<%@ include file="header2.inc" %>
		<div data-role="content">
			<%@ include file="navbar2.inc" %>
			<div>
				<h2>키미아트 會</h2>
				<h3>kimi소개</h3>
				<h5>KIMI는 국내외에서 활동하는 미술, 문화계 작가들의 작품 전시와 각종 프로그램을 기획하는 미술공간이다. 키미는 다양한 기획전과 프로젝트 프로그램을 통해 새롭게 부상하는 작가를 소개, 지원하며, 한국 작가들의 해외 문화계 진출을 위한 국내외 네트워크 구축과 저변 확대를 위해 일하고자 한다.</h5><br><hr />
				<h3>홈페이지</h3>
				<div class="kimi">
					<a href="http://www.kimiart.net" >
						<img src="image/kimi.PNG" width=180px height=100px />
					</a>
					<h6>*이미지를 클릭하면 해당 웹사이트로 이동합니다.</h6>
				</div>
			</div><br> <hr />
			<div>
				<h3>이번달 전시소개</h3>
				<div class="pause">
					<img src="image/pause.PNG" width=130px height=130px />
				</div>
				
				<div class="pause_explane">
					<h5>전시이름  The Pause</h5>
					<h5>전시시작  2014.11.28 </h5>
					<h5>참여작가  강태훈,박성훈</h5>
					<h5>전시구성  가구,공예,회화</h5>
				</div>
				
			</div><br><hr/>
			
			<div>
				<h3>위치 정보</h3>
				<div style="text-align: center">
					<div id="myMap" style="width:270px; height:270px; ">				
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>