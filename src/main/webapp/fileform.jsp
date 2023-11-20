<%--
  Created by IntelliJ IDEA.
  User: chaeyeon
  Date: 2023/11/17
  Time: 4:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Free Board</title>
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



        input[type="text"],


        input[type="submit"]{
            background-color: #4caf50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }


        input[type="submit"]:hover{
            background-color: #eee42b;
        }

    </style>
</head>
<body>
<form method="post" action="fileform_ok.jsp" enctype="multipart/form-data">
    <h1> 이미지 업로드 </h1>
  이미지를 선택하세요 : <input type="file" name="img1" />
  <input type="submit" value="upload"/>

</form>
</body>
</html>
