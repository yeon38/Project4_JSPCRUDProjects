<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.example.jspcrudprojects.BoardDAO, com.example.jspcrudprojects.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Free board</title>
	<style>
		#list {
			font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
			border-collapse: collapse;
			width: 100%;
		}
		#list td, #list th {
			border: 1px solid #ddd;
			padding: 8px;
			text-align:center;
		}
		#list tr:nth-child(even){background-color: #f2f2f2;}
		#list tr:hover {background-color: #ddd;}
		#list th {
			padding-top: 12px;
			padding-bottom: 12px;
			text-align: center;
			background-color: #18c9f5;
			color: white;
		}
		.action-button1 {
			padding: 8px;
			background-color: #eee42b;
			color: white;
			text-decoration: none;
			border-radius: 5px;
			transition: background-color 0.3s ease;
			font-size: 14px; /* Adjust the font size */
		}
		.action-button1:hover {
			background-color: #eee42b;
		}
		.action-button2 {
			padding: 8px;
			background-color: #a92ee7;
			color: white;
			text-decoration: none;
			border-radius: 5px;
			transition: background-color 0.3s ease;
			font-size: 14px; /* Adjust the font size */
		}
		.action-button2:hover {
			background-color: #e34fee;
		}
		.action-button3 {
			padding: 8px;
			background-color: #25f116;
			color: white;
			text-decoration: none;
			border-radius: 5px;
			transition: background-color 0.3s ease;
			font-size: 14px; /* Adjust the font size */
		}
		.action-button3:hover {
			background-color: #91f176;
		}
		.addlink {
			padding: 10px;
			background-color: #18c9f5;
			color: white;
			text-decoration: none;
			border-radius: 5px;
			transition: background-color 0.3s ease;
		}
		.addlink:hover {
			background-color: #147594;
		}
	</style>
	<script>
		function delete_ok(id){
			var a = confirm("정말로 삭제하겠습니까?");
			if(a) location.href='deletepost.jsp?id=' + id;
		}
	</script>
</head>
<body>
<h1>자유게시판</h1>
<%
	BoardDAO boardDAO = new BoardDAO();
	List<BoardVO> list = boardDAO.getBoardList();
	request.setAttribute("list",list);
%>
<table id="list" width="90%">
	<tr>
		<th>Id</th>
		<th>Title</th>
		<th>Writer</th>
		<th>Content</th>
		<th>Category</th>
		<th>Regdate</th>
		<th>Moddate</th>
		<th>Edit</th>
		<th>Delete</th>
		<th>View</th>
	</tr>
	<c:forEach items="${list}" var="u">
		<tr>
			<td>${u.getSeq()}</td>
			<td>${u.getTitle()}</td>
			<td>${u.getWriter()}</td>
			<td>${u.getContent()}</td>
			<td>${u.getCategory()}</td>
			<td>${u.getRegdate()}</td>
			<td>${u.getModdate()}</td>
			<td><button class="action-button1" onclick="location.href='editform.jsp?id=${u.getSeq()}'">Edit</button></td>
			<td><button class="action-button2" onclick="delete_ok('${u.getSeq()}')">Delete</button></td>
			<td><button class="action-button3" onclick="location.href='viewpostform.jsp?id=${u.getSeq()}'">View</button></td>
		</tr>
	</c:forEach>
</table>
<br/><a href="addpostform.jsp" class="addlink">Add New Post</a>
</body>
</html>
