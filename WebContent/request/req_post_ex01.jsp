<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- post방식으로 전송하려면 반듯이 form태그가 필요하며, method="post"라고 작성합니다 -->
	
	
	<form action="req_post_ex02.jsp" method="post"> <!-- method="post"를 적어주지 않으면 get방식으로 들어갑니다 -->
		아이디 : <input type="text" name="id"><br>
		비밀번호 : <input type="password" name="pw"><br>
		이름 : <input type="text" name="name"><br>
		
		<input type="submit" value="확인"><br>
		
	</form>

</body>
</html>