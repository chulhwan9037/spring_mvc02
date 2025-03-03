<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방 명 록</title>
<style type="text/css">
a {
	text-decoration: none;
}

table {
	width: 600px;
	border-collapse: collapse;
	text-align: center;
}

table, th, td {
	border: 1px solid black;
	padding: 3px
}

div {
	width: 600px;
	margin: auto;
	text-align: center;
}
</style>

</head>
<body>
	<div>
		<h2>방명록 : 작성화면</h2>
		<hr />
		<p>
			[<a href="gb2_list.do">목록으로 이동</a>]
		</p>
		<form method="post" enctype="multipart/form-data">
			<table>
				<tr align="center">
					<td bgcolor="#99ccff">작성자</td>
					<td><input type="text" name="name" size="20" ></td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">제목</td>
					<td><input type="text" name="subject" size="20" ></td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">email</td>
					<td><input type="text" name="email" size="20" ></td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">비밀번호</td>
					<td><input type="password" name="pwd" size="20" ></td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">첨부파일</td>
					<td><input type="file" name="file" size="20" ></td>
				</tr>
				<tr align="center">
					<td colspan="2"><textarea rows="10" cols="60" name="content"></textarea>
					</td>
				</tr>
				<tfoot>
					<tr align="center">
						<td colspan="2">
							<%-- enctype를 사용하면 컨트롤러에서 request.getParameter 사용 불가 --%>
							<input type="button" value="저장" onclick="save(this.form)" > 
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
							<input type="reset" value="취소" ></td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
	<script type="text/javascript">
		function save(f) {
			// 검사하는 거 만들기
			
			//-------------
			
			f.action = "gb2_write_ok.do";
			f.submit();
		}
	</script>
</body>
</html>