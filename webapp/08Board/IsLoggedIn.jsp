<%@ page import="utils.JSFunction" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>
    <%
        // 로그인 여부 확인
        if(session.getAttribute("UserId")==null){
            JSFunction.alertLocation("로그인 후 이용해주십시오.","../06Session/LoginForm.jsp", out);
            return;
        }
    %>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
