<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String context=request.getContextPath();
    response.sendRedirect(context + "/index");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DEMO 索米科技</title>
    </head>
    <body>
        <div>
            <a href="<%=context%>/index">进入</a>
        </div>
    </body>
</html>