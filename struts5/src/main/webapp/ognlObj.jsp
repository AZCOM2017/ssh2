<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 26836
  Date: 2018/9/14
  Time: 19:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>使用ognl访问对象</title>
</head>
<body>
访问ValueStack中的对象属性
<s:property value="user.username"></s:property>
<br>
请求参数中的账号
<s:property value="#parameters.msg"></s:property>
请求属性中的账号
<s:property value="#request.msg"></s:property>
<br>会话属性中的账号：
<s:property value="#session.msg"></s:property>
<br>应用属性中的账号
<s:property value="#application.msg"></s:property>
<br>attr中的信息
<s:property value="#attr.msg"></s:property>
</body>
</html>
