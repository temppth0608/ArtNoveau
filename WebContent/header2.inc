<%@ page contentType = "text/html; charset=UTF-8"%>

<div data-role="panel" id="panel1" data-position="left" data-display="reveal" data-theme="b">
        <ul data-role="listview" data-divider-theme="h" data-inset="false">
            <li data-role="list-divider" role="heading">
                My page
            </li>
            <li data-theme="a">
                <a href="list2.jsp" data-transition="slide">
                    이달의 작가 신청
                </a>
            </li>
            <li data-theme="a">
                <a href="#null" data-transition="slide">
                    공모전 신청
                </a>
            </li>
            <li data-theme="a">
                <a href="user_change.jsp" data-transition="slide">
                    회원 정보 수정
                </a>
            </li>

            <li data-role="list-divider" role="heading">
                바로가기
            </li>
            <li data-theme="a">
                <a href="artist2.jsp" data-transition="slide">
                    이달의 작가 보기
                </a>
            </li>
            <li data-theme="a">
                <a href="junsi2.jsp" data-transition="slide">
                    이달의 전시 보기
                </a>
            </li>
            <li data-theme="a">
                <a href="digital2.jsp" data-transition="slide">
                    디지털 전시실 보기
                </a>
            </li>
            <li data-theme="a">
                <a href="last2.jsp" data-transition="slide">
                    지난 발행호 보기
                </a>
            </li>
        </ul>
</div>
<div data-theme="a" data-role="header">
    <a data-role="button" data-theme="b" href="logout.jsp" class="ui-btn-right">
            Logout
    </a>
     <a data-controltype="panelbutton" data-role="button" data-theme="b" href="#panel1"
     data-icon="bars" data-iconpos="notext" class="ui-btn-left">
    </a>
     <h4>
        Art Noveau
    </h4>
</div>