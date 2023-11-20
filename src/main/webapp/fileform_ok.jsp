<%--
  Created by IntelliJ IDEA.
  User: chaeyeon
  Date: 2023/11/17
  Time: 4:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import ="com.example.jspcrudprojects.*,java.io.File"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<html>
<head>
    <title>Free Board</title>
</head>
<body>
<%
    String filename="";
    int sizeLimit = 100 * 1024 * 1024;

    String realPath = request.getServletContext().getRealPath("upload");
    File dir = new File(realPath);
    if(!dir.exists()) dir.mkdirs();

    MultipartRequest multipartRequest = null;
    multipartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());

    filename = multipartRequest.getFilesystemName("img1");
%>
파일명: <%=filename%> <br/>
<img src = "${pageContext.request.contextPath}/upload/<%=filename%>" style="width: 300px">
</body>
</html>
