<%--
  Created by IntelliJ IDEA.
  User: 陈铭源
  Date: 2021/4/10
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <title>税收计算</title>
</head>
<body>
<font size="10">税收计算</font>
<br>
<jsp:useBean id="shui" class="com.example.test5.test5"></jsp:useBean>
<form method="post" onsubmit="return check()">
    月收入:<input type="text" id="num" name="num" value=<jsp:setProperty name="shui" property="num"/>>
    <br>
    <input type="submit" value="提交" id="s">
</form>
<br>
税收：<a id="money" name="money" ><jsp:getProperty name="shui" property="num"/></a>
</body>
<script>
    function check() {
        var money=document.getElementById("num").value;
        if (/[^0-9]/.test(money)){
            alert("错误：非数字");
            return false;
        }
        else
            return true;
    }
</script>
</html>
