<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.example.jspcrudprojects.BoardDAO, com.example.jspcrudprojects.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
	<style>
		body {
			font-family: 'Arial', sans-serif;
			background-color: #f4f4f4;
			margin: 0;
			padding: 0;
		}

		h1 {
			color: #333;
			text-align: center;
		}

		form {
			max-width: 600px;
			margin: 20px auto;
			background-color: #fff;
			padding: 20px;
			border-radius: 8px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		}

		table {
			width: 100%;
		}

		td {
			padding: 8px;
		}

		input[type="text"],
		textarea {
			width: 100%;
			padding: 8px;
			margin-bottom: 10px;
			box-sizing: border-box;
			border: 1px solid #ccc;
			border-radius: 4px;
		}

		input[type="submit"]{
			background-color: #4caf50;
			color: white;
			padding: 10px 15px;
			border: none;
			border-radius: 4px;
			cursor: pointer;
		}
		input[type="button"] {
			background-color: #f50910;
			color: white;
			padding: 10px 15px;
			border: none;
			border-radius: 4px;
			cursor: pointer;
		}

		input[type="submit"]:hover{
			background-color: #eee42b;
		}
		input[type="button"]:hover {
			background-color: #ef0387;
		}
	</style>
</head>
<body>

<%
	BoardDAO boardDAO = new BoardDAO();
	String id=request.getParameter("id");	
	BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form action="editpost.jsp" method="post">
<input type="hidden" name="seq" value="<%=u.getSeq() %>"/>
<table>
	<tr><td>Title:</td><td><input type="text" name="title" value="<%= u.getTitle()%>"/></td></tr>
	<tr><td>Writer:</td><td><input type="text" name="writer" value="<%= u.getWriter()%>" /></td></tr>
	<tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"><%= u.getContent()%></textarea></td></tr>
	<tr><td>Category:</td><td><input type="text" name="category" value="<%= u.getCategory()%>" /></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit Post"/>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</table>
</form>

</body>
</html>