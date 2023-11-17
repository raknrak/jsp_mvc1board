<%@ page import="model1.board.BoardDTO" %>
<%@ page import="model1.board.BoardDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>
<%@include file="IsLoggedIn.jsp"%>
<%
    // 수정 내용 얻기
    String num = request.getParameter("num");
    String title = request.getParameter("title");
    String content = request.getParameter("content");

    // DB에 저장
    BoardDTO dto = new BoardDTO();
    dto.setNum(num);
    dto.setTitle(title);
    dto.setContent(content);

    // DB에 반영
    BoardDAO dao = new BoardDAO(application);
    int affected = dao.updateEdit(dto);
    dao.close();

    //성공, 실패 처리
    if(affected == 1){
        //성공 시 상세 보기 페이지로 이동
        response.sendRedirect("View.jsp?num=" + dto.getNum());
    }
    else {
        // 실패 시 이전 페이지로 이동
        JSFunction.alertBack("수정하기에 실패하였습니다.", out);
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
