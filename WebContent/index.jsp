<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="car_manager_dao.*" %>
<%@page import="car_manager_dto.*" %>
<%@page import="car_manager_vo.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>����ȭ��</title>
		<link href="css/index.css" rel="stylesheet">
	</head>
<%
	
%>
<script>
	function setThumbnail(event) {
	    var reader = new FileReader();
	
	    reader.onload = function(event) {
	      var img = document.createElement("img");
	      img.setAttribute("src", event.target.result);
	      document.querySelector("div#image_container").appendChild(img);
	    };
	
	    reader.readAsDataURL(event.target.files[0]);
	  }
</script>
<body>
	<div id="Center_img">
		<div id="input">
			<form action="jsp/fileUpload.jsp" method="post" enctype="multipart/form-data">
				 	<fieldset>
						<legend>���� ���� ����</legend>
						<p>ī�޶� ��ȣ : <input type="text" name="userName"></p>
						<p>���ϸ� : <input type="file" name="file" onchange="setThumbnail(event);"></p>
						<p><input type="submit" value="upload"></p>	 	
				 	</fieldset>
			 </form>
		</div>
		<div id="image_container"></div>
		<div id="top">
		</div>
		<div id="top_text">
			<p>���� ���� �ý���</p>
		</div>
		<div id="button_text">
			<a type="button" href="jsp/inpay.jsp">����</a>
			<a type="button" href="jsp/inCar.jsp">���� ȭ��</a>
			<a type="button" href="jsp/outCar.jsp">���� ȭ��</a>
			<a type="button" href="jsp/admin.jsp">������ ���� ������</a>
			<a type="button" href="jsp/reservation.jsp">������ ���� ������</a>
		</div>
		<img src="img/new-car-dashboard.jpg" alt="�� ���� ����">
	</div>
</body>
</html> 