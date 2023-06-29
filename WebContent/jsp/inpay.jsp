<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import= "java.util.*" %>
<%@ page import= "java.text.*" %>
<%@ page import="car_manager_vo.*" %>
<%@ page import="car_manager_dto.*" %>
<%
/* 	Date today = new Date();
	SimpleDateFormat sm = new SimpleDateFormat("yyyy�� MM�� dd�� HH:mm:ss");
	SimpleDateFormat sm2 = new SimpleDateFormat("E����");
	String nowdate = sm.format(today);	
	String nowday = sm2.format(today);	
	System.out.println(nowdate);
	System.out.println(nowday); */

moveDTO dto = new moveDTO();
moveVO vo = dto.out_Read();
ArrayList<moveVO> list = dto.GetList_out(vo.getMove_car());

int count = dto.Get_count();
System.out.println("count : " + count);
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<link href="../css/inpay.css" rel="stylesheet">
<script>
	function More_information(no){
		var url = "more_infomation.jsp?move_no=" + no;
        var name = "������";
        var option = "width = 600, height = 1200, top = 100, left = 200, location = no"
        	window.open(url, name, option);
        
	}
</script>
<body>
	<header>
		<table>
			<tr>
				<td><a href="../index.jsp">EZEN</a></td>
				<td>������ �������</td>	
				<td><img src="../img/menu.png"></td>
			</tr>
		</table>
	</header>
	<table id="main">
		<tr>
			<td id="title">
				<p>������ ����</p>
			</td>
		</tr>
		<tr>
			<td>
				<table id="main_tbl" border="2">
					<tr>
						<th>
						</th>
					</tr>
					<tr>
						<td>
						<%
							if( count != 0)
							{
								for( moveVO VO : list )
								{
									System.out.println(VO);
								%>
								<table id="menu_tbl" onclick="More_information('<%= VO.getMove_no() %>');">
									<tr>
										<td id="car_num">
											<%= VO.getMove_car() %>
										</td>
										<td rowspan="2">
											<img src="../img/right_math.png">
										</td>
									</tr>
									<tr>
										<td id="car_time">
											<%= VO.getMove_time() %>
										</td>
									</tr>
								</table>
								<%
								}
							}
							else
							{
								%>
								<table>
									<tr>
										<td class="inpay_out">
											���� ������ �����ϴ�
										</td>
									</tr>
								</table>
								<%
							}
							%>
						</td>
					</tr>
				</table>
			</td>
		</tr>	
	</table>
	<footer>
			<table id="footer_button">
				<tr>
					<td><img src="../img/left.jpg"></td>
					<td><img src="../img/middle.jpg"></td>
					<td><img src="../img/right.jpg"></td>
				</tr>
			</table>
		</footer>
</body>
</html>