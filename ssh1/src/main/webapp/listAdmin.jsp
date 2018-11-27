<%--
  Created by IntelliJ IDEA.
  User: 26836
  Date: 2018/11/16
  Time: 11:58
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
    <s:iterator value="adminList" var="user">
        <tr>
            <td><s:property value="#admin.id"/></td>
            <td><s:property value="#admin.username"/></td>
            <td><s:property value="#admin.password"/></td>
        </tr>
    </s:iterator>

</table>
</body>
</html>
