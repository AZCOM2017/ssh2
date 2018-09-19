<%--
  Created by IntelliJ IDEA.
  User: 26836
  Date: 2018/9/19
  Time: 19:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Struts2 datatag</title>
</head>
<body>
<s:bean name="cap.bean.User" id="u">
    <s:param name="id" value="29"></s:param>
    <s:param name="username" value="'cap'"></s:param>
    <s:param name="password" value="'cap'"></s:param>
</s:bean>
<s:push value="#u">
    <s:property value="id"></s:property><br>
    <s:property value="username"></s:property><br>
    <s:property value="password"/><br>
</s:push>
</body>
</html>
