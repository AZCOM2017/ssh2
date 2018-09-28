<%--
  Created by IntelliJ IDEA.
  User: 26836
  Date: 2018/9/26
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script>
    function addMore() {
        var td = document.getElementById("more");
    }
</script>
<s:form action="uploads" method="POST" enctype="multipart/form-data">
    <table align="center" width="60%" border="1">
        <tr>
            <td>选择文件上传:</td>
            <td id="more">
                <input type="file" name="file">
                <input type="button" value="添加"
                       onclick="addMore()"/>
            </td>
        </tr>
        <tr>
            <td></td>
            <td><s:submit value="上传" align="center"/></td>
        </tr>
    </table>
</s:form>
</body>
</html>
