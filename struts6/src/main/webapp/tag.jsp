<%--
  Created by IntelliJ IDEA.
  User: 26836
  Date: 2018/9/22
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>struts2控制标签的使用</title>
</head>
<body>
<table>
    <s:iterator value="strMap" var="entry">
        <tr>
            <td><s:property value="#entry.key"></s:property></td>
            <td><s:property value="#entry.value"></s:property></td>
        </tr>
    </s:iterator>
</table>
<table>
    <s:iterator value="userMap" var="entry">
        <tr>
            <td><s:property value="#entry.value.id"></s:property></td>
            <td><s:property value="#entry.value.username"></s:property></td
            <td><s:property value="#entry.value.password"></s:property></td>
        </tr>
    </s:iterator>
</table>
<table>
    <s:iterator value="userList" var="u" status="sta">
        <tr>
            <s:if test="#sta.Odd">
                <td><s:property value="#u.id"></s:property></td>
                <td><s:property value="#u.username"></s:property></td
                <td><s:property value="#u.password"></s:property></td>
            </s:if>
        </tr>
    </s:iterator>
</table>
</body>
</html>
