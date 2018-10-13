<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.web.context.WebApplicationContext" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="cap.service.HelloWorld" %><%--
  Created by IntelliJ IDEA.
  User: 26836
  Date: 2018/10/13
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    ServletContext servletContext = request.getSession().getServletContext();
    ApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(servletContext);
    HelloWorld helloWorld = (HelloWorld) context.getBean("helloWorld");
    String str = helloWorld.sayHi("CZ");
%>
<%=str%>
</body>
</html>
