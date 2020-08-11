<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">

<title>땅콩의 만화세상</title>

</head>

<body>
<!-- 네비게이션바 전체 시작 -->
	<nav class = "navbar navbar-default">
		<!-- 사이트 제목부분(헤더)시작 -->
		<div class = "navbar-header">
			<!-- 반응성 토글 메뉴버튼 시작 -->
			<button type="button" class = "navbar-toggle collapsed"
				data-toggle= "collapse" data-target = "#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class ="icon-bar"></span>
				<span class ="icon-bar"></span>
				<span class ="icon-bar"></span>
			</button>
			<!-- 반응성 토글 메뉴버튼 종료 -->
			<!-- 메인화면 로고 또는 이름 진입 링크 -->
			<a class = "navbar-brand" href = "main.jsp">땅콩만화</a>
			<!-- 메인화면 로고 또는 이름 진입 링크 -->
		</div>
		<!-- 사이트 제목부분(헤더) 종료 -->
		<!-- 네비게이션 메뉴 시작 -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class = "nav navbar-nav">
				<li><a href = "main.jsp">메인</a></li>
				<li><a href = "bbs.jsp">게시판</a></li>
			</ul>
			<!-- 네비게이션 우측, 접속 및 로그인을 위한 드롭다운 버튼 시작 -->
			<ul class = "nav navber-nav navbar-right">
				<li class = "dropdown">
					<a href = "#" class = "dropdown-toggle"
						data-toggle = "dropdown" role = "button" aria-haspopup = "true"
						aria-expanded = "false">접속하기<span class = "caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li class = "active"><a href = "login.jsp">로그인</a></li>
						<li><a href = "join.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>
			<!-- 네비게이션 우측, 접속 및 로그인을 위한 드롭다운 버튼 종료 -->			
		</div>
		<!-- 네비게이션 메뉴 종료 -->
	</nav>
<!-- 네비게이션바 헤더부분 종료 -->
<!-- 로그인 또는 회원가입을 위한 화면중앙 컨테이너 시작 -->
<div class = "container">
	<div class = "col-lg-4"></div><!-- 점보트론을 가운데에 놓기 위하여 좌측 공간을 할애 -->
	<!-- form태그를 활용한 로그인 점보트론 만들기 시작 -->
	<div class = "col-lg-4">
		<div class = "jumbotron" style = "padding-top:20px;"><!-- 네비게이션 바와 20px 여백을 둠 -->
			<form method="post" action = "loginAction.jsp"><!-- form태그 안의 데이터 처리 메소드에는 get과 post가 있다. -->
															<!-- get의 경우 URL 끝에 데이터를 string으로 적어놓고 form이 그 string데이터를 받아오는 형식이다. 즉, 주소창에 보이는 이유로 보안상 취약하다. 검색 등에 사용하면 좋을 것 같다. -->
															<!--  post의 경우 외부에 보여지지 않기 때문에 보안상 get보다 좋다. 로그인창 등에 사용하면 좋을 것 같다. -->
				<h3 style = "text-align:center;">땅콩만화 로그인</h3>
				<div class = "form-group">
					<input type ="text" class = "form-control" placeholder= "ID" name= "userID" maxlength= "20"> <!-- name의 경우 DB와 연동하여 쓸 매개변수이기 때문에 꼭 대소문자 구분하여 맞춘다. -->
				</div>
				<div class = "form-group">
					<input type ="password" class = "form-control"placeholder= "PassWord" name= "userPassword" maxlength= "20"> <!-- name의 경우 DB와 연동하여 쓸 매개변수이기 때문에 꼭 대소문자 구분하여 맞춘다. -->
				</div>
				<input type= "submit" class = "btn btn-primary form-control" value = "로그인"> <!--submit버튼을 만들어줘서 맨 처음 form 태그에 적어둔 action이 실행되도록 한다.  -->
				<a class = "btn btn-primary form-control" href = "join.jsp">회원가입</a>
			</form>
		</div>
	</div>
	<!-- form태그를 활용한 로그인 점보트론 만들기 종료 -->
	<div class = "col-lg-4"></div><!-- 점보트론을 가운데에 놓기 위하여 우측 공간을 할애 -->

</div>
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script src="js/bootstrap.js"></script>

</body>

</html>