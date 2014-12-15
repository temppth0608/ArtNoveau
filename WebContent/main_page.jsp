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
    
        <div class ="face">
            <img src="image/face.PNG" width =120px height = 120px>
        </div>
        
	    <div class = "thismonth">
	        <a  data-role="button" data-inline="true" href="artist.jsp">
	            이달의 작가
	        </a>
	        <hr style="height:1px; background-color:#ccc; border:0; margin-top:12px; margin-bottom:12px;">
	        <h3>
	            Korean Young Artist
	        </h3>
	        <h5>
	            최수앙은 구상적인 인체를 조각하는 작가이다. 이렇게 이야기하면 어딘가 식산한듯한 느낌을 갖게 하지만 이런 선입관은 세상을 병리학적으로 이해라고 있는 그의 작품을 보고나면, 놀라움으로 대체된다. 최수앙의 세상에 대한 이해는 그의 찻 개인전에 출품된 미니어처 인물살들로 부터 출방한다. 최근 세계 현대 미술계는 과거 어느시기 못지 않은 다양한 이슈와 작품의 각축장이 되고 있었다.
	        </h5>
        </div><br>
        
        <div>
        	<a data-role="button" data-inline="true" href="junsi.jsp">
        		이달의 전시
        	</a>
        	<hr style="height:1px; background-color:#ccc; border:0; margin-top:12px; margin-bottom:12px;">
        	<table>
        		<tr>
        			<td> <img src="image/junsi1.PNG" width = 135px height = 135px></td>
        			<td> <img src="image/junsi2.PNG" width = 135px height = 135px></td>
        		</tr>
        	</table>
        	<h5>
        		이번 9월 한국 전시에서는 댄퍼잡스키의 전쟁이미지 콜라쥬 작품도 소개된다. 분단국가인, 한국에서의 전시를 위해 특별히 마련된 섹션으로, 세계곳곳에서 전쟁과 기아, 반목과 진시가 팽배한 이시대를 바라보는 그의 콜라쥬 작업이던지는 메세지는 담다르다. 현대조각은 자신의 정체성을 부모가 아닌 타인에의해 인정 받아야만 하는 역설적 상황에 처하게 되었다.
        	</h5>
        </div><br>
        
        <div>
        	<a data-role="button" data-inline="true" href="digital.jsp">
        		디지털 전시실
        	</a>
        	<hr style="height:1px; background-color:#ccc; border:0; margin-top:12px; margin-bottom:12px;">
        	<iframe data-controltype="youtube" id="youtube2" type="text/html" width="288px" height="216px" src="http://www.youtube.com/embed/hsu7KLCATfY" >
        	</iframe>
        	<h5>
        		아름다운 오브제 전시 문화 유물들이 디지털 공간으로 새롭게 태어나게 되는 모습을 보여주는 전시이다. 사진과 미디어가 장악하고 있는 현대 미술속의 흐름으로 들어가보자.
        	</h5>
        </div> <br>
        
        <div>
        	<a data-role="button" data-inline="true" href="last.jsp">
        		지난 호 보기
        	</a>
        	<hr style="height:1px; background-color:#ccc; border:0; margin-top:12px; margin-bottom:12px;">
        	<table>
        		<tr>
        			<td> <img src="image/last1.PNG" width = 135px height = 135px></td>
					<td> <img src="image/last2.PNG" width = 135px height = 135px></td>
				</tr>
				<tr>
					<td> <img src="image/last3.PNG" width = 135px height = 135px></td>
					<td> <img src="image/last4.PNG" width = 135px height = 135px></td>
				</tr>
        	</table>
        </div>
    </div>
</div>
</body>
</html>