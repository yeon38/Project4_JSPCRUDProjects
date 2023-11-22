<%--
  Created by IntelliJ IDEA.
  User: chaeyeon
  Date: 2023/11/21
  Time: 4:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.example.jspcrudprojects.BoardDAO"%>
<%@page import="com.example.jspcrudprojects.BoardVO,java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<html>
<head>
  <title>View board</title>
  <style>
    body {
      font-family: 'Arial', sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 0;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }
    h1 {
      margin-bottom: 20px;
      color: #18c9f5;
    }
    .post-container {
      background-color: #fff;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      border-radius: 8px;
      padding: 20px;
      width: 60%;
      margin-bottom: 20px;
    }
    .post-info {
      margin-bottom: 10px;
    }
    .post-info span {
      font-weight: bold;
      margin-right: 10px;
    }
    .post-content {
      line-height: 1.6;
    }
    .back-link {
      padding: 10px;
      background-color: #18c9f5;
      color: white;
      text-decoration: none;
      border-radius: 5px;
      transition: background-color 0.3s ease;
    }
    .back-link:hover {
      background-color: #147594;
    }
  </style>
</head>
<body>
<h1>View Post</h1>

<%
  BoardDAO boardDAO = new BoardDAO();
  String postId = request.getParameter("id");

  BoardVO post = boardDAO.getBoard(Integer.parseInt(postId));


%>

<div class="post-container">
  <div class="post-info">
    <span>ID:</span><%= post.getSeq() %>
  </div>
  <div class="post-info">
    <span>Title:</span><%= post.getTitle() %>
  </div>
  <div class="post-info">
    <span>Writer:</span><%= post.getWriter() %>
  </div>
  <div class="post-info">
    <span>Content:</span><%= post.getContent() %>
  </div>
  <div class="post-info">
    <span>Category:</span><%= post.getCategory() %>
  </div>
  <div class="post-info">
    <span>Regdate:</span><%= post.getRegdate()%>
  </div>
  <div class="post-info">
    <span>Moddate:</span><%= post.getModdate()%>
  </div>
</div>

<a href="posts.jsp" class="back-link">Back to Posts</a>
</body>
</html>
