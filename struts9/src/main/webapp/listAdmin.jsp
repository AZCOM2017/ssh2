<%--
  Created by IntelliJ IDEA.
  User: 26836
  Date: 2018/10/1
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <s:iterator value="adminList" var="admin">
        <tr>
            <td><s:property value="#admin.id"/></td>
            <td><s:property value="#admin.username"/></td>
            <td><s:property value="#admin.password"/></td>
            <td><a href="del?id=<s:property value="#admin.id"/>">Delete</a></td>
            <td><a href="edit?id=<s:property value="#admin.id"/>">Edit</a></td>
        </tr>
    </s:iterator>

</table>
</body>
</html>
